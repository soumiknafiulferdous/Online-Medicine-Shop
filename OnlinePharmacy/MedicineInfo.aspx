<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicineInfo.aspx.cs" Inherits="OnlinePharmacy.MedicineInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 347px;
        }

        .auto-style3 {
            width: 56px;
        }

        .auto-style5 {
            text-align: center;
            height: 45px;
        }

        .auto-style6 {
            text-align: center;
            height: 42px;
        }

        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            text-align: left;
            height: 42px;
        }
    </style>
</head>
<body style="background-image: url('Image/bg (6).jpg')">
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style5">ONLINE MEDICINE SHOP</h1>
            <h2 class="auto-style6">MEDICINE DETAILS<br />
            </h2>
            <h2 class="auto-style8">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Panel" />
                <br />
                <br />
                <br />
            </h2>
            <asp:SqlDataSource ID="SqlDataSourceMedicine" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerConnectionString %>" SelectCommand="SELECT [Id], [Name], [Type], [CompanyName], [ManufactureDate], [ExpiryDate], [Amount], [Price], [KeywordSearch] FROM [Medicine]"></asp:SqlDataSource>
        </div>
        <div class="auto-style7">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceMedicine" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1148px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                    <asp:BoundField DataField="ManufactureDate" HeaderText="ManufactureDate" SortExpression="ManufactureDate" />
                    <asp:BoundField DataField="ExpiryDate" HeaderText="ExpiryDate" SortExpression="ExpiryDate" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="KeywordSearch" HeaderText="KeywordSearch" SortExpression="KeywordSearch" />
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
        <br />
        <br />
        DELETE<br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="text-align: right">ID</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxDeleteID" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
