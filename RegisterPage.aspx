<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="RegisterPage.aspx.cs" Inherits="Cars_Selling.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: darksalmon">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 1307px;
            height: 536px;
        }
        .auto-style5 {
            width: 435px;
            text-align: right;
            height: 27px;
        }
        .auto-style11 {
            width: 435px;
            height: 26px;
        }
        .auto-style12 {
            width: 435px;
            text-align: center;
            height: 26px;
        }
        .auto-style13 {
            width: 435px;
            height: 27px;
        }
        .auto-style14 {
            width: 435px;
            text-align: center;
            height: 27px;
        }
        .auto-style15 {
            width: 435px;
            height: 26px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="connectionStatuslbl" runat="server" Text="..."></asp:Label>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label4" runat="server" Text="Nume personal: " Font-Names="Franklin Gothic Heavy"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="numePersonalTb" runat="server" Width="329px" BackColor="#FFFF99"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label1" runat="server" Text="Nume utilizator: " Font-Names="Franklin Gothic Heavy"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="numeUtilizatorTb" runat="server" Width="329px" BackColor="#FFFF99"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Parola: " Font-Names="Franklin Gothic Heavy"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="parolaTb" runat="server" Width="329px" TextMode="Password" BackColor="#FFFF99"></asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Nr. telefon: " Font-Names="Franklin Gothic Heavy"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="nrTelefonTb" runat="server" Width="328px" BackColor="#FFFF99"></asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Label ID="statusLbl" runat="server"></asp:Label>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style13"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">
                    <asp:Button ID="inregistrareBtn" runat="server" OnClick="inregistrareBtn_Click" Text="Inregistrare" Width="175px" BackColor="#009933" BorderColor="Yellow" Font-Names="Franklin Gothic Heavy" ForeColor="White" />
                </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cancel" Width="149px" BackColor="#009933" BorderColor="Yellow" Font-Names="Franklin Gothic Heavy" ForeColor="White"/>
                </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
