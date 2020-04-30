<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="OnlinePharmacy.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Medicine Shop</title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    
    <link href="css/global - Copy.css" type="text/css" rel="stylesheet">
      <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <style type="text/css">


        .auto-style1 {
            text-align: center;
            color: #CC3300;
        }


        .auto-style2 {
            width: 82%;
            height: 278px;
        }

       
        .auto-style5 {
            height: 24px;
            text-align: right;
            width: 358px;
        }

     

        .auto-style24 {
            font-size: x-large;
            text-align: center;
        }
    
        .auto-style23 {
            font-size: large;
            text-align: center;
        }

    

        .auto-style22 {
            height: 24px;
            width: 156px;
        }

        .auto-style12 {
            width: 358px;
            height: 30px;
            text-align: center;
        }

        .auto-style17 {
            font-size: x-small;
        }

        .auto-style19 {
            height: 35px;
            width: 156px;
        }

        .auto-style20 {
            text-align: center;
            width: 358px;
            font-size: xx-large;
        }

        .auto-style10 {
            width: 156px;
        }

        .auto-style9 {
            height: 26px;
            width: 156px;
        }

    

        .auto-style11 {
            margin-left: 40px;
        }

        .auto-style13 {
            width: 156px;
            height: 30px;
        }

        .auto-style16 {
            width: 358px;
            height: 23px;
            text-align: center;
        }

      

        .auto-style8 {
            height: 23px;
            width: 156px;
        }

        .auto-style6 {
            width: 358px;
            text-align: center;
        }

        .newStyle1 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style25 {
            color: #CC6600;
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

        <a class="btn btn-primary" href="CustomerRegistration.aspx">Sign up</a>

    </div>

</nav>
<body style="background-image: url('Image/bg (7).jpg')">
      <h1 style="text-align:center">
        <a href="HomePage.aspx" style="text-decoration: none" class="auto-style25"><span class="newStyle1"><strong>Online Medicine Shop</strong></span></a>
        <span class="site-heading-lower"></span>
    </h1>
    <div class="container-fluid bg" style="width: 100%">
        <div class="row">
            <div class="col-md-4 com-sm-4 col-xs-12"></div>
            <div class="col-md-4 com-sm-4 col-xs-12">
                <form id="form1" class="form-container" runat="server">
                    <h1 class="auto-style1"><strong>LOGIN </strong></h1>
                    <table class="auto-style2" align="center">
                        <tr>
                            <td class="auto-style5">
                                <h3 class="text-center">
                                    <span class="auto-style24">Username </span>
                                    <asp:TextBox ID="TextBoxUser" runat="server" Width="234px" Height="22px" CssClass="auto-style23"></asp:TextBox>
                                </h3>
                            </td>
                            <td class="auto-style22">
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUser" ErrorMessage="Please Enter Username" ForeColor="Red" CssClass="auto-style17"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style19"></td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <h3 class="text-center">&nbsp; Password
                        <asp:TextBox ID="TextBoxPass" runat="server" Width="235px" TextMode="Password" Height="22px" style="text-align: center"></asp:TextBox>
                                </h3>
                            </td>
                            <td class="auto-style10"></td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Please Enter Password" ForeColor="Red" CssClass="auto-style17"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style9">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:Button ID="ButtonLogin" runat="server" CssClass="auto-style11" OnClick="ButtonLogin_Click" Text="Login" Width="157px" Height="33px" />
                            </td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerRegistration.aspx" ForeColor="Red" Style="font-weight: 700">Not Register Yet?</asp:HyperLink>
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                &nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="col-md-4 com-sm-4 col-xs-12"></div>
        </div>
    </div>
</body>
</html>
