<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="OnlinePharmacy.AddToCart" %>

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
            margin-left: 62px;
        }
        .border1{
            background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
            border-radius: 50%;
        }
        .auto-style3 {
            font-weight: bold;
        }
        .auto-style4 {
            font-weight: 800;
        }
        .auto-style5 {
            font-weight: 800;
            color: #D2691E;
        }
    </style>
</head>
     <!-- Navigation -->
<nav class="navbar navbar-light bg-light static-top">
      <h1 style="text-align:center">
        <a href="HomePage.aspx" style="text-decoration: none; color:chocolate" class="auto-style25"><span class="auto-style3"><strong>Online Medicine </strong></span><span class="auto-style4">S</span></a><a href="HomePage.aspx"><span class="auto-style5">hop</span></a>
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
<body style="background-image: url('Image/blurred-background-01.jpg')">

    <form id="form1" runat="server">
        <div>
     
            <p class="text-center">
                <span class="text-white"><strong>No of products in your cart</strong></span>
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="White"></asp:Label>
                &nbsp;</p>
            <p class="text-center">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ShowMedicine.aspx">Continue Shopping</asp:HyperLink>
            </p>
        </div>
        <div class="auto-style1" style="align-content:center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="297px" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Width="1090px" CssClass="auto-style2">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.No">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="medicineid" HeaderText="MedicineID">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="medicinename" HeaderText="MedicineName">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="price" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField SelectText="Modify" ShowSelectButton="True" />
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" Height="50px" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        </div>
        <div >
        <p class="text-center">
            &nbsp;</p>
        <p class="text-center">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CheckOut" />
        </p>

        </div>
    </form>
</body>
</html>
