<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditOrder.aspx.cs" Inherits="OnlinePharmacy.EditOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Medicine Shop</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
       <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/business-casual.min.css" rel="stylesheet">


    <style type="text/css">
        
        .auto-style2 {
            width: 64%;
            height: 240px;
        }

        .auto-style4 {
            width: 425px;
        }

        .auto-style5 {
            width: 1136px;
        }
        .auto-style6 {
            font-weight: bold;
        }
        .auto-style7 {
            text-align: center;
            color: #0099FF;
        }
        .auto-style9 {
            width: 425px;
            color: #FFFFFF;
        }
        .auto-style10 {
            color: #66FFFF
        }
        .auto-style11 {
            width: 1136px;
            text-align: center;
        }
    </style>
</head>
<body style="background-image: url('Image/blurred-background-03.jpg')">
      <!-- Navigation -->
<nav class="navbar navbar-light bg-light static-top">
    <h1 style="text-align:center">
        <a href="HomePage.aspx" style="text-decoration: none; color:chocolate" class="auto-style25"><span class="auto-style6"><strong>Online Medicine Shop</strong></span></a>
        <span class="site-heading-lower"></span>
    </h1>
    <div class="container">

        <a class="nav-link js-scroll-trigger" href="HomePage.aspx">Home</a>

        <a class="nav-link js-scroll-trigger" href="ShowMedicine.aspx">Medicines</a>
        <a class="nav-link js-scroll-trigger" href="About.aspx">About</a>
        <a class="nav-link js-scroll-trigger" href="Contact.aspx">Contact</a>
        <a class="nav-link js-scroll-trigger" href="faq.aspx">FAQ</a>

        <a class="btn btn-primary" href="CustomerRegistration.aspx">Sign up</a>

    </div>

</nav>
    <form id="form1" runat="server">
        <div>
            
            <h2 class="auto-style7">
                &nbsp;</h2>
            <h2 class="auto-style7">
                <span class="auto-style10">
                <strong class="auto-style6">MODIFYING</strong><strong> </strong>
                <strong class="auto-style6">SHOPPING</strong><strong> </strong>
                <strong class="auto-style6">CART</strong></span><strong> </strong>
            </h2>
            <p class="auto-style7">
                &nbsp;</p>
            <table align="center" border="1" class="auto-style2">
                <tr>
                    <td class="auto-style9"><strong>&nbsp;SERIAL NO</strong></td>
                    <td class="auto-style5">
                        <strong>
                        &nbsp;<asp:Label ID="Label1" runat="server" Text="Label" ForeColor="White"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>&nbsp;MEDICINE ID</strong></td>
                    <td class="auto-style5">
                        <strong>
                        &nbsp;<asp:Label ID="Label2" runat="server" Text="Label" ForeColor="White"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>&nbsp;MEDICINE NAME</strong></td>
                    <td class="auto-style5">
                        <strong>
                        &nbsp;<asp:Label ID="Label3" runat="server" Text="Label" ForeColor="White"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>&nbsp;PRICE</strong></td>
                    <td class="auto-style5">
                        <strong>
                        &nbsp;<asp:Label ID="Label4" runat="server" Text="Label" ForeColor="White"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>&nbsp;QUANTITY(Packet)</strong></td>
                    <td class="auto-style5">
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ForeColor="Black">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>&nbsp;TOTAL PRICE</strong></td>
                    <td class="auto-style5">
                        <strong>
                        &nbsp;<asp:Label ID="Label5" runat="server" Text="Label" ForeColor="White"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE" Width="97px" BackColor="White" CssClass="alert-dark" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
