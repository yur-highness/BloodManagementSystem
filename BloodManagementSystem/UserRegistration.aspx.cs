using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace BloodManagementSystem
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        string strrcon = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        //user defined function
        void signUpUser()
        {

            try
            {
                using (SqlConnection con = new SqlConnection(strrcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();


                        string firstname1 = firstname.Text.Trim().ToLower().ToString();
                        string lastname1 = lastname.Text.Trim().ToLower().ToString();
                        string txtUsername1 = txtUsername.Text.Trim().ToString();
                        string txtPassword1 = txtPassword.Text.Trim().ToString();
                        string txtDateOfBirth1 = txtDateOfBirth.Text.ToString();
                        string city1 = city.SelectedItem.Value.ToString().ToLower();
                        string state1 = state.SelectedItem.Value.ToString().ToLower();
                        string txtPinCode1 = txtPinCode.Text.Trim().ToString();
                        string txtFullAddress1 = txtFullAddress.Text.Trim().ToLower().ToString();
                        string txtContactNumber1 = txtContactNumber.Text.Trim().ToString();
                        string query = "INSERT INTO detailsuser(firstname,lastname,username,password,[d.o.b],city,state,pincode,address,contactno) VALUES(@firstname1,@lastname1,@txtUsername1,@txtPassword1,@txtDateOfBirth1,@city1,@state1,@txtPinCode1,@txtFullAddress1,@txtContactNumber1)";

                        SqlCommand cmd = new SqlCommand(query);
                        cmd.Connection = con;

                        cmd.Parameters.AddWithValue("@firstname1", firstname1);
                        cmd.Parameters.AddWithValue("@lastname1", lastname1);
                        cmd.Parameters.AddWithValue("@txtUsername1", txtUsername1);
                        cmd.Parameters.AddWithValue("@txtPassword1", txtPassword1);
                        cmd.Parameters.AddWithValue("@txtDateOfBirth1", txtDateOfBirth1);
                        cmd.Parameters.AddWithValue("@city1", city1);
                        cmd.Parameters.AddWithValue("@state1", state1);
                        cmd.Parameters.AddWithValue("@txtPinCode1", txtPinCode1);
                        cmd.Parameters.AddWithValue("@txtFullAddress1", txtFullAddress1);
                        cmd.Parameters.AddWithValue("@txtContactNumber1", txtContactNumber1);

                        cmd.ExecuteNonQuery();
                        con.Close();


                        Response.Write("<script>alert('register successfully go to Home and login')</script>");
                        //Response.Redirect("UserLoginPage.aspx");
                        firstname.Text = "";
                        lastname.Text = "";
                        txtUsername.Text = "";
                        txtPassword.Text = "";
                        txtDateOfBirth.Text = "";
                        city.SelectedIndex = -1;
                        state.SelectedIndex = -1;
                        txtPinCode.Text = "";
                        txtFullAddress.Text = "";
                        txtContactNumber.Text = "";
                    }



                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }

        }

        bool checkUserExist()
        {
            using (SqlConnection con = new SqlConnection(strrcon))
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "select * from detailsuser where username='" + txtUsername.Text.Trim() + "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }



        // signup button click event
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (checkUserExist())
            {
                Response.Write("<script>alert('user already exist')</script>");
            }
            else {
                signUpUser();
            }
        
        }
    }
}