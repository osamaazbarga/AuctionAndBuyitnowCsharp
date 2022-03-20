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

namespace saleman
{
    public partial class indexmasterpage : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Utility.ReadFromCookie("login", "username", Request);
            string userID = Utility.ReadFromCookie("login", "userID", Request);

            if (username == null)
            {
                lgoutlbl.Visible=false;
                reglbl.Visible = true;
                lgnlbl.Text = "<a class='nav-link' href='loginpage.aspx'>Login</a>";
            }
            else
            {
                reglbl.Visible = false;
                lgoutlbl.Visible = true;
                string user ="Hi "+ username;
                //lgnlbl.Text = "<a class='nav-link' href='loginpage.aspx'>Hi'" + Session["username"] + "'</a>";
                lgnlbl.Text = "<a class='nav-link' href='loginpage.aspx'>" + user + "</a>";
            }
            

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            string url = string.Format("allproduct.aspx?q={0}&cat={1}", txtsearch.Text, DropDownList1.Text);
            Response.Redirect(url);
            //Response.Redirect("allproduct.aspx?q="+txtsearch.Text+"cat="+DropDownList1.Text);
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Utility.RemoveCookie("login", Response);
            Session["username"] = null;
            Response.Redirect("index.aspx");

        }



    }
}