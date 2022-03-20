using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data.Common;
using saleman.App_Start;
using System.Web.Mvc;
using System.Runtime.CompilerServices;

namespace saleman
{
    public partial class Loginpage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Utility.ReadFromCookie("login", "username", Request);
            if (user != null)
            {
                Redirect(user);
            }
            //lblmsg.Visible = false;
        }
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        //protected void Loginbutton_Click(object sender, EventArgs e)
        //{

        //}

   

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            string username;
            cmd = new SqlCommand("select * from users where (username='" + txtemail.Text + "' or email='" + txtemail.Text + "') and password='" + txtpass.Text + "'", con);
            con.Open();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string userID = dr["userID"].ToString();
                username = dr["username"].ToString();
                Session["username"] = username;
                string[] keys = { "username", "password","userID" };
                string[] values = { txtemail.Text, txtpass.Text,userID };
                Utility.CreateCookie("login", keys, values, !ckremamber.Checked, Response);


                //Redirect(username);
                MultiView1.ActiveViewIndex = 1;
                lblwelcome.Text = "Welcome Back: " + "user";
                Session["userID"] = txtemail.Text;
                Session.Add("EmployeeName", "Jenny");
            }
            else
            {
                lblmsg.Visible = true;
            }
            con.Close();
            //Utility.CreateCookie()
        }


        protected void lblogout_Click(object sender, EventArgs e)
        {
            Utility.RemoveCookie("login", Response);
            Session["username"] = null;
            Response.Redirect("index.aspx");
        }


        private void Redirect(string user)
        {
            if (user == "admin")
            {
                Response.Redirect("administrator/index.aspx");
            }
            else
            {
                MultiView1.ActiveViewIndex = 1;
                lblwelcome.Text = "Welcome Back: " + user;
            }
        }
    }
}