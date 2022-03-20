<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="saleman.register1" MasterPageFile="~/pagesinweb.Master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

    <span class="login100-form-title p-b-26">
						Create Account
					</span>
					<span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span>

					<div class="wrap-input100 validate-input">
						<%--<input class="input100" type="text" name="email">--%>
                        <asp:TextBox class="input100" ID="usertxt" name="Username" runat="server"></asp:TextBox>
						<span class="focus-input100" data-placeholder="userName"></span>
					</div>


	<div class="wrap-input100 validate-input">
						<%--<input class="input100" type="text" name="email">--%>
                        <asp:TextBox class="input100" ID="fntxt" name="First Name" runat="server"></asp:TextBox>
						<span class="focus-input100" data-placeholder="FirstName"></span>
					</div>


					<div class="wrap-input100 validate-input">
						<%--<input class="input100" type="text" name="email">--%>
                        <asp:TextBox class="input100" ID="lntxt" name="last Name" runat="server"></asp:TextBox>
						<span class="focus-input100" data-placeholder="lastName"></span>
					</div>

				<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<%--<input class="input100" type="text" name="email">--%>
                        <asp:TextBox class="input100" ID="mailtxt" name="Email" runat="server"></asp:TextBox>
						<span class="focus-input100" data-placeholder="email"></span>
					</div>


					<div class="wrap-input100 validate-input" data-validate="Enter password">
						
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>

                        <asp:TextBox class="input100" ID="password" type="password" name="pass" runat="server"></asp:TextBox>
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn" style="text-align:center;">
						
							<div>
        <asp:Button Class="btn button primary-button mr-4" ID="Button2" runat="server" Text="Sign Up" style="left: 0px; top: 0px; width: 132px;" OnClick="Button2_Click" />
            </div>
						<%--</div>--%>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
						Already a member?
						</span>

						<a class="txt2" href="loginpage.aspx">
							Sign In
						</a>
					</div>
</asp:Content>







