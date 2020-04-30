<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="OnlinePharmacy.Review" %>

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
    <link href="css/business-casual.min.css" rel="stylesheet">
        <style type="text/css">
         .auto-style1 {
             height: 1007px;
         }
         .auto-style2 {
             color: #CC6600;
         }
            .auto-style3 {
                margin-bottom: 0;
                margin-left: 0;
            }
            .auto-style4 {
                color: #99CC00;
                font-weight: bold;
            }
            .auto-style5 {
                margin-left: 93px;
            }
     </style>
</head>
<body>
         <nav class="navbar navbar-light bg-light static-top">
               <h1 style="text-align:center" class="auto-style2">
        <a href="HomePage.aspx" style="text-decoration: none"><span class="site-heading-upper text-primary mb-3" style="font-weight: bold; color: #CC3300"><strong>Online Medicine Shop</strong></span></a><strong> </strong>
        <span class="site-heading-lower"></span>
        </h1>
      <div class="container">
       
              <a class="nav-link js-scroll-trigger" href="HomePage.aspx">Home</a>

              <a class="nav-link js-scroll-trigger" href="ShowMedicine.aspx">Medicine</a>
              <a class="nav-link js-scroll-trigger" href="Contact.aspx">Contact</a>

              <a class="nav-link js-scroll-trigger" href="About.aspx">About</a>

        <a class="btn btn-primary" href="SignIn.aspx">Sign in</a>

      </div>
	  
    </nav>
    <form id="form1" runat="server">
        <div class="text-center">
        <div class="auto-style1" >
          
        
            <h1 class="auto-style4"><strong>REVIEW</strong></h1>
            <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Name"></asp:Label>
            <br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" Width="385px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Feedback"></asp:Label>
            <br />
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="94px" Width="435px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerConnectionString %>" SelectCommand="SELECT [Name], [Review] FROM [Review] ORDER BY ID DESC"></asp:SqlDataSource>
            <div class="text-left">
                <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style5" DataSourceID="SqlDataSource1" GridLines="Both" Width="950px">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <ItemTemplate>
                        Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />
                        Review:
                        <asp:Label ID="ReviewLabel" runat="server" Text='<%# Eval("Review") %>' />
                        <br />
<br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </div>
        
        </div>
        
        </div>
        
    </form>
</body>
</html>
