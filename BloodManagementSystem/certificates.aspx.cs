using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodManagementSystem
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string strrcon = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnViewCertificate_Click(object sender, EventArgs e)
        {
            string id = txtID.Text.Trim();
            string firstName = txtFirstName.Text.Trim();
            string lastName = txtLastName.Text.Trim();
            string bloodGroup11 = bloodGroup.Text.Trim();
            string date = txtDate.Text.Trim();
            string issued = "true";
            

            if (!string.IsNullOrEmpty(id) && !string.IsNullOrEmpty(firstName) && !string.IsNullOrEmpty(lastName) && !string.IsNullOrEmpty(bloodGroup11) && !string.IsNullOrEmpty(date) && !string.IsNullOrEmpty(issued))
            {
           // Save the user's data in the database
                SaveUserDataToDatabase(id, firstName, lastName, bloodGroup11, date, issued);

               
           // Clear the text boxes
                txtID.Text = "";
                txtFirstName.Text = "";
                txtLastName.Text = "";
                
                txtDate.Text = "";
           // Display the certificate image
                Response.Redirect("viewcertificate.aspx?a1="+firstName+" "+lastName+"&a2="+date);
            }
            else
            {
           // Display an error message if any of the fields are empty
           
                Response.Write("Please enter all the required fields.");
            }
        }

        private void SaveUserDataToDatabase(string id, string firstName, string lastName, string bloodGroup, string date, string issued)
        {
            using (SqlConnection con = new SqlConnection(strrcon))
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                    string query = "INSERT INTO detailscertification(id, firstname, lastname, bloodgroup, date, issued) VALUES(@id, @firstName, @lastName, @bloodGroup11, @date, @issued)";
                    using (SqlCommand command = new SqlCommand(query, con))
                    {
                        command.Parameters.AddWithValue("@id", id);
                        command.Parameters.AddWithValue("@firstName", firstName);
                        command.Parameters.AddWithValue("@lastName", lastName);
                        command.Parameters.AddWithValue("@bloodGroup11", bloodGroup);
                        command.Parameters.AddWithValue("@date", date);
                        command.Parameters.AddWithValue("@issued", issued);
                        try
                        {
                            command.ExecuteNonQuery();
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Data saved successfully')", true);
                        }
                        catch (Exception ex)
                        {
                            Response.Write("<script>alert('" + ex.Message + "');</script>");
                        }
                    }
                }
            }
        }

        //private void MarkIssuedAsTrueInDatabase(string id)
        //{
        //    // Query the database to mark the column issued as true



        //        if (Session["role"].Equals("admin"))
        //        {
        //            using (SqlConnection con = new SqlConnection(strrcon))
        //            {
        //                if (con.State == ConnectionState.Closed)
        //                {
        //                    con.Open();
        //                    string query = "UPDATE detailscertification SET issued = true WHERE id = @id";
        //                    SqlCommand command = new SqlCommand(query, con);
        //                    command.Parameters.AddWithValue("@id", id);
        //                    command.ExecuteNonQuery();

        //                }
        //            }
        //         }
        //}

        protected void search_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("admin"))
                {
                    using (SqlConnection con = new SqlConnection(strrcon))
                    {
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                            string selectQuery = "select  * from detailsdonor where id='" + txtID.Text.Trim() + "'";
                            SqlDataAdapter da = new SqlDataAdapter(selectQuery, con);
                            DataSet ds = new DataSet();
                            da.Fill(ds, "detailsdonor");
                            if (ds.Tables[0].Rows.Count != 0)
                            {
                                txtFirstName.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                                bloodGroup.Items.Clear();

                                bloodGroup.Items.Add(new ListItem("A+", "A+"));
                                bloodGroup.Items.Add(new ListItem("A-", "A-"));
                                bloodGroup.Items.Add(new ListItem("B+", "B+"));
                                bloodGroup.Items.Add(new ListItem("B-", "B-"));
                                bloodGroup.Items.Add(new ListItem("AB+", "AB+"));
                                bloodGroup.Items.Add(new ListItem("AB-", "AB-"));
                                bloodGroup.Items.Add(new ListItem("O+", "O+"));
                                bloodGroup.Items.Add(new ListItem("O-", "O-"));

                                bloodGroup.SelectedItem.Value = ds.Tables[0].Rows[0].ItemArray[7].ToString();

                                txtLastName.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();

                            }
                            else
                            {
                                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Id')", true);
                            }
                            con.Close();

                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}