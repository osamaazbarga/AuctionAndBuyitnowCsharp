using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using AjaxControlToolkit.HtmlEditor.ToolbarButtons;


namespace saleman
{

    public partial class productactionsell: System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["timer"] = DateTime.Now.AddDays(7).ToString();
                DataList dl = new DataList();
                Literal ltr = new Literal();
                ltr.Text = "kaldfs";
                
            }
        }

        void bindlist()
        {
            
            
        }

        protected void Timertest_Tick(object sender, EventArgs e)
        {
            
            //Literal Literal1 = productList.FindControl("lire") as Literal;
            ////Literal Literal1 = (Literal)e.FindControl("Label1");
            //if (DateTime.Compare(DateTime.Now, DateTime.Parse(Session["timer"].ToString())) < 0)
            //{
            //    Ltr = "Time left : " + ((Int32)DateTime.Parse(Session["timer"].ToString()).Subtract(DateTime.Now).TotalDays).ToString()
            //        + "days" + ((Int32)DateTime.Parse(Session["timer"].ToString()).Subtract(DateTime.Now).TotalHours).ToString()
            //        + ":" + ((Int32)DateTime.Parse(Session["timer"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString()
            //        + ":" + (((Int32)DateTime.Parse(Session["timer"].ToString()).Subtract(DateTime.Now).TotalSeconds) % 60).ToString();
                

            //}
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //DataTable tbl= new DataTable();
            //if(Session["item"])
            //tbl.Columns.Add("")
        }
    }
}