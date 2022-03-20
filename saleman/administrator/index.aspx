<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="saleman.administrator.index" MasterPageFile="~/administrator/adminmasterpage.Master" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
<!DOCTYPE html>

<html>
<head>
    <title></title>
    <style type="text/css">
        .btn{
            font-size:30px;
            margin:auto;
        }
    </style>
</head>
<body>
    
    <form id="form1">
        <div class="hellotags">
              <h1>HELLO <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>,</h1>
              <h1>WELCOME TO YOUR PROFILE</h1>
            <asp:Button ID="Button1" runat="server" Text="Go To Dashboard" OnClick="Button1_Click" CssClass="btn"/>
          </div>
            <br />
        </div>
    </form>
</body>
</html>
    </asp:Content>