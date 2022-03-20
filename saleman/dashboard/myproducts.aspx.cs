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
    public partial class myproducts : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string userID = Utility.ReadFromCookie("login", "userID", Request);

            SqlCommand cmd = new SqlCommand(String.Format("select * from addproduct where userid={0}", userID), conn);
            conn.Open();



            //string username = Utility.ReadFromCookie("login", "username", Request);
            //string userID = Utility.ReadFromCookie("login", "userID", Request);
            //Label1.Text = username;
            //Console.WriteLine(username);
            //if (username == null)
            //{
            //    //lgoutlbl.Visible = false;
            //    //reglbl.Visible = true;
            //    //lgnlbl.Text = "<a class='nav-link' href='/loginpage.aspx'>Login</a>";
            //}
            //else
            //{
            //    Label1.Text = username;
            //    //reglbl.Visible = false;
            //    //lgoutlbl.Visible = true;
            //    //string user = "Hi " + username;
            //    ////lgnlbl.Text = "<a class='nav-link' href='loginpage.aspx'>Hi'" + Session["username"] + "'</a>";
            //    //lgnlbl.Text = "<a class='nav-link' href='/loginpage.aspx'>" + user + "</a>";
            //}

            string username = Utility.ReadFromCookie("login", "username", Request);
            

            if (username == null)
            {
                Response.Redirect("loginpage.aspx");
            }
            else
            {
                Label1.Text = userID;
                //reglbl.Visible = false;
                //lgoutlbl.Visible = true;
                //string user = "Hi " + username;
                ////lgnlbl.Text = "<a class='nav-link' href='loginpage.aspx'>Hi'" + Session["username"] + "'</a>";
                //lgnlbl.Text = "<a class='nav-link' href='loginpage.aspx'>" + user + "</a>";
            }
        }
    }
}