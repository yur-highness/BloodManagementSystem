using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodManagementSystem
{
    public partial class viewcertificate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        name.Text  = Request.QueryString["a1"];
        date.Text = Request.QueryString["a2"];      }
    }
}