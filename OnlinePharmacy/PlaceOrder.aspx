<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="OnlinePharmacy.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
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
    <link href="css/business-casual.min.css" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            width: 34%;
            height: 93px;
        }

        .auto-style4 {
            width: 84px;
            font-weight: bold;
        }
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style6 {
            margin-left: 89px;
        }
        .auto-style7 {
            width: 118px;
            text-align: right;
        }
        .auto-style8 {
            width: 118px;
            text-align: right;
            height: 31px;
        }
        .auto-style9 {
            text-align: center;
            height: 31px;
        }
        .auto-style10 {
            width: 84px;
            font-weight: 800;
        }
        .auto-style11 {
            font-weight: 800;
            color: #D2691E;
        }
    </style>
</head>
     <!-- Navigation -->
<nav class="navbar navbar-light bg-light static-top">
     <h1 style="text-align:center">
        <a href="HomePage.aspx" style="text-decoration: none; color:chocolate" class="auto-style25"><span class="auto-style4"><strong>Online Medicine </strong></span><span class="auto-style10">S</span></a><a href="HomePage.aspx"><span class="auto-style11">hop</span></a>
        <span class="site-heading-lower"></span>
    </h1>
    <div class="container">

        <a class="nav-link js-scroll-trigger" href="HomePage.aspx">Home</a>

        <a class="nav-link js-scroll-trigger" href="ShowMedicine.aspx">Medicines</a>
        <a class="nav-link js-scroll-trigger" href="About.aspx">About</a>
        <a class="nav-link js-scroll-trigger" href="Contact.aspx">Contact</a>
        <a class="nav-link js-scroll-trigger" href="faq.aspx">FAQ</a>

 

    </div>

</nav>
<body style="background-image: url('Image/blurred-background-05.jpg')">
    <form id="form1" runat="server">
        <div>
            <p class="auto-style1">
                <span class="auto-style5"><span class="text-white"><strong>Hello</strong></span>&nbsp; </span>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Font-Bold="True" ForeColor="White"></asp:Label>
            </p>
            <p class="auto-style1">
                &nbsp;</p>
            <table class="auto-style2" align="center">
                <tr>
                    <td class="auto-style8"><span class="text-white">Customer
                ID</span>&nbsp; </td>
                    <td class="auto-style9">
                <asp:Label ID="Label4" runat="server" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><span class="text-white">Order Id</span>&nbsp; </td>
                    <td class="text-center">
                        <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><span class="text-white">Order Date</span>&nbsp; </td>
                    <td class="text-center">
                        <asp:Label ID="Label2" runat="server" ForeColor="White"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ShowFooter="True" CssClass="auto-style6">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.No">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="medicineid" HeaderText="Medicine ID">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="medicinename" HeaderText="Medicine Name">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Height="50px" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <p class="text-center">
            &nbsp;</p>
        <p class="text-center">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Place Order" />
        </p>
    </form>
</body>
</html>
