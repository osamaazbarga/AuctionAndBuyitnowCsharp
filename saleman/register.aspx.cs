using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace saleman
{
    public partial class register1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
            con.Open();
            SqlCommand select = new SqlCommand("insert into [users](username,email,password,firstname,lastname) values('" + usertxt.Text + "','" + mailtxt.Text + "','" + password.Text + "','" + fntxt.Text + "','" + lntxt.Text + "');", con);
            int t = select.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('User Added')</script>");
                Response.Redirect("loginpage.aspx");
            }
            con.Close();
        }
    }
}