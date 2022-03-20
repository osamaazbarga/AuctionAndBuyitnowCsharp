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


namespace saleman.administrator
{
    public partial class users : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            Searchfnc(rdoField.SelectedValue, txtSearch.Text);
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Searchfnc(rdoField.SelectedValue, txtSearch.Text);

        }

        //public DataTable Searchfnc(string field,string value)
        //{

        //}
        public void Searchfnc(string field, string value)
        {

            //SqlDataSource1.SelectCommand = String.Format("select * from users where {0} like '%{1}%'", field, value);
            //SqlDataSource1.SelectCommand = "SELECT * FROM users WHERE '" + field + "' = '" + value + "'";
            //grdusers.DataBind();
            // DataTable tbl = new DataTable();
            lblMsg.Text = "";
            SqlCommand cmd = new SqlCommand(String.Format("select userID,username,email,firstname,lastname,active from users where {0} like '%{1}%'", field, value), conn);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                //    tbl.Columns.Add("UserID");
                //    tbl.Columns.Add("Username");
                //    tbl.Columns.Add("Email");
                //    tbl.Columns.Add("First Name");
                //    tbl.Columns.Add("Last Name");
                //    DataColumn[] PL = { tbl.Columns["ProductID"] };
                //    tbl.Constraints.Add("Cart_PL", PL, true);

                //    DataRow row = tbl.NewRow();
                //SqlDataSource1.SelectCommand = "SELECT * FROM users WHERE '" + field + "' = '" + value + "'";
                grdusers.DataSource = dr;
                grdusers.DataBind();
            }






            conn.Close();
        }

        protected void grdusers_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnRemove.Enabled = true;
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            //int activeuser= 0;
            //if (Convert.ToInt32(grdusers.SelectedRow.Cells[1].Text) == 1)
            //{
            //    activeuser = 0;
            //}
            //else
            //{
            //    activeuser = 1;
            //}
            conn.Open();
            SqlCommand cmd = new SqlCommand("update users set active='" + 0 + "' WHERE userID=" + Convert.ToInt32(grdusers.SelectedRow.Cells[1].Text) + "", conn);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                    //Response.Write("<script>alert('price add succsess')</script>");
                    //Response.Redirect(Request.RawUrl);
                btnRemove.Enabled = true;
                grdusers.DataBind();
                lblMsg.Text = "the user deleted";
            }
            //else
            //{
            //    //Response.Write("<script>alert('price add failed')</script>");


            //}
            
            conn.Close();
        }
    }
}