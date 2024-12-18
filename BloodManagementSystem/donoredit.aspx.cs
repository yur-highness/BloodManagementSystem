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
    public partial class WebForm11 : System.Web.UI.Page
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
                        string selectQuery  = "select  * from detailsdonor where id='"+id.Text.Trim().ToLower()+"'";
                        SqlDataAdapter da = new SqlDataAdapter(selectQuery, con);
                        DataSet ds = new DataSet();
                        da.Fill(ds, "detailsdonor");
                        if (ds.Tables[0].Rows.Count != 0)
                        {
                            firstName.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                            lastName.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                            dob.Text = Convert.ToDateTime(ds.Tables[0].Rows[0].ItemArray[3]).ToString("yyyy-MM-dd");
                            //gender.SelectedValue = ds.Tables[0].Rows[0].ItemArray[4].ToString();
                            gender.ClearSelection();

                            if (ds.Tables[0].Rows[0].ItemArray[4].ToString() == "Male")
                            {
                                gender.SelectedValue = "Male";
                                gender.SelectedIndex = 0;
                            }
                            else if (ds.Tables[0].Rows[0].ItemArray[4].ToString() == "Female")
                            {
                                gender.SelectedValue = "Female";
                                gender.SelectedIndex = 1;
                            }
                            age.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
                            phone.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
                            bloodGroup.SelectedItem.Value = ds.Tables[0].Rows[0].ItemArray[7].ToString();

                        }
                        else { 
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

        protected void register_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strrcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                        string firstName1 = firstName.Text.Trim().ToString();
                        string lastName1 = lastName.Text.Trim().ToString();
                        string dob1 = dob.Text.Trim().ToString();
                        string gender1 = gender.Text.Trim().ToString();
                        string  phone1 = phone.Text.Trim().ToString();
                        string gender2 = gender.Text.Trim().ToString();
                        string age1 = age.Text.Trim().ToString();
                        string bloodGroup1 = bloodGroup.Text.Trim().ToString();

                        string updateQuery = "UPDATE detailsdonor SET  firstname=@firstName1,lastname=@lastName1,[d.o.b]=@dob1,gender=@gender2,age=@age1,phoneno=@phone1,bloodgroup=@bloodGroup1 WHERE id='" + id.Text.Trim().ToLower() + "'";
                        SqlCommand cmd = new SqlCommand(updateQuery, con);
                        cmd.Parameters.AddWithValue("@firstName1", firstName1);
                        cmd.Parameters.AddWithValue("@lastName1", lastName1);
                        cmd.Parameters.AddWithValue("@dob1", dob1);
                        cmd.Parameters.AddWithValue("@gender2", gender1);
                        cmd.Parameters.AddWithValue("@age1", age1);
                        cmd.Parameters.AddWithValue("@phone1", phone1);
                        cmd.Parameters.AddWithValue("@bloodGroup1", bloodGroup1);

                        cmd.ExecuteNonQuery();
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Updated Successfully')", true);
                        con.Close();
                        firstName.Text = "";
                        lastName.Text = "";
                        dob.Text = "";
                        gender.ClearSelection();
                        age.Text = "";
                        phone.Text = "";
                        bloodGroup.ClearSelection();
                        id.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strrcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                        string deleteQuery = "DELETE FROM detailsdonor WHERE id='" + id.Text.Trim().ToLower() + "'";
                        SqlCommand cmd = new SqlCommand(deleteQuery, con);
                        cmd.ExecuteNonQuery();
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Deleted Successfully')", true);
                        con.Close();
                        firstName.Text = "";
                        lastName.Text = "";
                        dob.Text = "";
                        gender.ClearSelection();
                        age.Text = "";
                        phone.Text = "";
                        bloodGroup.ClearSelection();
                        id.Text = "";

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