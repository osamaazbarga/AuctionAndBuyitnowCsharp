using Antlr.Runtime.Tree;
using Org.BouncyCastle.Math;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace saleman
{
    public partial class testtimer : System.Web.UI.Page
    {
        public double seconds;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "asd";
            //if (!IsPostBack)
            //    timing();



            //DateTime today = DateTime.Now;
            //DateTime next = new DateTime(2021, 01, 15, 15, 10, 0);
            //TimeSpan dt2 = next.Subtract(DateTime.Now);
            //lblTimeLeft.Text = "timeis up in " + dt2.Days.ToString() + " days, "
            //+ dt2.Hours.ToString() + " hours, "
            //+ dt2.Minutes.ToString() + " minutes "
            //+ dt2.Seconds.ToString() + " seconds.";
            //seconds = (GetEndTime() - GetStartTime()).TotalSeconds;

        }



        protected void timing()
        {
            DateTime today = DateTime.Now;
            DateTime endtime = today.AddDays(30);
            //DateTime next = new DateTime(2021, 01, 20, 15, 10, 0);
            TimeSpan dt2 = endtime.Subtract(DateTime.Now);
            lblTimeLeft.Text = "timeis up in " + dt2.Days.ToString() + " days, "
            + dt2.Hours.ToString() + " hours, "
            + dt2.Minutes.ToString() + " minutes "
            + dt2.Seconds.ToString() + " seconds.";
            //Session["timer"] = next;
            Session["timer"] = endtime;
        }

        private DateTime GetStartTime()
        {
            DateTime today = DateTime.Now;
            return today;
        }
        private DateTime GetEndTime()
        {
            DateTime next = new DateTime(2021, 01, 15, 15, 10, 0);
            return next;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            DateTime checking = Convert.ToDateTime(Session["timer"]);
            TimeSpan dt2 = checking.Subtract(DateTime.Now);
            hourss.Text = dt2.Seconds.ToString();

            lblTimeLeft.Text = "timeis up in " + dt2.Days.ToString() + " days, "
            + dt2.Hours.ToString() + " hours, "
            + dt2.Minutes.ToString() + " minutes "
            + dt2.Seconds.ToString() + " seconds.";
            times.Text = DateTime.Now.ToString();

        }
    }
}