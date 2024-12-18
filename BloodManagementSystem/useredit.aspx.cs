using System;
using System.Collections;
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
    public partial class WebForm10 : System.Web.UI.Page
    {
        string strrcon = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void search_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strrcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                        string selectQuery = "select  * from detailsuser where id='" + id.Text.Trim() + "'";
                        SqlDataAdapter da = new SqlDataAdapter(selectQuery, con);
                        DataSet ds = new DataSet();
                        da.Fill(ds, "detailsdonor");
                        if (ds.Tables[0].Rows.Count != 0)
                        {
                            firstname.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                            lastname.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                            txtContactNumber.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
                            txtDateOfBirth.Text = Convert.ToDateTime(ds.Tables[0].Rows[0].ItemArray[5]).ToString("yyyy-MM-dd");



                            city.Items.Clear();
                            city.Items.Add(new ListItem("city1", "city1"));
                            city.Items.Add(new ListItem("city2", "city2"));
                            city.Items.Add(new ListItem("bngn", "bngn"));

                            city.Items.Clear();
                            city.Items.Add(new ListItem("city1", "city1"));
                            city.Items.Add(new ListItem("city2", "city2"));
                            city.Items.Add(new ListItem("bngn", "bngn"));
                            city.SelectedValue = ds.Tables[0].Rows[0].ItemArray[6].ToString();

                            state.Items.Clear();
                            state.Items.Add(new ListItem("state1", "state1"));
                            state.Items.Add(new ListItem("state2", "state2"));
                            state.Items.Add(new ListItem("assam", "assam"));
                            state.SelectedValue = ds.Tables[0].Rows[0].ItemArray[7].ToString();


                            txtPinCode.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
                            txtFullAddress.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();


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