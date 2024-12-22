using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodManagementSystem
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string strrcon = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("user") || Session["role"].Equals("admin"))
                {
                    using (SqlConnection con = new SqlConnection(strrcon))
                    {
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();

                            string firstname1 = firstName.Text.Trim().ToLower().ToString();
                            string lastname1 = lastName.Text.Trim().ToLower().ToString();
                            string dob1 = dob.Text.Trim().ToString();
                            string gender1 = gender.SelectedItem.Value.ToString();
                            string phone1 = phone.Text.ToString();
                            string bloodGroup1 = bloodGroup.SelectedItem.Value.ToString().ToLower();


                            DateTime dobage = DateTime.Parse(dob1);
                            int age = DateTime.Now.Year - dobage.Year;

                            // Check if the current year is less than the birth year
                            if (DateTime.Now.Month < dobage.Month || (DateTime.Now.Month == dobage.Month && DateTime.Now.Day < dobage.Day))
                            {
                                age--;
                            }

                            string ageString = age.ToString();

                            string query = "INSERT INTO detailsdonor(firstname,lastname,[d.o.b],gender,age,phoneno,bloodgroup) VALUES(@firstname1,@lastname1,@dob1,@gender1,@ageString,@phone1,@bloodGroup1)";

                            SqlCommand cmd = new SqlCommand(query);
                            cmd.Connection = con;

                            cmd.Parameters.AddWithValue("@firstname1", firstname1);
                            cmd.Parameters.AddWithValue("@lastname1", lastname1);
                            cmd.Parameters.AddWithValue("@dob1", dob1);
                            cmd.Parameters.AddWithValue("@gender1", gender1);
                            cmd.Parameters.AddWithValue("@ageString", ageString);
                            cmd.Parameters.AddWithValue("@phone1", phone1);
                            cmd.Parameters.AddWithValue("@bloodGroup1", bloodGroup1);


                            cmd.ExecuteNonQuery();
                         
                           

                            int rowsAffected = cmd.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {

                                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registration Successfully returnto login page')", true);
                                con.Close();
                                firstName.Text = "";
                                lastName.Text = "";
                                dob.Text = "";
                                gender.SelectedIndex = -1;
                                phone.Text = "";
                                bloodGroup.SelectedIndex = -1;

                            }
                            else
                            {
                                Response.Write("<script>alert('Error: Donor registration failed.');</script>");
                            }

                      
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception
                Console.WriteLine(ex.Message);
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}