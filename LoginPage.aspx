<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="LoginPage.aspx.cs" Inherits="Cars_Selling.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color:burlywood">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1307px;
        }
        .textbox{
            color :green;
            
        }
        .auto-style17 {
            width: 435px;
            height: 27px;
            text-align: center;
        }
        .auto-style18 {
            height: 26px;
            width: 435px;
            text-align: center;
        }
        .auto-style19 {
            height: 26px;
            width: 435px;
        }
        .auto-style20 {
            width: 435px;
            text-align: center;
        }
        .auto-style21 {
            width: 435px;
            text-align: right;
        }
        .auto-style22 {
            width: 314px;
        }
        .auto-style23 {
            width: 435px;
            height: 27px;
        }
        .auto-style24 {
            height: 26px;
            width: 314px;
        }
        .auto-style25 {
            width: 314px;
            text-align: center;
        }
        .auto-style26 {
            height: 26px;
            width: 314px;
            text-align: center;
        }
        .auto-style27 {
            width: 314px;
            height: 27px;
        }
        .auto-style28 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1" style="background-color:burlywood">
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="connectionStateLb" runat="server" Text="..."></asp:Label>
                </td>
                <td class="auto-style24"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Heavy" Text="Conectati-va"></asp:Label>
                </td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Nume utilizator: "></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="numeUtilizatorTb" runat="server" Width="340px" CssClass="auto-style28"></asp:TextBox>
                </td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Parola: "></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="parolaTb" runat="server" Width="342px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="loginStateLb" runat="server" Text="..."></asp:Label>
                </td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style26">
                    <asp:Button ID="conectareBtn" runat="server" Text="Conectare" Width="194px" OnClick="conectareBtn_Click" Font-Names="Franklin Gothic Heavy" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" />
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Button ID="registerBtn" runat="server" OnClick="registerBtn_Click" Text="Inregistrare" Width="233px" Font-Names="Franklin Gothic Heavy" />
                </td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style24"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style26"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
