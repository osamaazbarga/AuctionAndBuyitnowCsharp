<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="saleman.administrator.products" MasterPageFile="~/administrator/adminmasterpage.Master" %>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <!DOCTYPE html>

<html>

<body>
    <form id="form1">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <%--<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">--%>
                        <table align="center" class="auto-style1">
                        <tr>
                            <td class="auto-style2"><strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Search For Products" style="font-size: x-large"></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Search By :"></asp:Label>
                                <asp:RadioButtonList ID="rdoField" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="id_product">Product Number</asp:ListItem>
                                    <asp:ListItem Value="product_title">Title</asp:ListItem>
                                    <asp:ListItem Value="Format">Format</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label runat="server" Text="Value To Search :"></asp:Label>
                                &nbsp;<asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                                &nbsp;<asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click1" Text="Search" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Button ID="btnAdd" runat="server" Enabled="True" Text="Add New"/>
                                <asp:Button ID="btnUpdate" runat="server" Enabled="False" Text="Update" OnClick="btnUpdate_Click" />
                                <asp:Button ID="btnRemove" runat="server" Enabled="False" Text="Remove" OnClick="btnRemove_Click" />
                                
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
                    <%--</asp:View>
                    <asp:View ID="View2" runat="server">

                        <div class="auto-style1">
                            <table align="center" class="auto-style1">
                                <tr>
                                    <td class="auto-style2" colspan="3">
                                        <asp:Label ID="Label7" runat="server" Text="Add Category"></asp:Label>
                                    </td>
                                    <td class="auto-style2" rowspan="6">
                                        <asp:Image ID="img" runat="server" Height="182px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="category number"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtnocat" runat="server"></asp:TextBox>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="category title: "></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtcatname" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcatname" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label4" runat="server" Text="category description: "></asp:Label>
                                    </td>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td class="auto-style3"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label5" runat="server" Text="Image:"></asp:Label>
                                    </td>
                                    <td class="auto-style3">
                                        <asp:FileUpload ID="imgcatup" runat="server" />
                                    </td>
                                    <td class="auto-style3"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbleditmsg" runat="server" ForeColor="#FF3300"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                        <asp:Button ID="Button3" runat="server" OnClick="Button1_Click" OnCommand="Button1_Click" Text="Button" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Button ID="savecat" runat="server" OnClick="savecat_Click" OnCommand="savecat_Click" Text="save" />
                                        <asp:Button ID="Button2" runat="server" OnClick="Unnamed1_Click" Text="cancel" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4">&nbsp;</td>
                                </tr>
                            </table>
                        </div>

                    </asp:View>
                </asp:MultiView>               --%>         
                         </ContentTemplate>   
        </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>

