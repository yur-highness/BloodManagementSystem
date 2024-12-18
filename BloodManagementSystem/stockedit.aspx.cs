using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace BloodManagementSystem
{
    public partial class WebForm9 : System.Web.UI.Page
    {

        string strrcon = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strrcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                        string selectQuery = "select  * from detailsstock where id='" + id.SelectedItem.Value + "'";
                        SqlDataAdapter da = new SqlDataAdapter(selectQuery, con);
                        DataSet ds = new DataSet();
                        da.Fill(ds, "detailsdonor");
                        if (ds.Tables[0].Rows.Count != 0)
                        {
                            //bloodgroup1.SelectedItem.Value = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                            bloodgroup1.Items.Clear();

                            bloodgroup1.Items.Add(new ListItem("A+", "A+"));
                            bloodgroup1.Items.Add(new ListItem("A-", "A-"));
                            bloodgroup1.Items.Add(new ListItem("B+", "B+"));
                            bloodgroup1.Items.Add(new ListItem("B-", "B-"));
                            bloodgroup1.Items.Add(new ListItem("AB+", "AB+"));
                            bloodgroup1.Items.Add(new ListItem("AB-", "AB-"));
                            bloodgroup1.Items.Add(new ListItem("O+", "O+"));
                            bloodgroup1.Items.Add(new ListItem("O-", "O-"));

                            bloodgroup1.SelectedItem.Value = ds.Tables[0].Rows[0].ItemArray[1].ToString();

                            stock.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                            collectiondate.Text = Convert.ToDateTime(ds.Tables[0].Rows[0].ItemArray[3]).ToString("yyyy-MM-dd");
                            expirydate.Text = Convert.ToDateTime(ds.Tables[0].Rows[0].ItemArray[4]).ToString("yyyy-MM-dd");


                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Id')", true);
                        }
                        con.Close();
                  

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