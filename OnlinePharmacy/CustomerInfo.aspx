<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerInfo.aspx.cs" Inherits="OnlinePharmacy.CustomerInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            margin-right: 0px;
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
            <h2 class="auto-style1">Customer Information</h2>
            <p class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Panel" />
            </p>
            <br />
            <asp:SqlDataSource ID="SqlDataSourceCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerConnectionString %>" SelectCommand="SELECT * FROM [Customer]" DeleteCommand="DELETE FROM [Customer] WHERE [ID]=@ID"></asp:SqlDataSource>
            <div class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSourceCustomer" GridLines="Horizontal" CaptionAlign="Top" CssClass="auto-style2" Height="315px" Width="1303px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
