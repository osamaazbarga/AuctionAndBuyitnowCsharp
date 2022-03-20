using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data.Common;
using saleman.App_Start;
using System.Web.Mvc;
using System.Runtime.CompilerServices;




namespace saleman
{
    public partial class checkout : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
        SqlCommand cmd = new SqlCommand();

        protected void FillGrid()
        {
            grvcart.DataSource = (DataTable)Session["item"];
            //grvcart.EditIndex = -1;
            grvcart.DataBind();
            double sum = 0;
            for (int x = 0; x < grvcart.Rows.Count; x++)
            {
                sum += Convert.ToDouble(grvcart.Rows[x].Cells[4].Text);
            }
            total.Text = sum.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                FillGrid();

            if (Request.Cookies["Login"] == null)
            {
                Response.Redirect("loginpage.aspx");
            }
            else
            {
                //Wizard1.ActiveStepIndex = 1;
            }
            if (Session["item"] == null)
            {
                Response.Redirect("cartpage.aspx");
            }
        }


        protected void grvcart_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grvcart.EditIndex = e.NewEditIndex;
            FillGrid();
        }

        DataTable tbl = new DataTable();
        DataRow row;
        protected void FindRow(int rownum)
        {
            tbl = (DataTable)Session["item"];
            object[] PK = { tbl.Rows[rownum][0] };
            row = tbl.Rows.Find(PK);
        }

        protected void RemoveRow(int rownum)
        {
            FindRow(rownum);
            row.Delete();
            Session["item"] = tbl;
            grvcart.EditIndex = -1;
            FillGrid();
        }
        protected void grvcart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            RemoveRow(e.RowIndex);
        }

        protected void grvcart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvcart.EditIndex = -1;
            FillGrid();
        }


        protected void grvcart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //DataTable tbl;
            //if (Session["item"] != null)
            //{
            //    tbl = (DataTable)Session["item"];
            //    string[] PK = { grvcart.Rows[e.RowIndex].Cells[0].Text, grvcart.Rows[e.RowIndex].Cells[1].Text };
            //    tbl.Rows.Find();
            //}

            TextBox txtqty = (TextBox)grvcart.Rows[e.RowIndex].Cells[3].Controls[0];
            double qty = Convert.ToDouble(txtqty.Text);
            if (qty < 1) RemoveRow(e.RowIndex);
            else
            {
                FindRow(e.RowIndex);
                row["quantity"] = qty;
                row["subtotal"] = qty * Convert.ToDouble(row["price"]);
                grvcart.EditIndex = -1;
                Session["item"] = tbl;
            }
            FillGrid();
        }
        protected int checkAddress()
        {
            if (txtfullname == null || txtphone == null || txtstate == null || txtaddr1 == null || txtzip == null || txtcity == null)
            {
                return 0;
            }
            return 1;
        }

        protected int checkCredit()
        {
            if (TextBox5 == null || TextBox6 == null || TextBox7 == null || TextBox8 == null)
            {
                return 0;
            }
            return 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string userIDFromCook = Utility.ReadFromCookie("login", "userID", Request);

            //if (checkAddress() == 0 && checkCredit() == 0)
            {
                //update the number of the stock
                //Label31.Text = grvcart.Rows[0].Cells[1].Text;
                for (int x = 0; x < grvcart.Rows.Count; x++)
                {
                    //sum += Convert.ToDouble(grvcart.Rows[x].Cells[4].Text);
                    conn.Open();
                    //Label31.Text = grvcart.Rows[x].Cells[0].Text;
                    //SqlCommand cmd = new SqlCommand("update addproduct set Quantity='" + 0 + "' WHERE userID=" + Convert.ToInt32(grdusers.SelectedRow.Cells[1].Text) + "", conn);
                    SqlCommand cmd = new SqlCommand("update addproduct set Quantity=Quantity-'" + Convert.ToInt32(grvcart.Rows[x].Cells[3].Text) + "' WHERE id_product=" + Convert.ToInt32(grvcart.Rows[x].Cells[0].Text) + "", conn);

                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {

                    }


                    conn.Close();

                    //save the order
                    SqlCommand cmd1 = new SqlCommand(String.Format("select * from addproduct where id_product={0}", Convert.ToInt32(grvcart.Rows[x].Cells[0].Text)), conn);
                    string userproduct = null;
                    int qunantityavalible = 0;
                    //DataTable tbl = new DataTable();
                    conn.Open();
                    //tbl.Load(cmd.ExecuteReader());
                    SqlDataReader dr = cmd1.ExecuteReader();

                    while (dr.Read())
                    {
                        
                        userproduct = dr["userid"].ToString();

                        
                    }
                    
                    conn.Close();

                    conn.Open();
                    SqlCommand select = new SqlCommand("insert into [orders](productID,totalPrice,amount,sellerID,buyerID,fullname,address1,address2,phone,city,state,zip,country,status) values('" + Convert.ToInt32(grvcart.Rows[x].Cells[0].Text) + "','" + Convert.ToInt32(grvcart.Rows[x].Cells[4].Text) + "','" + Convert.ToInt32(grvcart.Rows[x].Cells[3].Text) + "','" + Convert.ToInt32(userproduct) + "','" + Convert.ToInt32(userIDFromCook) + "','" + txtfullname.Text + "','" + txtaddr1.Text + "','" + txtaddr2.Text + "','" + txtphone.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtzip.Text + "','" + ddlcountry.Text + "','" + "Waiting For Shipping" + "');", conn);
                    int t = select.ExecuteNonQuery();
                    if (t > 0)
                    {
                        
                    }
                    conn.Close();


                    //check if the stock under the 1 and update the status

                    if (qunantityavalible < 1)
                    {
                        conn.Open();
                        //Label31.Text = grvcart.Rows[x].Cells[0].Text;
                        //SqlCommand cmd = new SqlCommand("update addproduct set Quantity='" + 0 + "' WHERE userID=" + Convert.ToInt32(grdusers.SelectedRow.Cells[1].Text) + "", conn);
                        SqlCommand cmdq = new SqlCommand("update addproduct set status='" + "out of the stock" + "' WHERE id_product=" + Convert.ToInt32(grvcart.Rows[x].Cells[0].Text) + "", conn);

                        int j = cmdq.ExecuteNonQuery();
                        if (j > 0)
                        {

                        }


                        conn.Close();
                    }

                    

                }



                
            }
            Session["item"] = null;
            Response.Redirect("index.aspx");
        }
    }
}