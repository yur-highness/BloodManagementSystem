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
    public partial class WebForm4 : System.Web.UI.Page
    {
        string strrcon = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBloodStocks();
            }

        }
        private void LoadBloodStocks()
        {
            using (SqlConnection conn = new SqlConnection(strrcon))
            {
                string query = "SELECT * FROM detailsstock";
                SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView.DataSource = dt;
                GridView.DataBind();
            }
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

                        string id1 = id.SelectedItem.Value.ToString();
                        string bloodgroup10 = bloodgroup1.SelectedItem.Value.ToString();
                        string stock1 = stock.Text.Trim().ToLower().ToString();
                        string collectiondate1 = collectiondate.Text.Trim().ToString();
                        string expirydate1 = expirydate.Text.Trim().ToString();


                        string query = "INSERT INTO detailsstock(id,bloodgroup,units,collectiondate,expirydate) VALUES(@id1,@bloodgroup10,@stock1,@collectiondate1,@expirydate1)";

                        SqlCommand cmd = new SqlCommand(query);
                        cmd.Connection = con;

                        cmd.Parameters.AddWithValue("@id1", id1);
                        cmd.Parameters.AddWithValue("@bloodgroup10", bloodgroup10);
                        cmd.Parameters.AddWithValue("@stock1", stock1);
                        cmd.Parameters.AddWithValue("@collectiondate1", collectiondate1);
                        cmd.Parameters.AddWithValue("@expirydate1", expirydate1);


                        cmd.ExecuteNonQuery();
                        con.Close();


                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            Response.Write("<script>alert('Stock registered successfully.');</script>");
                           
                        }
                        else
                        {
                            Response.Write("<script>alert('Error: Stock registration failed.');</script>");
                        }
                        id.Text = "";
                        bloodgroup1.Text = "";
                        stock.Text = "";
                        collectiondate.Text = "";
                        expirydate.Text = "";





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
            using (SqlConnection conn = new SqlConnection(strrcon))
            {
                string query = "SELECT * FROM detailsstock WHERE collectiondate = @date";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@date", date.Text.Trim());
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView.DataSource = dt;
                GridView.DataBind();
            }

        }

        protected void load_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                LoadBloodStocks();
            }

        }
    }
}