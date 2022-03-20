<%@ Page Language="C#" AutoEventWireup="True" EnableSessionState="True" CodeBehind="Loginpage.aspx.cs" Inherits="saleman.Loginpage" MasterPageFile="~/pagesinweb.Master" %>


    

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

     <span class="login100-form-title p-b-26">
						Hello
					</span>
					<span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span>

        <div>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">



                            <div class="wrap-input100 validate-input">
						<%--<input class="input100" type="text" name="email">--%>
                        <asp:TextBox class="input100" ID="txtemail" name="Username" runat="server"></asp:TextBox>
						<span class="focus-input100" data-placeholder="userName"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
</span>

					        </div>

                            <div class="wrap-input100 validate-input" data-validate="Enter password">
						
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>

                        <asp:TextBox class="input100" ID="txtpass" type="password" name="pass" runat="server"></asp:TextBox>
						<span class="focus-input100" data-placeholder="Password"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator></span>

					</div>



                           
                                        <asp:CheckBox ID="ckremamber" runat="server" Text="Remember Me" />
                                        <br />
                                            <div class="text-center">
						                         <span class="txt1">
							                         <asp:Label ID="lblmsg" runat="server" Text="Username Or password Is not correct" Visible="False" ForeColor="Red"></asp:Label>
						                    </span>

                            <div>
        <asp:Button Class="btn button primary-button mr-4" ID="loginbtn" runat="server" Text="Sign Up" style="left: 0px; top: 0px; width: 132px;" OnClick="loginbtn_Click" />
            </div>

                             <div class="forg">
                        <a href="#" class="forg-left">Forget Password?</a>
                     <div class="clearfix"></div>
                     </div>


                            <div class="text-center p-t-115">
						<span class="txt1">
							Don’t have an account?
						</span>

						<a class="txt2" href="register.aspx">
							Sign In
						</a>
					</div>

                        
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                            <div class="auto-style3">
                                <br />
                                <table align="center">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblwelcome" runat="server" Text="Login Member"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:HyperLink ID="hlprofile" runat="server" NavigateUrl="dashboard/index.aspx">Profile</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Addproductpage.aspx">Add Product</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:HyperLink ID="hlhome" runat="server" NavigateUrl="index.aspx">Home</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:LinkButton ID="lblogout" runat="server" OnClick="lblogout_Click">Logout</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </div>
                        </asp:View>
                    </asp:MultiView>

                    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <div class="auto-style3">
                        <br />
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/picture/DearWellinformedDalmatian-size_restricted.gif" Width="150px" />
                        <br />
                    </div>
                </ProgressTemplate>

            </asp:UpdateProgress>
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
</asp:Content>



    

