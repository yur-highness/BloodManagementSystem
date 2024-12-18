using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodManagementSystem
{
    public partial class layout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                 if (Session["role"]==null)
                {
                  
                    Label2.Visible = false;
                    stock.Visible = false;
                    certificate.Visible = false;
                    donorreg.Visible = false;
                    
                }
                else if(Session["role"].Equals("user"))
                {
              
                    Label2.Visible = true;
                    Label2.Text ="hello "+ Session["fullname"].ToString();
                    stock.Visible = false;
                    certificate.Visible = false;
                    login1.Visible = false;
                }
                 else if (Session["role"].Equals("admin"))
                {
                  
                    Label2.Visible = true;
                    Label2.Visible = true;
                    stock.Visible = true;
                    certificate.Visible = true;
                    login1.Visible = false;
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void logout1_Click(object sender, EventArgs e)
        {
            // Clear the session variables
            Session["role"] = null;
            Session["fullname"] = null;

            // Redirect to the login page
            Response.Redirect("HomePage.aspx");
        }

     
    }
}