<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myproducts.aspx.cs" Inherits="saleman.dashboard.myproducts" MasterPageFile="~/secondarymasterpage.Master" %>

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
          <a class="active" href="myproducts.aspx">My Products</a>
          <a href="myorders.aspx">My Orders</a>
        </div>

        <!-- Page content -->
        <div class="content">
          
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows">
                <Columns >
                    <asp:BoundField DataField="product_title" HeaderText="product_title" SortExpression="product_title"/>
                    <asp:BoundField DataField="Format" HeaderText="Format" SortExpression="Format" />
                    <asp:BoundField DataField="last_price" HeaderText="last_price" SortExpression="last_price" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="enddate" HeaderText="enddate" SortExpression="enddate" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT [product_title], [Format], [last_price], [Quantity], [enddate], [status] FROM [addproduct] WHERE ([userid] = @userid2)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="userid2" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
          
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
          
        </div>
    </form>
</body>
</html>
</asp:Content>
