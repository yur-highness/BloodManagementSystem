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
            string bloodGroup1 = bloodGroup.Text.Trim();
            string date = txtDate.Text.Trim();

            if (!string.IsNullOrEmpty(id) && !string.IsNullOrEmpty(firstName) && !string.IsNullOrEmpty(lastName) && !string.IsNullOrEmpty(bloodGroup1) && !string.IsNullOrEmpty(date))
            {
                // Save the user's data in the database
                SaveUserDataToDatabase(id, firstName, lastName, bloodGroup1, date);

                // Mark the column issued as true in the database
                MarkIssuedAsTrueInDatabase(id);

           // Clear the text boxes
                txtID.Text = "";
                txtFirstName.Text = "";
                txtLastName.Text = "";
                bloodGroup.Text = "";
                txtDate.Text = "";
                // Display the certificate image
                Response.Redirect("viewcertificate.aspx?a1="+txtFirstName.Text+"&a2="+txtDate.Text);
            }
            else
            {
                // Display an error message if any of the fields are empty
           
                Response.Write("Please enter all the required fields.");
            }
        }

        private void SaveUserDataToDatabase(string id, string firstName, string lastName, string bloodGroup, string date)
        {
            // Query the database to save the user's data
           
            try
            {
                if (Session["role"].Equals("admin"))
                {
                    using (SqlConnection con = new SqlConnection(strrcon))
                    {
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                            string query = "INSERT INTO dtaiilscertifications (id, firrstname, lastname, bloodgroup, date) VALUES (@id, @firstName, @lastName, @bloodGroup, @date)";
                            SqlCommand command = new SqlCommand(query, con);
                            command.Parameters.AddWithValue("@id", id);
                            command.Parameters.AddWithValue("@firstName", firstName);
                            command.Parameters.AddWithValue("@lastName", lastName);
                            command.Parameters.AddWithValue("@bloodGroup", bloodGroup);
                            command.Parameters.AddWithValue("@date", date);
                            command.ExecuteNonQuery();
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

        private void MarkIssuedAsTrueInDatabase(string id)
        {
            // Query the database to mark the column issued as true
           
        
         
                if (Session["role"].Equals("admin"))
                {
                    using (SqlConnection con = new SqlConnection(strrcon))
                    {
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                            string query = "UPDATE detailscertifications SET issued = true WHERE id = @id";
                            SqlCommand command = new SqlCommand(query, con);
                            command.Parameters.AddWithValue("@id", id);
                            command.ExecuteNonQuery();
                        
                        }
                    }
                 }
        }
       


    }
}