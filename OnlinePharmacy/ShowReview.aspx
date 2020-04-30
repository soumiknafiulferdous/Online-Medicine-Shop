<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowReview.aspx.cs" Inherits="OnlinePharmacy.ShowReview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            margin-left: 126px;
        }
        .auto-style3 {
            text-align: left;
        }
    </style>
</head>
<body style="background-image: url('Image/bg (6).jpg')">
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">ONLINE MEDICINE SHOP</h1>
            <h2 class="auto-style1">REVIEWS</h2>
            <p class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Panel" />
            </p>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerConnectionString %>" SelectCommand="SELECT * FROM [Review] ORDER BY ID DESC"></asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style2" DataKeyField="Id" DataSourceID="SqlDataSource1" GridLines="Both" Width="509px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
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
    </form>
</body>
</html>
