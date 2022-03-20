using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace saleman
{
    public partial class allproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //string catgno = Request.QueryString["catgno"].ToString();
            //if (Request.QueryString["cat"] != null)
            //{


            //    SqlDataSource1.SelectCommand = "SELECT [id_product], [product_title], [Quantity], [description_product], [category], [order_price], [image1] FROM [addproduct] Where [category]=" + Request.QueryString["cat"].ToString();
            //}
            //else 
            //if (Request.QueryString["q"] != null)
            //{
            //    if (Request.QueryString["cat"] != "0")
            //    {
            //        SqlDataSource1.SelectCommand = String.Format("SELECT [id_product], [product_title], [Quantity], [description_product], [category], [order_price], [image1] FROM [addproduct] Where ([product_title] like '%{0}%' OR [description_product] like '%{0}' OR [id_product] like '%{0}') AND [category] like '%{1}'", Request.QueryString["q"].ToString(), Request.QueryString["cat"].ToString());

            //    }
            //    else SqlDataSource1.SelectCommand = String.Format("SELECT [id_product], [product_title], [Quantity], [description_product], [category], [order_price], [image1] FROM [addproduct] Where [product_title] like '%{0}%' OR [description_product] like '%{0}' OR [id_product] like '%{0}' OR [category] like '%{0}'", Request.QueryString["q"].ToString());
            //}


            if (Request.QueryString["q"] != null)
            {
                if (Request.QueryString["cat"] != "0")
                {
                    SqlDataSource1.SelectCommand = String.Format("SELECT addproduct.id_product, addproduct.product_title, addproduc" +
                        "t.Quantity, addproduct.description_product, addproduct.order_price, category.category_name, addproduct" +
                        ".image1, addproduct.Format, addproduct.loacation, addproduct.userid FROM addproduct INNER JOIN category O" +
                        "N addproduct.category = category.id_category Where (addproduct.product_title like '%{0}%' OR addproduct.descr" +
                        "iption_product like '%{0}' OR addproduct.id_product like '%{0}') AND addproduct.category like '%{1}'", Request.QueryString["q"].ToString(), Request.QueryString["cat"].ToString());

                }
                else SqlDataSource1.SelectCommand = String.Format("SELECT addproduct.id_product, addproduct.product_title, addproduc" +
                        "t.Quantity, addproduct.description_product, addproduct.order_price, category.category_name, addproduct" +
                        ".image1, addproduct.Format, addproduct.loacation, addproduct.userid FROM addproduct INNER JOIN category O" +
                        "N addproduct.category = category.id_category Where (addproduct.product_title like '%{0}%' OR addproduct.descr" +
                        "iption_product like '%{0}' OR addproduct.id_product like '%{0}')", Request.QueryString["q"].ToString());
            }


            //SELECT addproduct.id_product, addproduct.product_title, addproduct.Quantity, addproduct.description_product, addproduct.order_price, category.category_name, addproduct.image1, addproduct.Format, addproduct.loacation, addproduct.userid FROM addproduct INNER JOIN category ON addproduct.category = category.id_category
            //else
            //    SqlDataSource1.SelectCommand = "SELECT [id_product], [product_title], [Quantity], [description_product], [category], [order_price], [image1] FROM [addproduct]";

        }
    }
}