<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="FeedbackPage.aspx.cs" Inherits="Cars_Selling.FeedbackPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: darksalmon">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1228px;
            height: 262px;
        }
        .auto-style10 {
            height: 26px;
            width: 408px;
        }
        .auto-style11 {
            height: 26px;
            width: 409px;
        }
        .auto-style12 {
            height: 34px;
            width: 408px;
        }
        .auto-style13 {
            height: 34px;
            width: 409px;
        }
        .auto-style14 {
            height: 26px;
            width: 409px;
            text-align: center;
        }
        .auto-style15 {
            height: 34px;
            width: 409px;
            text-align: center;
        }
        .auto-style16 {
            height: 26px;
            width: 408px;
            text-align: center;
        }
        .auto-style17 {
            height: 39px;
            width: 408px;
        }
        .auto-style18 {
            height: 39px;
            width: 409px;
            text-align: center;
        }
        .auto-style19 {
            height: 39px;
            width: 409px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style16">Cu cine avem onoarea?</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:TextBox ID="identityTB" runat="server" Width="392px"></asp:TextBox>
            </td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style14">
                <asp:Label ID="Label1" runat="server" Text="Va placut site-ul nostru?"></asp:Label>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style14">
                <asp:TextBox ID="cePlacutTB" runat="server" Width="396px"></asp:TextBox>
            </td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label2" runat="server" Text="Ce nu va placut?"></asp:Label>
            </td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style14">
                <asp:TextBox ID="ceNuPlacutTB" runat="server" Width="399px"></asp:TextBox>
            </td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label3" runat="server" Text="Ce ati mai dori sa ne spuneti?"></asp:Label>
            </td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11">
                <asp:TextBox ID="alteleTB" runat="server" Height="68px" Width="396px"></asp:TextBox>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style18">
                <asp:Label ID="statusLbl" runat="server" Text="..."></asp:Label>
            </td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="connectionStatusLbl" runat="server" Text="..."></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:Button ID="sendFeedBackBtn" runat="server" OnClick="sendFeedBackBtn_Click" Text="Submit" Width="152px" />
            </td>
            <td class="auto-style13">
                <asp:Button ID="cancelBtn" runat="server" OnClick="cancelBtn_Click" Text="Cancel" Width="98px" />
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
