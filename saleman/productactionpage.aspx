<%@ Page Language="C#" AutoEventWireup="true" CodeFile="productactionpage.aspx.cs" Inherits="saleman.productactionpage" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 295px;
        }
        .auto-style3 {
            width: 117px;
            text-align: center;
            height: 20px;
        }
        .auto-style4 {
            width: 117px;
            text-align: center;
            height: 27px;
        }
        .auto-style5 {
            height: 27px;
            width: 186px;
        }
        .auto-style6 {
            width: 316%;
        }
        .auto-style10 {
            height: 23px;
            width: 186px;
        }
        .auto-style15 {
            width: 100%;
            height: 119px;
        }
        .auto-style16 {
            width: 26px;
            height: 18px;
        }
        .auto-style17 {
            width: 44px;
            height: 20px;
        }
        .auto-style20 {
            height: 20px;
            width: 186px;
        }
        .auto-style21 {
            width: 186px;
        }
        .auto-style22 {
            width: 163px;
        }
        .auto-style23 {
            width: 163px;
            height: 14px;
        }
        .auto-style26 {
            height: 23px;
            width: 117px;
        }
        .auto-style27 {
            width: 117px;
        }
        .auto-style28 {
            width: 117px;
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
            <asp:DataList ID="productList" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style28">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("userid") %>'></asp:Label>
                            </td>
                            <td class="auto-style20">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("product_title") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("id_product") %>'></asp:Label>
                            </td>
                            <td class="auto-style21">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("description_product") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Image ID="Image1" runat="server" />
                                <br />
                                <br />
                                <br />
                                <asp:Image ID="Image2" runat="server" />
                                &nbsp;&nbsp;
                                <asp:Image ID="Image3" runat="server" />
                                &nbsp;&nbsp;
                                <asp:Image ID="Image4" runat="server" />
                                &nbsp;&nbsp;
                                <asp:Image ID="Image5" runat="server" />
                            </td>
                            <td class="auto-style5">
                                <table class="auto-style6">
                                    <tr>
                                        <td class="auto-style22">
                                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">Price:
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("order_price") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            &nbsp;
                                            <asp:Button ID="Placebid" runat="server" Text="Place bid" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">
                                            <asp:Button ID="Button2" runat="server" Text="Add to card" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">time left :
                                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                                            </asp:ScriptManager>
                                            <asp:Timer ID="Timertest" runat="server" Interval="1000">
                                            </asp:Timer>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="Timertest" EventName="tick" />

                                                </Triggers>

                                            </asp:UpdatePanel>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">Shipping With:<asp:Label ID="Label7" runat="server" Text='<%# Eval("shipwith") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style23">Local Shipping Price:
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("local_shipping_price") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">International Shipping Price:
                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("inter_shipping_price") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3"></td>
                            <td class="auto-style20">loacation:
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("loacation") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style26"></td>
                            <td class="auto-style10">wieght:
                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("wight") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">&nbsp;</td>
                            <td class="auto-style21">Payment:<img alt="" class="auto-style16" src="picture/Logo-PayPal-transparent-PNG.png" /><img alt="" class="auto-style17" src="picture/png-clipart-visa-and-master-cards-mastercard-money-foothills-florist-business-visa-visa-mastercard-text-service.png" /></td>
                        </tr>
                    </table>
                    <br />
                    <table class="auto-style15">
                        <tr>
                            <td>
                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("htmldes") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT [id_product], [product_title], [description_product], [category], [Format], [days], [order_price], [shipwith], [wight], [local_shipping_price], [inter_shipping_price], [image1], [image2], [image3], [image4], [image5], [start_date], [enddate], [end_date], [PayPal], [credit], [loacation], [htmldes], [userid] FROM [addproduct]">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
