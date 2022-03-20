<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="allproduct.aspx.cs" Inherits="saleman.allproduct" MasterPageFile="~/secondarymasterpage.Master" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <!DOCTYPE html>

<html>
<%--<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
    </head>--%>
<body>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            width: 100%;
        }
        .container{
            width:80%;
            margin:0 auto;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            font-size: x-large;
            color: #FF0000;
        }
    </style>
    <form id="form1">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT addproduct.id_product, addproduct.product_title, addproduct.Quantity, addproduct.description_product, addproduct.order_price, category.category_name, addproduct.image1, addproduct.Format, addproduct.loacation, addproduct.userid FROM addproduct INNER JOIN category ON addproduct.category = category.id_category ORDER BY addproduct.start_date DESC"></asp:SqlDataSource>
        <div class="container">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td rowspan="2">
                                <a href="productsellpage.aspx?iditem=<%# Eval("id_product") %>">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image1") %>' Width="250px"  Height="250px"/>
                                    </a>
                            </td>
                            <td>
                                <br />
                                <table class="auto-style2">
                                    <tr>
                                        <td><a href='productsellpage.aspx?iditem=<%# Eval("id_product") %>'>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_title") %>' CssClass="auto-style3"></asp:Label>
                                            </a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("description_product") %>' CssClass="auto-style4"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table>
                                                <tr>
                                                    <td class="auto-style1">
                                                        <strong>
                                                        <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text='<%# Eval("order_price") %>'></asp:Label>&#8362;
                                                        </strong>
                                                    </td>
                                                    <td class="auto-style1">
                                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("loacation")%>' CssClass="auto-style4"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-sm-center">
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Format") %>' CssClass="auto-style4"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <strong>
                                                        <%--<asp:Label ID="Label6" runat="server" CssClass="auto-style4" Text='<%# Eval("userid") %>'></asp:Label>--%>
                                                        </strong>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:DataList>
        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id_product" HeaderText="id_product" InsertVisible="False" ReadOnly="True" SortExpression="id_product" />
                <asp:BoundField DataField="product_title" HeaderText="product_title" SortExpression="product_title" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="description_product" HeaderText="description_product" SortExpression="description_product" />
                <asp:BoundField DataField="order_price" HeaderText="order_price" SortExpression="order_price" />
                <asp:BoundField DataField="category_name" HeaderText="category_name" SortExpression="category_name" />
                <asp:BoundField DataField="image1" HeaderText="image1" SortExpression="image1" />
                <asp:BoundField DataField="Format" HeaderText="Format" SortExpression="Format" />
                <asp:BoundField DataField="loacation" HeaderText="loacation" SortExpression="loacation" />
                <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
            </Columns>
            </asp:GridView>--%>
            <%--<asp:TemplateField HeaderText="pic" SortExpression="image1">
                    <ItemTemplate>
                        <a href="productsellpage.aspx?iditem=<%# Eval("id_product") %>">
                        <asp:Image ID="Image1" runat="server" AlternateText='<%# Eval("image1") %>' Height="93px" ImageUrl='<%# Eval("image1") %>' Width="91px" />
                        </a>
                    </ItemTemplate>
                    <ItemStyle Width="60px" />
                </asp:TemplateField>--%>
        </div>
        
    </form>
</body>
</html>
    </asp:Content>