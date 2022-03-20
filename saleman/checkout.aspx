<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="saleman.checkout" MasterPageFile="~/secondarymasterpage.Master" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">




    <title></title>
    <style type="text/css">
        /*.auto-style1 {
            width: 100%;
        }*/
        /*.auto-style2 {
            height: 174px;
        }*/
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            text-align: left;
        }
        /*.auto-style5 {
            height: 128px;
        }
        .auto-style6 {
            height: 39px;
        }
        .auto-style7 {
            height: 29px;
        }
        .auto-style8 {
            height: 33px;
        }*/
    </style>

<body>
    <form id="form1">
        <center>
            <table class="auto-style1">
                <tr>
                    <td>
                        <table align="center">
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="Label1" runat="server" Font-Names="Cooper Black" Font-Size="XX-Large" Text="Delivery Address"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Full name:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtfullname" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Address"></asp:Label>
                                    :</td>
                                <td>
                                    <asp:TextBox ID="txtaddr1" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:TextBox ID="txtaddr2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Phone number:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="City:"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="State:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="ZIP Code:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtzip" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Country/Region:"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlcountry" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Iso">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" SelectCommand="SELECT [Iso], [Name] FROM [Country]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table align="center">
                            <tr>
                                <td class="auto-style2">
                                    <asp:GridView ID="grvcart" runat="server" AutoGenerateColumns="False" Font-Size="X-Large" Height="193px" OnRowCancelingEdit="grvcart_RowCancelingEdit" OnRowDeleting="grvcart_RowDeleting" OnRowEditing="grvcart_RowEditing" OnRowUpdating="grvcart_RowUpdating" ShowFooter="True" Width="905px">
                                        <Columns>
                                            <asp:BoundField DataField="ProductID" HeaderText="Product ID" ReadOnly="True" />
                                            <asp:BoundField DataField="Productname" HeaderText="Product name" ReadOnly="True" />
                                            <asp:BoundField DataField="price" HeaderText="Price" ReadOnly="True" />
                                            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                                            <asp:BoundField DataField="subtotal" HeaderText="Total Price" ReadOnly="True" />
                                            <asp:TemplateField HeaderText="Product Image">
                                                <ItemTemplate>
                                                    <asp:Image ID="Image2" runat="server" Height="80px" Width="80px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <%--<asp:CommandField ButtonType="Button" DeleteText="Remove" HeaderText="Control" ShowDeleteButton="True" ShowEditButton="True" />--%>
                                        </Columns>
                                        <EmptyDataTemplate>
                                            The Shoppimg Cart Is Empty.<br /> To Shop :<a href="index.aspx">click here</a>
                                        </EmptyDataTemplate>
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>
                                    <asp:Label ID="Label25" runat="server" Text="Total : "></asp:Label>
                                    <asp:Label ID="total" runat="server" Text="0"></asp:Label> &#8362;
                                    </strong></td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <table align="center">
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="Label26" runat="server" Font-Names="Cooper Black" Font-Size="XX-Large" Text="Payment"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="Label27" runat="server" Font-Bold="True" Text="Name On Card:"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                                    <asp:Label ID="Label28" runat="server" Font-Bold="True" Text="Card Type:"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem>Visa</asp:ListItem>
                                        <asp:ListItem>Master Card</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label29" runat="server" Font-Bold="True" Text="Card Number:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="Label30" runat="server" Font-Bold="True" Text="Expires:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="TextBox7" runat="server" Width="23px"></asp:TextBox>
                                    /<asp:TextBox ID="TextBox8" runat="server" Width="32px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style4"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="confirm" />
&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="cancel" />
                    </td>
                </tr>
                </table>
        </center>
    </form>
</body>


    </asp:Content>
