<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMedicineForm.aspx.cs" Inherits="OnlinePharmacy.AddMedicineForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            width: 100%;
            margin-left: 0px;
        }

        .auto-style3 {
            width: 419px;
            text-align: right;
        }

        .auto-style4 {
            width: 419px;
            text-align: right;
            height: 23px;
        }

        .auto-style5 {
            height: 23px;
        }

        .auto-style6 {
            width: 156px;
        }

        .auto-style7 {
            height: 23px;
            width: 156px;
        }

        .auto-style8 {
            width: 156px;
            text-align: center;
        }

        .auto-style9 {
            width: 419px;
            text-align: right;
            height: 34px;
        }

        .auto-style10 {
            width: 156px;
            text-align: center;
            height: 34px;
        }

        .auto-style11 {
            height: 34px;
        }

        .auto-style12 {
            width: 419px;
            text-align: right;
            height: 26px;
        }

        .auto-style13 {
            width: 156px;
            height: 26px;
        }

        .auto-style14 {
            height: 26px;
        }
        .auto-style15 {
            width: 419px;
            text-align: right;
            height: 30px;
        }
        .auto-style16 {
            width: 156px;
            text-align: center;
            height: 30px;
        }
        .auto-style17 {
            height: 30px;
        }
        .auto-style18 {
            text-align: left;
        }
    </style>
</head>
<body style="background-image: url('Image/bg (6).jpg')">
    <form id="form1" runat="server">
        <h2 class="auto-style1">ADD MEDICINE</h2>
        <p class="auto-style18">
            &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Panel" />
&nbsp;</p>
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style3">Name of the Medicine :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxMedName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Medicine Type :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxMedType" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Company Name :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxComName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Manufacture Date :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxManDate" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Expiry Date :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxExDate" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Amount :</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBoxAmount" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style4">Price :</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxPrice" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">Image :</td>
                <td class="auto-style6">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="26px" Width="274px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Keyword for Search</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxKeyword" runat="server" Height="26px" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">
                    <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="ADD" />
                </td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
