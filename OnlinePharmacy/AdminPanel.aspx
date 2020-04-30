<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="OnlinePharmacy.AdminPanel1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 625px;
        }

        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            text-decoration: none;
        }
    </style>
</head>
<body style="background-image: url('Image/bg (6).jpg')">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1>
                <a href="HomePage.aspx" style="text-decoration: none">ONLINE M</a><a class="auto-style4" href="HomePage.aspx">EDICINE SHOP</a></h1>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Welcome " CssClass="auto-style3" Height="30px"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="ButtonAddMedicine" runat="server" OnClick="ButtonAddMedicine_Click" Text="ADD MEDICINE" Width="175px" />
            <asp:Button ID="ButtonMedicine" runat="server" OnClick="ButtonMedicine_Click" Text=" SHOW MEDICINE" Width="175px" />
            <br />
            <br />
            <asp:Button ID="ButtonOffer" runat="server"  Text="OFFER"   Width="350px" OnClick="ButtonOffer_Click" />
            <br />
            <br />
            <asp:Button ID="ButtonAddStaff" runat="server" OnClick="ButtonAddStaff_Click" Text="STAFF" Width="350px" />
            <br />
            <br />
            <asp:Button ID="ButtonDeliveryman" runat="server" Text="DELIVERYMAN" OnClick="ButtonDeliveryman_Click" Width="350px" />
            <br />
            <br />
            <asp:Button ID="ButtonVendor" runat="server" Text="VENDOR" Width="350px" OnClick="ButtonVendor_Click" />
            <br />
            <br />
            <asp:Button ID="ButtonReview" runat="server" Text="SHOW REVIEWS" Width="350px" OnClick="ButtonReview_Click1" />
            <br />
            <br />
            <asp:Button ID="ButtonCustomer" runat="server" OnClick="ButtonCustomer_Click" Text="CUSTOMER" Width="350px" />
            <br />
            <br />
            <asp:Button ID="ButtonOrder" runat="server"  Text="ORDER LIST"  Width="350px" OnClick="ButtonOrder_Click" />
            <br />
            <br />
            <asp:Button ID="ButtonLogout" runat="server" OnClick="ButtonLogout_Click" Text="Logout" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
