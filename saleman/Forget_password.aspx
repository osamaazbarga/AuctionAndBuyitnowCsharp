<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forget_password.aspx.cs" Inherits="saleman.Forget_password" MasterPageFile="~/indexmasterpage.Master" %>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <form id="form1">
                <h3>Forget My Password</h3>
                <%--<form id="form1" runat="server">--%>
                    <div class="key">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <asp:TextBox ID="email" type="text" value="Email" name="Email" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required=""></asp:TextBox>
                        <div class="clearfix"></div>
                    </div>
                
                    <asp:Button ID="Forgetbutton" runat="server" OnClick="Forgetbutton_Click" Text="Send" />
                    
                    


                    <asp:Label ID="Label1" runat="server" Text="Label" Enabled="False" Visible="False"></asp:Label>
                
                    


            <div class="forg">
                <a href="Forget password.aspx" class="forg-left">Forgot Password</a>
                <a href="register.aspx" class="forg-right">Register</a>
                <div class="clearfix"></div>
            </div>
    </form>
</asp:Content>