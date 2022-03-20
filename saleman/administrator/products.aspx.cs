using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using Microsoft.Ajax.Utilities;
using System.IO;

namespace saleman.administrator
{
    public partial class products : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
        Int32 countrow = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            conn.Open();
            SqlCommand comm = new SqlCommand("SELECT COUNT(*) FROM addproduct", conn);
            countrow = (Int32)comm.ExecuteScalar() + 1000 + 1;
            conn.Close();
        }

        //protected void btnAdd_Click(object sender, EventArgs e)
        //{
        //    MultiView1.ActiveViewIndex = 1;
        //}

        //protected void btnSearch_Click(object sender, EventArgs e)
        //{
        //    Searchfnc(rdoField.SelectedValue, txtSearch.Text);
        //}

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete From addproduct WHERE id_product=" + Convert.ToInt32(grdusers.SelectedRow.Cells[1].Text) + "", conn);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                //Response.Write("<script>alert('price add succsess')</script>");
                //Response.Redirect(Request.RawUrl);
                btnRemove.Enabled = true;
                grdusers.DataBind();
                lblMsg.Text = "the category deleted";
            }
            //else
            //{
            //    //Response.Write("<script>alert('price add failed')</script>");


            //}

            conn.Close();
        }

        //protected void savecat_Click(object sender, EventArgs e)
        //{
        //    string image1_u = "";

        //    if (imgcatup.HasFile)
        //    {

        //        imgcatup.SaveAs(Server.MapPath("../administrator/category_upload") + "//" + countrow.ToString() + ".jpg");
        //        lbleditmsg.Text += "<br/>Upload status: File uploaded!";
        //        //string filename = Path.GetFileName(FileUpload1.FileName);
        //        //imgcatup.SaveAs(Server.MapPath("~/Images_Upload/") + filename);
        //        //StatusLabel.Text = "Upload status: File uploaded!";
        //        image1_u = "administrator/category_upload/" + (txtnocat.Text + ".jpg").ToString();
        //    }



        //    conn.Open();
        //    SqlCommand select = new SqlCommand("insert into [category](category_name,description,pic) VALUES ('" + txtcatname.Text + "','" + txtdesc.Text + "','" + image1_u + "')", conn);
        //    int t = select.ExecuteNonQuery();

        //    if (t > 0)
        //    {

        //        lbleditmsg.Text = "Category added";


        //    }
        //    else
        //        lbleditmsg.Text = "Error";
        //    conn.Close();
        //}

        protected void grdusers_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnRemove.Enabled = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        //protected void Unnamed1_Click(object sender, EventArgs e)
        //{
        //    MultiView1.ActiveViewIndex = 0;
        //}

        public void Searchfnc(string field, string value)
        {

            //SqlDataSource1.SelectCommand = String.Format("select * from users where {0} like '%{1}%'", field, value);
            //SqlDataSource1.SelectCommand = "SELECT * FROM users WHERE '" + field + "' = '" + value + "'";
            //grdusers.DataBind();
            // DataTable tbl = new DataTable();
            lblMsg.Text = "";
            if (field == "")
            {
                lblMsg.Text = "please choose field";
            }
            else
            {
                SqlCommand cmd = null;
                lblMsg.Text = "";
                if(field== "id_product")
                {
                    cmd = new SqlCommand(String.Format("select id_product,product_title,Format,last_price,Quantity from addproduct where {0} like '%{1}%'", field, Int32.Parse(value)), conn);
                }
                else { 
                    cmd = new SqlCommand(String.Format("select id_product,product_title,Format,last_price,Quantity from addproduct where {0} like '%{1}%'", field, value), conn);
                }
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

        }

        protected void btnSearch_Click1(object sender, EventArgs e)
        {
            //Searchfnc(rdoField.SelectedValue, txtSearch.Text);
            lblMsg.Text = "";
            if (rdoField.SelectedValue == "")
            {
                lblMsg.Text = "please choose field";
            }
            else
            {
                SqlCommand cmd = null;
                lblMsg.Text = "";
                if (rdoField.SelectedValue == "id_product")
                {
                    cmd = new SqlCommand(String.Format("select id_product,product_title,Format,last_price,Quantity from addproduct where {0} like '%{1}%'", rdoField.SelectedValue, txtSearch.Text), conn);
                }
                else
                {
                    cmd = new SqlCommand(String.Format("select id_product,product_title,Format,last_price,Quantity from addproduct where {0} like '%{1}%'", rdoField.SelectedValue, txtSearch.Text), conn);
                }
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
                    Console.WriteLine("osama");
                    grdusers.DataSource = dr;
                    grdusers.DataBind();
                }






                conn.Close();
            }
        }
    }

}