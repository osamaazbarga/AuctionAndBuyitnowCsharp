<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="saleman.dashboard.index" MasterPageFile="~/secondarymasterpage.Master" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
<!DOCTYPE html>

<html>
<head>
    <title></title>
    <style type="text/css">
        /* The side navigation menu */
        .hellotags{
            text-align:center;
            margin:0 auto;
        }
        .upperspace{
            background-color: #f1f1f1;
            height:30px;
            width:100%;
            margin: 0;
            padding: 0;
        }
        .sidebar {
          margin: 0;
          padding: 0;
          width: 200px;
          background-color: #f1f1f1;
          position:absolute;
          height: 100%;
          overflow: auto;
        }

        /* Sidebar links */
        .sidebar a {
          display: block;
          color: black;
          padding: 16px;
          text-decoration: none;
        }

        /* Active/current link */
        .sidebar a.active {
          background-color: #AD48FD;
          color: white;
        }

        /* Links on mouse-over */
        .sidebar a:hover:not(.active) {
          background-color: #555;
          color: white;
        }

        /* Page content. The value of the margin-left property should match the value of the sidebar's width property */
        div.content {
          margin-left: 200px;
          padding: 1px 16px;
          height: 1000px;
        }

        /* On screens that are less than 700px wide, make the sidebar into a topbar */
        @media screen and (max-width: 700px) {
          .sidebar {
            width: 100%;
            height: auto;
            position: relative;
          }
          .sidebar a {float: left;}
          div.content {margin-left: 0;}
        }

        /* On screens that are less than 400px, display the bar vertically, instead of horizontally */
        @media screen and (max-width: 400px) {
          .sidebar a {
            text-align: center;
            float: none;
          }

}
    </style>
</head>
<body>
    <form id="form1">
        <div class="upperspace"></div>
        <div class="sidebar">
          <a class="active" href="index.aspx">Index</a>
          <a href="myproducts.aspx">My Products</a>
          <a href="myorders.aspx">My Orders</a>
        </div>

        <!-- Page content -->
        <div class="content">
          <div class="hellotags">
              <h1>HELLO <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>,</h1>
              <h1>WELCOME TO YOUR PROFILE</h1>
          </div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_product" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id_product" HeaderText="id_product" ReadOnly="True" InsertVisible="False" SortExpression="id_product"></asp:BoundField>
                    <asp:BoundField DataField="product_title" HeaderText="product_title" SortExpression="product_title"></asp:BoundField>
                    <asp:BoundField DataField="description_product" HeaderText="description_product" SortExpression="description_product"></asp:BoundField>
                    <asp:BoundField DataField="Format" HeaderText="Format" SortExpression="Format"></asp:BoundField>
                    <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid"></asp:BoundField>
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                    <asp:BoundField DataField="order_price" HeaderText="order_price" SortExpression="order_price" />
                    <asp:BoundField DataField="days" HeaderText="days" SortExpression="days" />
                    <asp:BoundField DataField="last_price" HeaderText="last_price" SortExpression="last_price" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Project %>' SelectCommand="SELECT [id_product], [product_title], [description_product], [Format], [userid], [status], [order_price], [days], [last_price] FROM [addproduct] WHERE ([userid] = @userid)">
                <SelectParameters>
                    <asp:CookieParameter CookieName="login" DefaultValue="userID" Name="userid" Type="String"></asp:CookieParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
</asp:Content>