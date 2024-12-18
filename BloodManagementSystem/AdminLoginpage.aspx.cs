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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string strrcon = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                using (SqlConnection con = new SqlConnection(strrcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    string query = "select * from detailsadmin where username='" + email.Text.Trim() + "' and password='" + password.Text.Trim() + "'";
                    SqlCommand cmd = new SqlCommand(query);
                    cmd.Connection = con;
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Session["username"] = reader.GetValue(1).ToString();
                            Session["name"] = reader.GetValue(1).ToString();
                        
                            Session["role"] = "admin";
                            Response.Redirect("HomePage.aspx");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid credentials')</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}