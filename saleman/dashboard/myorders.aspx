<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myorders.aspx.cs" Inherits="saleman.dashboard.myorders" MasterPageFile="~/secondarymasterpage.Master" %>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <!DOCTYPE html>

<html>
<head>
    <title></title>
    <style type="text/css">
        /* The side navigation menu */
        .mydatagrid
{
width: 80%;
border: solid 2px black;
min-width: 80%;
}
.header
{
background-color: #000;
font-family: Arial;
color: White;
height: 25px;
text-align: center;
font-size: 16px;
}

.rows
{
background-color: #fff;
font-family: Arial;
font-size: 14px;
color: #000;
min-height: 25px;
text-align: left;
}
.rows:hover
{
background-color: #5badff;
color: #fff;
}

.mydatagrid a /** FOR THE PAGING ICONS **/
{
background-color: Transparent;
padding: 5px 5px 5px 5px;
color: #fff;
text-decoration: none;
font-weight: bold;
}

.mydatagrid a:hover /** FOR THE PAGING ICONS HOVER STYLES**/
{
background-color: #000;
color: #fff;
}
.mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
{
background-color: #fff;
color: #000;
padding: 5px 5px 5px 5px;
}
.pager
{
background-color: #5badff;
font-family: Arial;
color: White;
height: 30px;
text-align: left;
}

.mydatagrid td
{
padding: 5px;
}
.mydatagrid th
{
padding: 5px;
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
          <a href="index.aspx">Index</a>
          <a href="myproducts.aspx">My Products</a>
          <a class="active" href="myorders.aspx">My Orders</a>
        </div>

        <!-- Page content -->
        <div class="content">
            <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="bidID" HeaderText="bidID" InsertVisible="False" ReadOnly="True" SortExpression="bidID" />
                    <asp:BoundField DataField="productID" HeaderText="productID" SortExpression="productID" />
                    <asp:BoundField DataField="totalPrice" HeaderText="totalPrice" SortExpression="totalPrice" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    <asp:BoundField DataField="trackingNum" HeaderText="trackingNum" SortExpression="trackingNum" />
                    <asp:BoundField DataField="sellerID" HeaderText="sellerID" SortExpression="sellerID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Project %>' SelectCommand="SELECT [bidID], [productID], [totalPrice], [amount], [status], [trackingNum], [sellerID] FROM [orders] WHERE ([buyerID] = @buyerID)">
                <SelectParameters>
                    <asp:CookieParameter CookieName="login" Name="buyerID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>--%>

            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows">
                <Columns>
                    <asp:BoundField DataField="productID" HeaderText="productID" SortExpression="productID" />
                    <asp:BoundField DataField="totalPrice" HeaderText="totalPrice" SortExpression="totalPrice" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT [productID], [totalPrice], [amount], [status] FROM [orders] WHERE ([buyerID] = @buyerID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="buyerID" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
</asp:Content>