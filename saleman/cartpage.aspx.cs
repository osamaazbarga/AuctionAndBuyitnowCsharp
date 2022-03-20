using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace saleman
{
    public partial class addtocardpage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
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
            Label1.Visible = false;
            if(!IsPostBack)
                FillGrid();
            if (Session["item"] == null)
                Checkout.Visible = false;
            else Checkout.Visible = true;
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
            object[] PK = { tbl.Rows[rownum][0]};
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
            int striditemNO;
            string qunt;
            if (qty < 1) RemoveRow(e.RowIndex);
            else
            {
                FindRow(e.RowIndex);
                striditemNO = Convert.ToInt32(grvcart.Rows[0].Cells[0].Text);
                SqlCommand cmd = new SqlCommand(String.Format("select * from addproduct where id_product={0}", striditemNO), conn);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    

                    qunt = dr["Quantity"].ToString();


                    if (qty>Convert.ToInt32(dr["Quantity"].ToString()))
                    {
                        Label1.Visible = true;
                        Label1.Text = "the Quantity bigger than the stock";
                    }
                    else
                    {
                        Label1.Visible = false;
                        row["quantity"] = qty;
                        row["subtotal"] = qty * Convert.ToDouble(row["price"]);
                        grvcart.EditIndex = -1;
                        Session["item"] = tbl;
                    }
                }
                conn.Close();

                
            }
            FillGrid();
        }
    }
}