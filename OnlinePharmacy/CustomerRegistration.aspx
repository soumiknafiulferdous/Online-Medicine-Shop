<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="OnlinePharmacy.CustomerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Medicine Shop</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
    <meta name="author" content="">


    <link href="css/global - Copy (2).css" type="text/css" rel="stylesheet">
      <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }

        .auto-style9 {
            width: 228px;
        }

        .auto-style10 {
            width: 212px;
        }

        .auto-style20 {
            width: 228px;
            height: 21px;
        }

        .auto-style21 {
            width: 212px;
            height: 21px;
        }

        .auto-style22 {
            height: 21px;
        }

        .auto-style23 {
            width: 86px;
        }

        .auto-style31 {
            width: 212px;
            height: 35px;
        }

        .auto-style32 {
            height: 35px;
        }

        .auto-style40 {
            width: 212px;
            height: 33px;
        }

        .auto-style41 {
            height: 33px;
        }

        .auto-style42 {
            width: 228px;
            height: 23px;
        }

        .auto-style43 {
            width: 212px;
            height: 23px;
        }

        .auto-style44 {
            height: 23px;
        }

        .auto-style55 {
            width: 228px;
            text-align: right;
            height: 35px;
            font-size: large;
        }

        .auto-style56 {
            width: 228px;
            text-align: right;
            height: 33px;
            font-size: large;
        }

        .auto-style57 {
            width: 228px;
            text-align: right;
            height: 11px;
        }

        .auto-style58 {
            width: 161px;
            height: 11px;
        }

        .auto-style59 {
            height: 11px;
        }

        .auto-style60 {
            font-size: small;
        }

        .auto-style61 {
            width: 228px;
            text-align: right;
            height: 14px;
            font-size: large;
        }

        .auto-style62 {
            width: 212px;
            height: 14px;
        }

        .auto-style63 {
            height: 14px;
        }

        .auto-style64 {
            width: 228px;
            text-align: right;
            height: 23px;
            font-size: large;
        }

        .auto-style65 {
            width: 212px;
            height: 11px;
        }

        .auto-style66 {
            margin-left: 27;
        }
        .auto-style67 {
            color: #006699;
        }
    </style>
</head>
      <!-- Navigation -->
<nav class="navbar navbar-light bg-light static-top">
    <div class="container">

        <a class="nav-link js-scroll-trigger" href="HomePage.aspx">Home</a>

        <a class="nav-link js-scroll-trigger" href="ShowMedicine.aspx">Medicines</a>
        <a class="nav-link js-scroll-trigger" href="About.aspx">About</a>
        <a class="nav-link js-scroll-trigger" href="Contact.aspx">Contact</a>
        <a class="nav-link js-scroll-trigger" href="faq.aspx">FAQ</a>

        <a class="btn btn-primary" href="SignIn.aspx">Sign in</a>

    </div>

</nav>
<body style="background-image: url('Image/bg (7).jpg')">
    <h1 style="text-align:center">
        <a href="HomePage.aspx" style="text-decoration: none" class="auto-style67"><span class="newStyle1"><strong>Online Medicine Shop</strong></span></a>
        <span class="site-heading-lower"></span>
    </h1>
    <div class="row">
        <div class="col-md-4 com-sm-4 col-xs-12"></div>
        <div class="col-md-4 com-sm-4 col-xs-12">
            <form id="form2" class="form-container" runat="server">
                <div class="auto-style3">
                    <h2><strong>REGISTRATION FORM</strong></h2>
                </div>
                <table align="center" class="auto-style32">
                    <tr>
                        <td class="auto-style64">Username&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style43">
                            <asp:TextBox ID="TextBoxUserName" runat="server" Width="207px" OnTextChanged="TextBoxUserName_TextChanged" Height="22px"></asp:TextBox>
                        </td>
                        <td class="auto-style44">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57"></td>
                        <td class="auto-style65">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Required" ForeColor="Red" CssClass="auto-style60"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style59"></td>
                    </tr>
                    <tr>
                        <td class="auto-style61">Email&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style62">
                            <asp:TextBox ID="TextBoxEmail" runat="server" Width="207px" CssClass="auto-style66" Height="22px"></asp:TextBox>
                        </td>
                        <td class="auto-style63">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57"></td>
                        <td class="auto-style65">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Required" ForeColor="Red" CssClass="auto-style60"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style60"></asp:RegularExpressionValidator>
                        </td>
                        <td class="auto-style59"></td>
                    </tr>
                    <tr>
                        <td class="auto-style56">Phone No&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style40">
                            <asp:TextBox ID="TextBoxPhone" runat="server" Width="207px" Height="22px"></asp:TextBox>
                        </td>
                        <td class="auto-style41">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57"></td>
                        <td class="auto-style65">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="Required" ForeColor="Red" CssClass="auto-style60"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="Enter valid number" ForeColor="#FF3300" ValidationExpression="^(?:\+88|01)?\d{11}"></asp:RegularExpressionValidator>
                        </td>
                        <td class="auto-style59"></td>
                    </tr>
                    <tr>
                        <td class="auto-style56">Address&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style40">
                            <asp:TextBox ID="TextBoxAddress" runat="server" Width="207px" Height="22px"></asp:TextBox>
                        </td>
                        <td class="auto-style41"></td>
                    </tr>
                    <tr>
                        <td class="auto-style57"></td>
                        <td class="auto-style65">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxAddress" ErrorMessage="Required" ForeColor="Red" CssClass="auto-style60"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style59"></td>
                    </tr>
                    <tr>
                        <td class="auto-style55">Password&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style31">
                            <asp:TextBox ID="TextBoxPassword" runat="server" Width="207px" TextMode="Password" Height="22px"></asp:TextBox>
                        </td>
                        <td class="auto-style32">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57"></td>
                        <td class="auto-style65">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Required" ForeColor="Red" CssClass="auto-style60"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style59"></td>
                    </tr>
                    <tr>
                        <td class="auto-style64">Confirm&nbsp;&nbsp; Password&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style43">
                            <asp:TextBox ID="TextBoxConfirmPassword" runat="server" Width="207px" TextMode="Password" Height="22px"></asp:TextBox>
                        </td>
                        <td class="auto-style44">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57"></td>
                        <td class="auto-style65">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="Required" ForeColor="Red" CssClass="auto-style60"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="Enter Correctly" ForeColor="Red" CssClass="auto-style60"></asp:CompareValidator>
                        </td>
                        <td class="auto-style58"></td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10">
                            <asp:Button ID="ButtonSubmit" runat="server" OnClick="Button1_Click1" Text="SUBMIT" Width="86px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style20"></td>
                        <td class="auto-style21">
                            <input id="Reset1" class="auto-style23" type="reset" value="reset" /></td>
                        <td class="auto-style22"></td>
                    </tr>
                    <tr>
                        <td class="auto-style42"></td>
                        <td class="auto-style43"></td>
                        <td class="auto-style44"></td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10">
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF0000" NavigateUrl="~/SignIn.aspx">Already Registered?</asp:HyperLink>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </form>
</body>
</html>
