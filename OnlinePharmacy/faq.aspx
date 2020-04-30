<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="faq.aspx.cs" Inherits="OnlinePharmacy.faq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title></title>
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
             margin-top: 118px;
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
          
        
        <asp:Image ID="Image1" runat="server" Height="759px" ImageUrl="~/Image/bg_faq.jpg" Width="1110px" CssClass="auto-style3" />
        
        </div>
        
        </div>
        
    </form>
</body>
</html>
