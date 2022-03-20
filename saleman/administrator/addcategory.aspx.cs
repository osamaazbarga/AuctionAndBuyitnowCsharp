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
    public partial class addcategory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
        Int32 countrow = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand comm = new SqlCommand("SELECT COUNT(*) FROM category", con);
            countrow = (Int32)comm.ExecuteScalar() + 1000 + 1;
            con.Close();
            //Label6.Text = countrow.ToString();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }

        protected void savecat_Click(object sender, EventArgs e)
        {

            string image1_u = "";

            if (imgcatup.HasFile)
            {

                imgcatup.SaveAs(Server.MapPath("../administrator/category_upload") + "//" + countrow.ToString() + ".jpg");
                lbleditmsg.Text += "<br/>Upload status: File uploaded!";
                //string filename = Path.GetFileName(FileUpload1.FileName);
                //imgcatup.SaveAs(Server.MapPath("~/Images_Upload/") + filename);
                //StatusLabel.Text = "Upload status: File uploaded!";
                image1_u = "administrator/category_upload/" + (txtnocat.Text + ".jpg").ToString();
            }



            con.Open();
            SqlCommand select = new SqlCommand("insert into [category](id_category,category,description,pic) VALUES ('" + countrow.ToString() + "','" + txtcatname.Text + "','" + txtdesc.Text + "','" + image1_u + "')", con);
            int t = select.ExecuteNonQuery();

            if (t > 0)
            {

                lbleditmsg.Text = "Category added";


            }
            else
                lbleditmsg.Text = "Error";
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("SELECT COUNT(*) FROM [category]", con);
            Int32 count = (Int32)comm.ExecuteScalar();
            con.Close();
            Label6.Text = count.ToString();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            
            //MultiView1.ActiveViewIndex = 1;
            
        }

        protected void grdusers_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }
    }
}