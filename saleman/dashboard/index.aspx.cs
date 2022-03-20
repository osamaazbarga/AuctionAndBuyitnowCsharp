using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.OleDb;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data.Common;
using saleman.App_Start;
using System.Web.Mvc;
using System.Runtime.CompilerServices;

namespace saleman.dashboard
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Utility.ReadFromCookie("login", "username", Request);
            

            if (username == null)
            {
                Response.Redirect("loginpage.aspx");
            }
            else
            {
                Label1.Text = username;
                //reglbl.Visible = false;
                //lgoutlbl.Visible = true;
                //string user = "Hi " + username;
                ////lgnlbl.Text = "<a class='nav-link' href='loginpage.aspx'>Hi'" + Session["username"] + "'</a>";
                //lgnlbl.Text = "<a class='nav-link' href='loginpage.aspx'>" + user + "</a>";
            }
        }
    }
}