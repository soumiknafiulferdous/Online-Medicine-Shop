<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowMedicine.aspx.cs" Inherits="OnlinePharmacy.Search" %>

<!DOCTYPE html>
<html lang="en">

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
            color: black;
        }
        .auto-style9 {
            width: 65%;
            height: 77px;
            margin-left: 0px;
        }
        .auto-style11 {
            height: 23px;
            width: 10px;
            text-align: right;
        }
        .auto-style10 {
            height: 23px;
            width: 446px;
            text-align: right;
        }
        .auto-style14 {
            margin-bottom: 0px;
            margin-left: 37px;
        }

        .auto-style5 {
            text-align: center;
            width: 300px;
        }

        .textcolor {
            color: white;
        }

        .auto-style4 {
            height: 23px;
            width: 300px;
            text-align: center;
        }

        .auto-style7 {
            height: 17px;
            width: 300px;
            text-align: center;
        }

        .auto-style8 {
            text-align: center;
            width: 300px;
            height: 58px;
        }
        .auto-style15 {
            height: 25px;
            width: 300px;
            text-align: center;
        }
        .auto-style17 {
            font-size: x-large;
        }
        .auto-style18 {
            text-align: center;
        }
        .button2{
            border: none;
            border-radius: 9px;
            color: white;
            padding: 2px 2px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 2px 2px;
            cursor: pointer;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
            text-align: center;
            
             box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
        }

        .auto-style19 {
            color: #CC6600;
        }

    </style>
</head>
   
<body>
     
     <nav class="navbar navbar-light bg-light static-top">
         <h1 style="text-align:center" class="auto-style19">
        <a href="HomePage.aspx" style="text-decoration: none"><span class="auto-style19" style="font-weight: bold"><strong>Online Medicine Shop</strong></span></a><strong> </strong>
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
        <div>
        <table align="center" class="auto-style9">
            <tr>
                <td class="auto-style11">
                &nbsp;
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="201px"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Text="SEARCH" Width="96px" OnClick="Button2_Click" BackColor="#FF9900" BorderColor="#CCCCCC" BorderStyle="None" />
                </td>
            </tr>
            </table>
           
        </div>
        <div class="auto-style18">
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/AddToCart.aspx">Show Cart</asp:HyperLink>
            <br />
            <span class="textcolor"> No. of products in your cart&nbsp;
            <asp:Label ID="Label6" runat="server" CssClass="auto-style17"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </span>
        </div>
        <p class="text-center">
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" OnClick="LinkButton1_Click">View All Medicine</asp:LinkButton>
        </p>
        <div class="text-left">
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style14" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table border="1" class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Image") %>' Width="300px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15"><span class="textcolor">Medicine Id : </span>
                            <asp:Label ID="Label3" runat="server" Style="color: white" Text='<%# Eval("Id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;<span class="textcolor">Medicine Name :</span>
                            <asp:Label ID="Label1" runat="server" Style="color: white" Text='<%# Eval("Name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4"><span class="textcolor">Price :</span>&nbsp; <asp:Label ID="Label2" runat="server" Style="text-align: center; color: white" Text='<%# Eval("Price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7"><span class="textcolor">Quantity(packet):</span>&nbsp; <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="addtocart" Text="ADD TO CART" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerConnectionString %>" SelectCommand="SELECT [Medicine].[Image],[Medicine].[Id], [Medicine].[Name],[Medicine].[Price] 
FROM [Medicine]
INNER JOIN(
SELECT MIN([Id]) AS [Id] FROM [Medicine] group by [Name]
) minid ON [Medicine].[Id] = minid.[Id]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerConnectionString %>" SelectCommand="SELECT[Medicine].[Image],[Medicine].[Id], [Medicine].[Name],[Medicine].[Price] 
FROM [Medicine]
INNER JOIN(
SELECT MIN([Id]) AS [Id] FROM [Medicine] group by [Name]
) minid ON [Medicine].[Id] = minid.[Id] WHERE ([KeywordSearch] LIKE '%' + @KeywordSearch + '%') ">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="KeywordSearch" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;</form>
</body>
</html>
