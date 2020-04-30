<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceSuccessfully.aspx.cs" Inherits="OnlinePharmacy.PlaceSuccessfully" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body style="background-image: url('Image/bg (7).jpg')">
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">ONLINE MEDICINE SHOP</h1>
            <p class="auto-style1">&nbsp;</p>
        </div>
        <p class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Your Purchase has been done!"></asp:Label>
        </p>
        <p class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Thanks for purchasing."></asp:Label>
        </p>
    </form>
</body>
</html>
