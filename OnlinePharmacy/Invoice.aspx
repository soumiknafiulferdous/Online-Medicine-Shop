<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="OnlinePharmacy.Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Online Medicine Shop</title>
             <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

    <!-- Custom styles for this template -->

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            width: 95%;
            height: 621px;
        }

        .auto-style3 {
            height: 68px;
            width: 828px;
        }

        .auto-style4 {
            width: 100%;
        }

        .auto-style5 {
            width: 446px;
        }

        .auto-style6 {
            width: 449px;
        }

        .auto-style7 {
            height: 48px;
            width: 828px;
        }

        .auto-style8 {
            height: 24px;
            width: 828px;
        }

        .auto-style9 {
            height: 137px;
            width: 828px;
            text-align: center;
        }

        .auto-style11 {
            width: 828px;
        }
        .auto-style12 {
            width: 828px;
            text-align: center;
        }
        .auto-style13 {
            margin-left: 54px;
        }
        .auto-style14 {
            font-weight: normal;
            color: #CC3300;
        }
        .auto-style15 {
            color: #CC0000;
        }
    </style>
</head>
<body style="background-image: url('Image/blurred-background-01.jpg')">
    <nav class="navbar navbar-light bg-light static-top">
         <h1 style="text-align:center" class="auto-style19">
        <a href="HomePage.aspx" style="text-decoration: none; color:chocolate"><span class="auto-style19" style="font-weight: bold"><strong>Online Medicine Shop</strong></span></a><strong> </strong>
        <span class="site-heading-lower"></span>
    </h1>
      <div class="container">
       
              <a class="nav-link js-scroll-trigger" href="HomePage.aspx">Home</a>

              <a class="nav-link js-scroll-trigger" href="About.aspx">About</a>
              <a class="nav-link js-scroll-trigger" href="Contact.aspx">Contact</a>

              <a class="nav-link js-scroll-trigger" href="faq.aspx">FAQ</a>

        <a class="btn btn-primary" href="SignIn.aspx">Sign in</a>

      </div>
	  
    </nav>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h2><strong>
            <asp:Label ID="Label1" runat="server" Text="GENERATE INVOICE AS PDF" CssClass="auto-style15"></asp:Label>
                </strong></h2>
        </div>
        <p class="auto-style1">
            ORDER ID
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </p>
        <p class="auto-style1">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="DOWNLOAD INVOICE" Width="199px" />
        </p>
        <asp:Panel ID="Panel1" runat="server" Height="706px" CssClass="auto-style13">
            <table border="1" class="auto-style2">
                <tr>
                    <td class="auto-style12">
                        <h1 class="auto-style14"><strong>ONLINE MEDICINE SHOP</strong></h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">INVOICE</td>
                </tr>
                <tr>
                    <td class="auto-style3">Order No :&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                        <br />
                        Order Date:&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                        <br />
                        Customer Name:
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                        <br />
                        Customer Mobile No:
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <table border="1" class="auto-style4">
                            <tr>
                                <td class="auto-style5">Buyer Address:<br />
                                    <asp:Label ID="Label5" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style6">Seller Address:<br />
                                    <asp:Label ID="Label6" runat="server">Anurag Pharma, Mohammadpur,Dhaka</asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="sno" HeaderText="S.No">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="medicineid" HeaderText="Medicine Id">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="medicinename" HeaderText="Medicine Name">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="price" HeaderText="Price">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Grand Total :&nbsp;
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Declaration: We declare that this invoice shows actual priceof the goods described inclusiveof taxes and that all particular are true and correct. Incase you fine selling price on the invoice to be more than MRP mentioned on product, please inform <a href="http://www.onlinepharmacy.com">www.onlinepharmacy.com</a><br />
                        <br />
                        This is a computer generated invoice and does not required signature.</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
    </form>
</body>
</html>
