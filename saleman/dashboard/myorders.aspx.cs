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
    public partial class myorders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userID = Utility.ReadFromCookie("login", "userID", Request);
            Label1.Text = userID;
            //CookieParameter cookieParam = new CookieParameter();
            //cookieParam.Name = "buyerID";
            //cookieParam.Type = TypeCode.Int32;
            //cookieParam.CookieName = "login";
            //cookieParam.DefaultValue = userID;

            //SqlDataSource1.SelectParameters.Add(cookieParam);

        }
    }
}