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
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Web.Razor.Text;

namespace saleman
{
    public partial class indextest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void books_DataBinding(object sender, EventArgs e)
        {
            //books. = "<a class='nav-link' href='loginpage.aspx'>" + user + "</a>";
        }
    }
}