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

namespace saleman
{
    public partial class productsellpage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
        string striditemNO;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                timing();
            if (Request.QueryString["iditem"] != null)
            {
                striditemNO = Request.QueryString["iditem"];
                SqlCommand cmd = new SqlCommand(String.Format("select * from addproduct where id_product={0}", striditemNO), conn);
                string userproduct = null;
                //DataTable tbl = new DataTable();
                conn.Open();
                //tbl.Load(cmd.ExecuteReader());
                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {

                    errmsg.Visible = false;
                    userproduct = dr["userid"].ToString();
                    productid.Text = dr["id_product"].ToString();
                    title.Text = dr["product_title"].ToString();
                    desc.Text = dr["description_product"].ToString();
                    //desc.Text = tbl.Rows[0][3].ToString();//categry
                    order_price.Text = dr["order_price"].ToString();
                    last_price.Text = dr["last_price"].ToString();
                    instock.Text = dr["Quantity"].ToString();

                    if (Convert.ToInt32(dr["Quantity"].ToString())<=0){
                        addtocard.Visible = false;
                        errmsg.Text = "out of the stock";
                        errmsg.Visible = true;
                        buyit.Visible = false;
                    }
                    shipwith.Text = dr["shipwith"].ToString();
                    wieght.Text = dr["wight"].ToString();
                    localship.Text = dr["local_shipping_price"].ToString();
                    intership.Text = dr["inter_shipping_price"].ToString();
                    if (dr["Format"].ToString() == "Fixed_Price")
                    {
                        lblTimeLeft.Visible = false;
                        txtplacebid.Visible = false;
                        placebid.Visible = false;
                        lastprice.Visible = false;
                        last_price.Visible = false;
                    }

                    if (dr["Format"].ToString() == "Auction")
                    {
                        price.Text = "Start Price :";
                        addtocard.Visible = false;
                        buyit.Visible = false;
                        quantitylbl.Visible = false;
                        quantity.Visible = false;

                    }

                    Image1.ImageUrl = dr["image1"].ToString();
                    //Image2.ImageUrl = dr["image2"].ToString();
                    //Image3.ImageUrl = dr["image3"].ToString();
                    //Image4.ImageUrl = dr["image4"].ToString();
                    //Image5.ImageUrl = dr["image5"].ToString();
                    if (dr["PayPal"].ToString() == "0")
                    {
                        paypal.Visible = false;
                    }
                    if (dr["credit"].ToString() == "0")
                    {
                        credit.Visible = false;
                    }
                    loacation.Text = dr["loacation"].ToString();
                    htmldesc.Text = dr["htmldes"].ToString();
                    //SqlCommand ucmd = new SqlCommand(String.Format("select * from user where id_product={0}", striditemNO), conn);
                }
                conn.Close();

                SqlCommand cmd2 = new SqlCommand(String.Format("select * from users where userID={0}", Convert.ToInt32(userproduct)), conn);
                conn.Open();
                SqlDataReader ds = cmd2.ExecuteReader();
                while (ds.Read())
                {
                    username.Text = ds["username"].ToString();
                }
                conn.Close();

            }
            else Response.Redirect("index.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Int32.Parse(quantity.Text) < 1)
            {
                errmsg.Text = "the quantity need to be bigger than 0";
                errmsg.Visible = true;
            }
            else if (Int32.Parse(quantity.Text) > Int32.Parse(instock.Text))
            {
                errmsg.Text = "the quantity is bigger than the stock";
                errmsg.Visible = true;
            }
            else
            {
                errmsg.Visible = false;
                DataTable tbl = new DataTable();
                if (Session["iditem"] != null)
                {
                    tbl = (DataTable)Session["item"];
                }
                else
                {
                    tbl.Columns.Add("ProductID");
                    tbl.Columns.Add("Productname");
                    tbl.Columns.Add("price");
                    tbl.Columns.Add("quantity");
                    tbl.Columns.Add("subtotal");
                    tbl.Columns.Add("image");
                    DataColumn[] PK = { tbl.Columns["ProductID"] };
                    tbl.Constraints.Add("Cart_PK", PK, true);
                }
                DataRow row = tbl.NewRow();
                row["ProductID"] = productid.Text;
                row["Productname"] = title.Text;
                row["price"] = last_price.Text;
                
                while (Int32.Parse(quantity.Text) > Int32.Parse(instock.Text))
                {
                    //quantitytobay.Visible = false;
                }
                row["quantity"] = quantity.Text;
                row["subtotal"] = Convert.ToDouble(row["quantity"]) * Convert.ToDouble(row["price"]);
                row["image"] = Image1.ImageUrl;
                //row[0] = productid.Text;
                //row[1] = title.Text;
                //row[2] = price.Text;
                //while (Int32.Parse(quantity.Text) > Int32.Parse(instock.Text))
                //{
                //    quantitytobay.Visible = false;
                //}
                //row[3] = quantity.Text;
                //row[4] = Convert.ToDouble(row["quantity"]) * Convert.ToDouble(row["price"]);
                tbl.Rows.Add(row);
                Session["item"] = tbl;
                Response.Redirect("cartpage.aspx");
            }

            

        }

        protected void timing()
        {
            striditemNO = Request.QueryString["iditem"];
            SqlCommand cm2 = new SqlCommand(String.Format("select * from addproduct where id_product={0}", striditemNO), conn);
            //DataTable tbl = new DataTable();
            conn.Open();
            //tbl.Load(cmd.ExecuteReader());
            SqlDataReader ds = cm2.ExecuteReader();

            while (ds.Read())
            {
                //int days= dr["days"]

                DateTime startdate = Convert.ToDateTime(ds["start_date"]);
                DateTime enddate = Convert.ToDateTime(ds["start_date"]).AddDays(Convert.ToInt32(ds["days"]));
                //DateTime enddate = Convert.ToDateTime(ds["start_date"]).AddMinutes(2);
                //DateTime next = new DateTime(startdate);
                TimeSpan dt2 = enddate.Subtract(startdate);
                lblTimeLeft.Text = "timeis up in " + dt2.Days.ToString() + " days, "
                + dt2.Hours.ToString() + " hours, "
                + dt2.Minutes.ToString() + " minutes "
                + dt2.Seconds.ToString() + " seconds.";
                Session["timer"] = enddate;
                //Session["timer"] = endtime;
            }
            conn.Close();
            //DateTime today = DateTime.Now;
            //DateTime endtime = today.AddDays(30);

            /*DateTime next = new DateTime(2021, 03, 2, 15, 10, 0);
            TimeSpan dt2 = next.Subtract(DateTime.Now);
            lblTimeLeft.Text = "timeis up in " + dt2.Days.ToString() + " days, "
            + dt2.Hours.ToString() + " hours, "
            + dt2.Minutes.ToString() + " minutes "
            + dt2.Seconds.ToString() + " seconds.";
            Session["timer"] = next;*/
            //Session["timer"] = endtime;
        }
        private DateTime GetStartTime()
        {
            DateTime today = DateTime.Now;
            return today;
        }
        private DateTime GetEndTime()
        {
            DateTime next = new DateTime(2021, 04, 15, 15, 10, 0);
            return next;
        }
        private System.Windows.Forms.Timer Timert;
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            DateTime checking = Convert.ToDateTime(Session["timer"]);
            TimeSpan dt2 = checking.Subtract(DateTime.Now);
            //hourss.Text = dt2.Seconds.ToString();
            Timert = new System.Windows.Forms.Timer();
            if (dt2.Seconds <= 0 && dt2.Minutes <= 0 && dt2.Hours <= 0 && dt2.Days <= 0)
            {
                Timer1.Enabled = false;
                lblTimeLeft.Text = "Finish";
            }
            else
            {
                lblTimeLeft.Text = "timeis up in " + dt2.Days.ToString() + " days, "
                + dt2.Hours.ToString() + " hours, "
                + dt2.Minutes.ToString() + " minutes "
                + dt2.Seconds.ToString() + " seconds.";
                //times.Text = DateTime.Now.ToString();
            }
        }

        protected void placebid_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
            //striditemNO = Request.QueryString["iditem"];
            //SqlCommand select = new SqlCommand("insert into [BidsInAuctions](id_product,userID) " + "values('" + title.Text + "','" + description.Text + "','" + category.Text + "','" + Format.Text + "','" + enddays + "','" + order_price.Text + "','" + order_price.Text + "',getdate(),'" + qunt + "','" + shipwith.Text + "','" + product_weight.Text + "','" + local_p + "','" + inter_p + "','" + image1_u + "','" + image2_u + "','" + image3_u + "','" + image4_u + "','" + image5_u + "','" + PayPal_c + "','" + Credit_c + "','" + Loacation.Text + "','" + itemhtml.Text + "','" + "osama" + "')", con);
            //SqlCommand select = new SqlCommand("insert into [addproduct](product_title,description_product,category,Format,days,order_price,last_price,start_date,Quantity,shipwith,wight,local_shipping_price,inter_shipping_price,image1,image2,image3,image4,image5,PayPal,credit,loacation,htmldes,userid) " + "values('" + title.Text + "','" + description.Text + "','" + category.Text + "','" + Format.Text + "','" + enddays + "','" + order_price.Text + "','" + order_price.Text + "',getdate(),'" + qunt + "','" + shipwith.Text + "','" + product_weight.Text + "','" + local_p + "','" + inter_p + "','" + image1_u + "','" + image2_u + "','" + image3_u + "','" + image4_u + "','" + image5_u + "','" + PayPal_c + "','" + Credit_c + "','" + Loacation.Text + "','" + itemhtml.Text + "','" + "osama" + "')", con);

            //string str = string.empty;
            //str = convert.tostring(ession["name"]);
            //string str = Session["username"].ToString();
            //Label10.Text = str;

            //HttpCookie cookie = HttpContext.Current.Request.Cookies["login"];
            //string str = cookie["username"].ToString();
            //Label10.Text = str;

            //HttpCookie aCookie = Request.Cookies["login"];
            errmsg.Visible = true;
            int lastprice = Int32.Parse(txtplacebid.Text);
            int lastpricefromdata=-1;
            striditemNO = Request.QueryString["iditem"];
            SqlCommand cm2 = new SqlCommand(String.Format("select * from addproduct where id_product={0}", striditemNO), conn);

            conn.Open();
            SqlDataReader ds = cm2.ExecuteReader();
            while (ds.Read())
            {
                lastpricefromdata = Convert.ToInt32(ds["last_price"]);
            }
            conn.Close();

            string user = Utility.ReadFromCookie("login", "username", Request);
            string userID = Utility.ReadFromCookie("login", "userID", Request);
            //Label10.Text = user;

            if (lastpricefromdata < lastprice && lastpricefromdata != -1 && user != null)
            {
                conn.Open();
                SqlCommand select = new SqlCommand("insert into [BidsInAuctions](id_product,userID,username,price,bid_time) " + "values('" + striditemNO + "','" + Convert.ToInt32(userID) + "','" + user + "','" + lastprice + "',getdate())", conn);
                
                int t = select.ExecuteNonQuery();
                if (t > 0)
                {
                    errmsg.Visible = false;
                    SqlCommand cmd = new SqlCommand("update addproduct set last_price='"+lastprice+ "' WHERE id_product="+ striditemNO + "", conn);
                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("<script>alert('price add succsess')</script>");
                        Response.Redirect(Request.RawUrl);
                    }
                    else
                    {
                        Response.Write("<script>alert('price add failed')</script>");

                    }
                }
                conn.Close();
            }
            else if (user == null)
            {
                errmsg.Text = "you need to Login";
                errmsg.Visible = true;
            }
            else if (lastprice <= 0)
            {
                errmsg.Text = "the offer shouldn't to be less than 0";
                errmsg.Visible = true;
            }
            else if(lastprice< lastpricefromdata)
            {
                errmsg.Text = "your Offer is smaller than the last price";
                errmsg.Visible = true;
            }
            
            







            //try
            //{
            //    con.Open();
            //    MySqlCommand cmd = new MySqlCommand("update student Set  Name = @Name, Address = @Address, Mobile = @Mobile, Email = @Email where SID = @SID", conn); 
            //}


            //SqlCommand cm2 = new SqlCommand(String.Format("select * from BidsInAuctions where id_product={0}", striditemNO), conn);
            //SqlDataReader ds = cm2.ExecuteReader();
            //while(ds.Read())
            //{

            //}
        }
    }
}