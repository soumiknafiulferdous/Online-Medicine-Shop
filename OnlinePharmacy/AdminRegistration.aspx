<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="OnlinePharmacy.AdminRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }

        .auto-style32 {
            height: 35px;
        }

        .auto-style39 {
            width: 228px;
            text-align: right;
            height: 33px;
        }

        .auto-style40 {
            width: 126px;
            height: 33px;
        }

        .auto-style41 {
            height: 33px;
            width: 180px;
        }

        .auto-style30 {
            width: 228px;
            text-align: right;
            height: 35px;
        }

        .auto-style31 {
            width: 126px;
            height: 35px;
        }

        .auto-style9 {
            width: 228px;
        }

        .auto-style10 {
            width: 126px;
        }

        .auto-style20 {
            width: 228px;
            height: 28px;
        }

        .auto-style21 {
            width: 126px;
            height: 28px;
            text-align: center;
        }

        .auto-style23 {
            width: 86px;
        }

        .auto-style22 {
            height: 28px;
            width: 180px;
        }

        .auto-style42 {
            width: 228px;
            height: 23px;
        }

        .auto-style43 {
            width: 126px;
            height: 23px;
        }

        .auto-style44 {
            height: 23px;
            width: 180px;
        }

        .auto-style45 {
            height: 35px;
            width: 180px;
        }

        .auto-style46 {
            width: 180px;
        }

        .auto-style47 {
            width: 126px;
            text-align: center;
        }

        .auto-style49 {
            width: 126px;
            height: 30px;
        }

        .auto-style50 {
            height: 30px;
            width: 180px;
        }
    </style>
</head>
<body style="background-image: url('Image/bg (7).jpg')">
    <form id="form1" runat="server">
        <div class="auto-style3">
            <h1>ONLINE MEDICINE SHOP</h1>
            <h2><strong>REGISTRATION FORM</strong></h2>
        </div>
        <table align="center" class="auto-style32">
            <tr>
                <td class="auto-style39">Username :</td>
                <td class="auto-style40">
                    <asp:TextBox ID="TextBoxUserName1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style41">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName1" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">Email :</td>
                <td class="auto-style40">
                    <asp:TextBox ID="TextBoxEmail1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style41">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail1" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail1" ErrorMessage="Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">Password :</td>
                <td class="auto-style31">
                    <asp:TextBox ID="TextBoxPassword1" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style45">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxConfirmPassword1" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">Confirm Password :&nbsp; </td>
                <td class="auto-style49">
                    <asp:TextBox ID="TextBoxConfirmPassword1" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style50">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxConfirmPassword1" ErrorMessage="Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword1" ControlToValidate="TextBoxConfirmPassword1" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style47">
                    <asp:Button ID="ButtonSubmit" runat="server" OnClick="Button1_Click1" Text="SUBMIT" Width="86px" />
                </td>
                <td class="auto-style46">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21">
                    <input id="Reset1" class="auto-style23" type="reset" value="reset" /></td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style43">
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC0000" NavigateUrl="~/AdminLogin.aspx">Already Registered?</asp:HyperLink>
                </td>
                <td class="auto-style44"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
