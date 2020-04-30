<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="OnlinePharmacy.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Medicine Shop</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            width: 100%;
        }

        .auto-style5 {
            height: 23px;
            text-align: right;
            width: 327px;
        }

        .auto-style8 {
            height: 23px;
            width: 180px;
        }

        .auto-style3 {
            height: 23px;
        }

        .auto-style4 {
            text-align: right;
            width: 327px;
            height: 26px;
        }

        .auto-style9 {
            height: 26px;
            width: 180px;
        }

        .auto-style7 {
            height: 26px;
        }

        .auto-style12 {
            width: 327px;
            height: 30px;
        }

        .auto-style13 {
            width: 180px;
            height: 30px;
            text-align: center;
        }

        .auto-style11 {
            margin-left: 0px;
        }

        .auto-style14 {
            height: 30px;
        }

        .auto-style6 {
            width: 327px;
        }

        .auto-style10 {
            width: 180px;
        }

        .auto-style15 {
            width: 180px;
            text-align: center;
            height: 23px;
        }

        .auto-style16 {
            width: 327px;
            height: 23px;
        }
    </style>
</head>
<body style="background-image: url('Image/bg (6).jpg')">
    <form id="form1" runat="server">
        <div>
            <a href="HomePage.aspx" style="text-decoration: none">
                <h1 class="auto-style1">ONLINE MEDICINE SHOP</h1>
            </a>
            <h2 class="auto-style1">ADMIN LOGIN</h2>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">Username :</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBoxUser" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUser" ErrorMessage="Please Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Password :</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBoxPass" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style13">
                        <asp:Button ID="ButtonLogin" runat="server" CssClass="auto-style11" OnClick="ButtonLogin_Click" Text="Login" Width="114px" />
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style15">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminRegistration.aspx">Not Register Yet?</asp:HyperLink>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
