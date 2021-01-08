<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="SearchCarPage.aspx.cs" Inherits="Cars_Selling.SearchCarPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: darksalmon">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1228px;
            height: 405px;
        }
        .auto-style14 {
            height: 27px;
            width: 409px;
        }
        .auto-style15 {
            text-align: center;
            height: 27px;
            width: 408px;
        }
        .auto-style16 {
            text-align: center;
            height: 27px;
            width: 409px;
        }
        .auto-style17 {
            text-align: left;
            height: 27px;
            width: 408px;
        }
        .auto-style18 {
            text-align: left;
            height: 27px;
            width: 409px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="connectionStatusLb" runat="server" Text="..."></asp:Label>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style14"></td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">
                    <asp:GridView ID="GridView1" runat="server" Width="345px" BackColor="#339933" ForeColor="White" BorderColor="Yellow">
                        <FooterStyle BorderColor="#009933" BorderStyle="Double" ForeColor="#660066" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label1" runat="server" Text="Model masina: " Font-Names="Franklin Gothic Heavy" ForeColor="White"></asp:Label>
                    <asp:TextBox ID="numeModelMasinaTb" runat="server" Width="235px" BackColor="#FFFF99"></asp:TextBox>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Button ID="searchBtn" runat="server" OnClick="searchBtn_Click" Text="Cautare" Width="124px" BackColor="#009933" BorderColor="Yellow" Font-Names="Franklin Gothic Heavy" ForeColor="White" />
                </td>
                <td class="auto-style18">
                    <asp:Button ID="CancelBtn" runat="server" OnClick="CancelBtn_Click" Text="Cancel" Width="121px" BackColor="#009933" BorderColor="Yellow" Font-Names="Franklin Gothic Heavy" ForeColor="White" />
                </td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
