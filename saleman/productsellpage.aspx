<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productsellpage.aspx.cs" Inherits="saleman.productsellpage" MasterPageFile="secondarymasterpage.Master" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <!DOCTYPE html>

<html>
<%--<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 295px;
        }
        .auto-style3 {
            width: 249px;
            text-align: center;
            height: 20px;
        }
        .auto-style4 {
            width: 249px;
            text-align: center;
            height: 27px;
        }
        .auto-style5 {
            height: 27px;
            width: 186px;
        }
        .auto-style6 {
            width: 193%;
        }
        .auto-style7 {
            margin-right: 5px;
        }
        .auto-style8 {
            width: 249px;
            height: 23px;
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
        .auto-style18 {
            width: 249px;
        }
        .auto-style19 {
            width: 249px;
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
            height: 20px;
        }
        .auto-style23 {
            width: 249px;
            height: 28px;
        }
        .auto-style24 {
            width: 186px;
            height: 28px;
        }
    </style>
</head>--%><%--<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 295px;
        }
        .auto-style3 {
            width: 249px;
            text-align: center;
            height: 20px;
        }
        .auto-style4 {
            width: 249px;
            text-align: center;
            height: 27px;
        }
        .auto-style5 {
            height: 27px;
            width: 186px;
        }
        .auto-style6 {
            width: 193%;
        }
        .auto-style7 {
            margin-right: 5px;
        }
        .auto-style8 {
            width: 249px;
            height: 23px;
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
        .auto-style18 {
            width: 249px;
        }
        .auto-style19 {
            width: 249px;
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
            height: 20px;
        }
        .auto-style23 {
            width: 249px;
            height: 28px;
        }
        .auto-style24 {
            width: 186px;
            height: 28px;
        }
    </style>
</head>--%>
<body>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            height: 295px;
        }
        .auto-style3 {
            width: 249px;
            text-align: center;
            height: 20px;
        }
        .auto-style4 {
            width: 249px;
            text-align: center;
            height: 27px;
        }
        .auto-style5 {
            height: 27px;
            width: 186px;
        }
        .auto-style6 {
            width: 193%;
        }
        .auto-style8 {
            width: 249px;
            height: 23px;
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
        .auto-style18 {
            width: 249px;
        }
        .auto-style19 {
            width: 249px;
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
            height: 20px;
        }
        .auto-style23 {
            width: 249px;
            height: 28px;
        }
        .auto-style24 {
            width: 186px;
            height: 28px;
        }
        .center-page{
            margin:0 auto;
        }
        .auto-style25 {
            height: 26px;
        }
        .auto-style26 {
            width: 100%;
            margin-top: 0px;
        }
        .auto-style27 {
            width: 100%;
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style28 {
            width: 33%;
        }
        .auto-style29 {
            font-size: xx-large;
        }
    </style>
    
    <form id="form1">
        <center class="container">
            
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style19">
                                <asp:Label ID="username" runat="server" Text='<%# Eval("userid") %>'></asp:Label>
                            </td>
                            <td class="auto-style20">
                                <strong>
                                <asp:Label ID="title" runat="server" Text='<%# Eval("product_title") %>' CssClass="auto-style29"></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                                <asp:Label ID="productid" runat="server" Text='<%# Eval("id_product") %>'></asp:Label>
                            </td>
                            <td class="auto-style21">
                                <asp:Label ID="desc" runat="server" Text='<%# Eval("description_product") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Image ID="Image1" runat="server" Height="224px" Width="236px" />
                                <br />
                                <br />
                                <br />
                                <%--<asp:Image ID="Image2" runat="server" />
                                &nbsp;&nbsp;
                                <asp:Image ID="Image3" runat="server" />
                                &nbsp;&nbsp;
                                <asp:Image ID="Image4" runat="server" />
                                &nbsp;&nbsp;
                                <asp:Image ID="Image5" runat="server" />--%>
                            </td>
                            <td class="auto-style5">
                                <table class="auto-style6">
                                    <tr>
                                        <td class="auto-style22">
                                            <div>
                                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                <asp:Timer ID="Timer1" Interval="1000" runat="server" OnTick="Timer1_Tick"></asp:Timer>
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                                    <Triggers>
                                                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                                    </Triggers>
                                                    <ContentTemplate>

                                                    <asp:Label ID="lblTimeLeft" runat="server" Text="Label"></asp:Label>
                                                            <br />
                                                    <!--<asp:Label ID="hourss" runat="server" Text="Label"></asp:Label>
                                                    <br />
                                                    <asp:Label ID="times" runat="server" Text="Label"></asp:Label>-->
                                                        </ContentTemplate>

                                                </asp:UpdatePanel>
                                            </div>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22 buyitnow">
                                            <strong>
                                            <asp:Label ID="price" runat="server" Text="Price :"></asp:Label>
                                            </strong>
                                            <asp:Label ID="order_price" runat="server" Text='<%# Eval("order_price") %>'></asp:Label> &#8362;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22 buyitnow">
                                            <strong>
                                            <asp:Label ID="lastprice" runat="server" Text="Last Price :"></asp:Label>
                                            </strong>
                                            <asp:Label ID="last_price" runat="server" Text='<%# Eval("last_price") %>'></asp:Label>
                                            &#8362;
                                         </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22 buyitnow">
                                     <strong>
                                        <asp:Label ID="quantitylbl" runat="server" Text="Quantity :"></asp:Label>

                                     </strong>
                                        <asp:TextBox ID="quantity" Text="1" runat="server" Height="17px" Width="41px" TextMode="Number"></asp:TextBox>
                                            
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        
                                        <td>
                                            <asp:TextBox CssClass="auction" ID="txtplacebid"  runat="server" TextMode="Number" ></asp:TextBox>
                                            
                                            
                                            <asp:Button CssClass="auction" ID="placebid" runat="server" Text="Place Bid" OnClick="placebid_Click"/>
                                            <asp:Button  ID="buyit" runat="server" CssClass="auto-style buyitnow" Text="Buy it now" Width="99px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style25">
                                            <asp:Button ID="addtocard" runat="server" Text="Add to card" OnClick="Button2_Click" />
                                            <br />
                                            <asp:Label ID="errmsg" runat="server" Text="Label" Font-Bold="True" ForeColor="red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <%--<td class="auto-style22">
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtplacebid" ErrorMessage="Allow only numeric value" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                        </td>--%>
                                    </tr>
                                    <tr>
                                        <td><strong>In stock:</strong>                        <asp:Label ID="instock" runat="server" CssClass="buyitnow" Text='<%# Eval("Quantity") %>'></asp:Label>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>Shipping With:</strong><asp:Label ID="shipwith" runat="server" Text='<%# Eval("shipwith") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>Local Shipping Price:</strong>
                                            <asp:Label ID="localship" runat="server" Text='<%# Eval("local_shipping_price") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>International Shipping Price:
                                            </strong>
                                            <asp:Label ID="intership" runat="server" Text='<%# Eval("inter_shipping_price") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3"></td>
                            <td class="auto-style20"><strong>loacation:</strong>
                                <asp:Label ID="loacation" runat="server" Text='<%# Eval("loacation") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8"></td>
                            <td class="auto-style10"><strong>wieght:</strong>
                                <asp:Label ID="wieght" runat="server" Text='<%# Eval("wight") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23"></td>
                            <td class="auto-style24"><strong>Payment:</strong><asp:Image id="paypal" runat="server" alt="" Visibile="True" class="auto-style16" ImageUrl="~/picture/Logo-PayPal-transparent-PNG.png" /><asp:Image id="credit" runat="server" alt="" Visibile="True" class="auto-style17" ImageUrl="~/picture/png-clipart-visa-and-master-cards-mastercard-money-foothills-florist-business-visa-visa-mastercard-text-service.png" /></td>
                            </tr>
                    </table>
                    <br />
                    <table class="auto-style15">
                        <tr>
                            <td>
                                <asp:Label ID="htmldesc" runat="server" Text='<%# Eval("htmldes") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT DISTINCT [username], [price], [bid_time] FROM [BidsInAuctions] WHERE ([id_product] = @id_product)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="productid" Name="id_product" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
               
        </center>
                            <div class="text-sm-center">
                                <asp:DataList ID="DataList1" runat="server" CssClass="auto-style26" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                                    <AlternatingItemStyle BackColor="#F7F7F7" />
                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                    <ItemTemplate>
                                        <br />
                                        <table class="auto-style27">
                                            <tr>
                                                <td>
                                                    <asp:Label class="auto-style28" ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label class="auto-style28" ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                                    ₪
                                                </td>
                                                <td>
                                                    <asp:Label class="auto-style28" ID="bid_timeLabel" runat="server" Text='<%# Eval("bid_time") %>' />
                                                </td>
                                            </tr>
                                        </table>
<br />
                                    </ItemTemplate>
                                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                </asp:DataList>
                            </div>
        <center class="container">
            
                    <br />
                            </td>
                        </tr>
                    </table>
               
        </center>
    </form>
</body>
</html>

    </asp:Content>
