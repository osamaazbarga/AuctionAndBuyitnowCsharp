using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace saleman
{
    public partial class productactionpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["timer"] = DateTime.Now.AddDays(7).ToString();
                //DataList dl = new DataList();
                //Literal ltr = new Literal();
                Literal myLabel = productList.FindControl("Literal1") as Literal;
                myLabel.Text = "kaldfs";
                
            }

        }
    }
}