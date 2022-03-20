using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

using System.Data.Common;
using saleman.App_Start;
using System.Web.Mvc;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using System.Web.UI.DataVisualization.Charting;



namespace saleman.administrator
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //getChartData_todayProducts();
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
        public void getChartData_todayProducts()
        {
            //string today = DateTime.Now.ToString("M/d/yyyy");
            //conn.Open();
            //SqlCommand cmd = new SqlCommand("select last_price,start_date from addproduct where (d,start_date,GETDATE())=0)", conn);
            //SqlDataReader rdr = cmd.ExecuteReader();
            //Series series = Chart1.Series["series1"];
            //while (rdr.Read())
            //{
            //    series.Points.AddXY(rdr["last_price"].ToString(), rdr["start_date"].ToString());
            //}


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/dashboard/index.aspx");
        }
    }
}