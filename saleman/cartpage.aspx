<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cartpage.aspx.cs" Inherits="saleman.addtocardpage" EnableEventValidation="false" MasterPageFile="~/secondarymasterpage.Master" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <!DOCTYPE html>

<html>

<body>
    <form id="form1">
        <style type="text/css">
        .auto-style2 {
            width: 162px;
            text-align: center;
        }
        .auto-style3 {
            width: 162px;
            text-align: right;
        }
    </style>
        <div>
            <br />
            <table align="center">
                <tr>
                    <td class="auto-style2">
            <asp:GridView ID="grvcart" runat="server" AutoGenerateColumns="False" Font-Size="X-Large" Height="193px" ShowFooter="True" Width="905px" OnRowDeleting="grvcart_RowDeleting" OnRowEditing="grvcart_RowEditing" OnRowCancelingEdit="grvcart_RowCancelingEdit" OnRowUpdating="grvcart_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="Product ID" ReadOnly="True" />
                    <asp:BoundField DataField="Productname" HeaderText="Product name" ReadOnly="True" />
                    <asp:BoundField DataField="price" HeaderText="Price" ReadOnly="True" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="subtotal" HeaderText="Total Price" ReadOnly="True" />
                    <asp:TemplateField HeaderText="Product Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="80px" Width="80px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" DeleteText="Remove" HeaderText="Control" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <EmptyDataTemplate>
                    The Shoppimg Cart Is Empty.<br /> To Shop :<a href="index.aspx">click here</a>
                </EmptyDataTemplate>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>
                        <asp:Label runat="server" Text="Total : "></asp:Label>
                        <asp:Label ID="total" runat="server" Text="0"></asp:Label> &#8362;
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Checkout" runat="server" PostBackUrl="~/checkout.aspx" Text="Checkout" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </div>
    </form>
</body>
</html>

    </asp:Content>
