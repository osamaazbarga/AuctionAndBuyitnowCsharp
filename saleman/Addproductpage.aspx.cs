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
using System.Data;
using System.Windows.Forms;
using System.Data.OleDb;
using System.Data.Common;
using saleman.App_Start;
using System.Web.Mvc;
using System.Runtime.CompilerServices;


namespace saleman
{
    public partial class Addproductpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection conn;
            //SqlCommand cmd;
            //string myConnectionString = WebConfigurationManager.AppSettings["ConnectionString"];
            //conn = new SqlConnection(myConnectionString);
            //cmd = new SqlCommand();
            //cmd.Connection = conn;
            //cmd.CommandText = myConnectionString;

            //SqlCommand lastId;
            //SqlDataReader lid = null;
            //lastId = new SqlCommand();
            //lastId.Connection = conn;
            //lastId.CommandText = ("SELECT LAST_INSERT_ID()");

            //try
            //{
            //    conn.Open();
            //    cmd.ExecuteNonQuery();
            //    lid = lastId.ExecuteReader(CommandBehavior.CloseConnection);
            //    conn.Close();
            //}
            //catch
            //{


            //}
            //Label2.Text = lid.ToString();
            string user = Utility.ReadFromCookie("login", "username", Request);
            if (user == null)
            {
                Response.Redirect("Loginpage.aspx");
            }
            //  int   enddays = 20;
            //string time = DateTime.Now.AddDays(enddays).ToString();
            //zzz.Text = time;

            //System.Windows.Forms.Application.DoEvents();

        }

        protected void product_wight_TextChanged(object sender, EventArgs e)
        {

            //SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
            //SqlCommand cmd = new SqlCommand(String.Format("SELECT Max(id_product) FROM [addproduct]"), con);
            //Label2.Text  = cmd.Parameters["@id_product"].Value.ToString();


            
        }

        protected void listitem_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
            //SqlCommand cmd = new SqlCommand(String.Format("SELECT Max(id_product) FROM [addproduct]"), con);
            //Label2.Text = 
            //string last = cmd.Parameters["@id_product"].Value.ToString();

            string image1_u = ""/*= "Images_Upload/" + FileUpload1.FileName*/;
            string image2_u = "" /*= "Images_Upload/" + FileUpload2.FileName*/;
            string image3_u = ""/*= "Images_Upload/" + FileUpload3.FileName*/;
            string image4_u = ""/*= "Images_Upload/" + FileUpload4.FileName*/;
            string image5_u = "" /*"Images_Upload/" + FileUpload5.FileName*/;
            int daysact = 0;
            int qunt = 1;
            int PayPal_c = 0;
            int Credit_c = 0;
            int enddays = 30;


            if (FileUpload1.HasFile)
            {

                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/product_Upload/") + filename);
                StatusLabel.Text = "Upload status: File uploaded!";
                image1_u = "product_Upload/" + FileUpload1.FileName.ToString();
            }
            else
            {
                image1_u = "No Photo Uploaded";
            }
            if (FileUpload2.HasFile)
            {

                string filename = Path.GetFileName(FileUpload2.FileName);
                FileUpload2.SaveAs(Server.MapPath("~/product_Upload/")+ filename);
                StatusLabel.Text = "Upload status: File uploaded!";
                image2_u = "product_Upload/" + FileUpload2.FileName.ToString();
            }


            if (FileUpload3.HasFile)
            {

                string filename = Path.GetFileName(FileUpload3.FileName);
                FileUpload3.SaveAs(Server.MapPath("~/product_Upload/") + filename);
                StatusLabel.Text = "Upload status: File uploaded!";
                image3_u = "product_Upload/" + FileUpload3.FileName.ToString();
            }

            if (FileUpload4.HasFile)
            {

                string filename = Path.GetFileName(FileUpload4.FileName);
                FileUpload4.SaveAs(Server.MapPath("~/product_Upload/") + filename);
                StatusLabel.Text = "Upload status: File uploaded!";
                image4_u = "product_Upload/" + FileUpload4.FileName.ToString();
            }
            if (FileUpload5.HasFile)
            {

                string filename = Path.GetFileName(FileUpload5.FileName);
                FileUpload5.SaveAs(Server.MapPath("~/product_Upload/") + filename);
                StatusLabel.Text = "Upload status: File uploaded!";
                image5_u = "product_Upload/" + FileUpload5.FileName.ToString();

            }

            DateTime today = DateTime.Now;
           


            if (Format.Text == "Auction")
            {
                qunt = 1;
                enddays = Convert.ToInt32(auctiondays.SelectedValue);
                
            }
            if (Format.Text == "Fixed_Price")
            {
                //auctiondays.SelectedItem.Enabled = false;
                //auctiondays.Items[0].Attributes["disabled"] = "disabled";
                //auctiondays.Items[1].Attributes["disabled"] = "disabled";
                //auctiondays.Items.FindByValue("1").Attributes.Add("Disabled", "Disabled");
                //enb();
                //Response.Redirect("addproduct.aspx");
                daysact = 0;
                qunt = int.Parse(Quantity.Text);
                enddays = 30;
            }

            DateTime time = DateTime.Now.AddDays(enddays);
            string time2 = DateTime.Now.AddDays(enddays).ToString();
            DateTime checking = Convert.ToDateTime(time);
            //zzz.Text = time;
            //System.Windows.Forms.Application.DoEvents();
            string dateString = null;
            //string result = DateTime.ParseExact(time2, "dd-MMM-yyyy", null).AddDays(Convert.ToInt32(enddays)).ToString("dd-MMM-yyyy");



            int local_p = int.Parse(Local_price.Text);
            int inter_p = int.Parse(Local_price.Text);
            if (PayPal.Checked)
            {
                PayPal_c = 1;
                
            }
            if (Creditcard.Checked)
            {
                Credit_c = 1;
            }


            string dddd = "getdate()";
            string userID = Utility.ReadFromCookie("login", "userID", Request);

            con.Open();
            //SqlCommand select = new SqlCommand("insert into [addproduct](product_title,description_product,category,Format,days,order_price,start_date,Quantity,shipwith,wight,local_shipping_price,inter_shipping_price,image1,image2,image3,image4,image5,PayPal,credit,loacation,htmldes,userid) " +"values('" + title.Text + "','" + description.Text + "','" + category.Text + "','" + Format.Text + "','" + enddays + "','" + order_price.Text + "',getdate(),'" + qunt + "','" + shipwith.Text + "','" + product_weight.Text + "','" + local_p + "','" + inter_p + "','" + image1_u + "','" + image2_u + "','" + image3_u + "','" + image4_u + "','" + image5_u + "','" + PayPal_c + "','" + Credit_c + "','" + Loacation.Text + "','" + itemhtml.Text + "','" + "osama" + "')", con);
            SqlCommand select = new SqlCommand("insert into [addproduct](product_title,description_product,category,Format,days,order_price,last_price,start_date,Quantity,shipwith,wight,local_shipping_price,inter_shipping_price,image1,image2,image3,image4,image5,PayPal,credit,loacation,htmldes,userid) " +"values('" + title.Text + "','" + description.Text + "','" + category.Text + "','" + Format.Text + "','" + enddays + "','" + order_price.Text + "','" + order_price.Text + "',getdate(),'" + qunt + "','" + shipwith.Text + "','" + product_weight.Text + "','" + local_p + "','" + inter_p + "','" + image1_u + "','" + image2_u + "','" + image3_u + "','" + image4_u + "','" + image5_u + "','" + PayPal_c + "','" + Credit_c + "','" + Loacation.Text + "','" + itemhtml.Text + "','" + userID + "')", con);

            int t = select.ExecuteNonQuery();
            if (t > 0)
            {
                //Response.Write("<script>alert('ADDproduct Added')</script>");
                Response.Redirect("index.aspx");
            }
            //select.Parameters.AddWithValue("@id_product",);
            con.Close();

        }

        protected void Format_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Format.SelectedItem.Value == "Auction")
            {

                auctiondays.Visible = true;
                Duraionlabel.Visible = true;
                Quantity.Visible = false;
                Quantitylabel.Visible = false;
            }
            else
            {
                auctiondays.Visible = false;
                Duraionlabel.Visible = false;
                Quantity.Visible = true;
                Quantitylabel.Visible = true;
            }
        }
    }

    
}