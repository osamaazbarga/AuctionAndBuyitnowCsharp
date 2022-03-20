<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="saleman.administrator.users" MasterPageFile="~/administrator/adminmasterpage.Master" %>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <!DOCTYPE html>



<body>
    <form id="form1">
        <%--<div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="id_product" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    id_product:
                    <asp:Label ID="id_productLabel1" runat="server" Text='<%# Eval("id_product") %>' />
                    <br />
                    product_title:
                    <asp:TextBox ID="product_titleTextBox" runat="server" Text='<%# Bind("product_title") %>' />
                    <br />
                    category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />
                    Format:
                    <asp:TextBox ID="FormatTextBox" runat="server" Text='<%# Bind("Format") %>' />
                    <br />
                    order_price:
                    <asp:TextBox ID="order_priceTextBox" runat="server" Text='<%# Bind("order_price") %>' />
                    <br />
                    image1:
                    <asp:TextBox ID="image1TextBox" runat="server" Text='<%# Bind("image1") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    product_title:
                    <asp:TextBox ID="product_titleTextBox" runat="server" Text='<%# Bind("product_title") %>' />
                    <br />
                    category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />
                    Format:
                    <asp:TextBox ID="FormatTextBox" runat="server" Text='<%# Bind("Format") %>' />
                    <br />
                    order_price:
                    <asp:TextBox ID="order_priceTextBox" runat="server" Text='<%# Bind("order_price") %>' />
                    <br />
                    image1:
                    <asp:TextBox ID="image1TextBox" runat="server" Text='<%# Bind("image1") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id_product:
                    <asp:Label ID="id_productLabel" runat="server" Text='<%# Eval("id_product") %>' />
                    <br />
                    product_title:
                    <asp:Label ID="product_titleLabel" runat="server" Text='<%# Bind("product_title") %>' />
                    <br />
                    category:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Bind("category") %>' />
                    <br />
                    Format:
                    <asp:Label ID="FormatLabel" runat="server" Text='<%# Bind("Format") %>' />
                    <br />
                    order_price:
                    <asp:Label ID="order_priceLabel" runat="server" Text='<%# Bind("order_price") %>' />
                    <br />
                    image1:
                    <asp:Label ID="image1Label" runat="server" Text='<%# Bind("image1") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" DeleteCommand="DELETE FROM [addproduct] WHERE [id_product] = @id_product" InsertCommand="INSERT INTO [addproduct] ([product_title], [category], [Format], [order_price], [image1], [Quantity]) VALUES (@product_title, @category, @Format, @order_price, @image1, @Quantity)" SelectCommand="SELECT [id_product], [product_title], [category], [Format], [order_price], [image1], [Quantity] FROM [addproduct] ORDER BY [start_date] DESC, [id_product], [userid]" UpdateCommand="UPDATE [addproduct] SET [product_title] = @product_title, [category] = @category, [Format] = @Format, [order_price] = @order_price, [image1] = @image1, [Quantity] = @Quantity WHERE [id_product] = @id_product">
                <DeleteParameters>
                    <asp:Parameter Name="id_product" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="product_title" Type="String" />
                    <asp:Parameter Name="category" Type="Int32" />
                    <asp:Parameter Name="Format" Type="String" />
                    <asp:Parameter Name="order_price" Type="Double" />
                    <asp:Parameter Name="image1" Type="String" />
                    <asp:Parameter Name="Quantity" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="product_title" Type="String" />
                    <asp:Parameter Name="category" Type="Int32" />
                    <asp:Parameter Name="Format" Type="String" />
                    <asp:Parameter Name="order_price" Type="Double" />
                    <asp:Parameter Name="image1" Type="String" />
                    <asp:Parameter Name="Quantity" Type="String" />
                    <asp:Parameter Name="id_product" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>--%>
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table align="center" class="auto-style1">
                        <tr>
                            <td class="auto-style3"><strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Users Srearch"></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Search By :"></asp:Label>
                                <asp:RadioButtonList ID="rdoField" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="userID">UserID</asp:ListItem>
                                    <asp:ListItem Value="username" Selected="True">Username</asp:ListItem>
                                    <asp:ListItem Value="email">Email</asp:ListItem>
                                    <asp:ListItem Value="firstname">First Name</asp:ListItem>
                                    <asp:ListItem Value="lastname">Last Name</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label runat="server" Text="Value To Search :"></asp:Label>
                                &nbsp;<asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                                &nbsp;<asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Button ID="btnRemove" runat="server" Enabled="False" Text="Remove Selected User" OnClick="btnRemove_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td><strong>
                                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                    <ProgressTemplate>
                                        <asp:Image ID="Image1" runat="server" Height="101px" ImageUrl="~/picture/DearWellinformedDalmatian-size_restricted.gif" Width="140px" />
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="auto-style3">
                                    <asp:GridView ID="grdusers" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="grdusers_SelectedIndexChanged">
                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="&gt;&gt;&gt;" />
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                </div>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                        <br />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>

    </form>
</body>
</html>
</asp:Content>