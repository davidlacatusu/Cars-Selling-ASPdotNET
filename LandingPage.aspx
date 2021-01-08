<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="LandingPage.aspx.cs" Inherits="Cars_Selling.LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: darksalmon">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 654px;
        }
        .auto-style4 {
            width: 226px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style10 {
            width: 226px;
            height: 27px;
        }
        .auto-style11 {
            height: 27px;
        }
        .auto-style12 {
            width: 226px;
            height: 26px;
            text-align: right;
        }
        .auto-style13 {
            height: 26px;
            text-align: left;
            width: 230px;
        }
        .auto-style14 {
            height: 26px;
            width: 230px;
        }
        .auto-style15 {
            height: 27px;
            width: 230px;
        }
        .auto-style16 {
            height: 26px;
            width: 230px;
            text-align: center;
        }
        .auto-style17 {
            width: 226px;
            height: 26px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="connectionLbl" runat="server" Text="Connection Status"></asp:Label>
                    </td>
                    <td class="auto-style14"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12" >
                        <asp:Label ID="Label1" runat="server" Text="ID: " Font-Names="Franklin Gothic Heavy"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="idBox" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label7" runat="server" Text="Marca:" Font-Names="Franklin Gothic Heavy"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="marcaBox" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label3" runat="server" Text="Model:" Font-Names="Franklin Gothic Heavy"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="modelBox" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label4" runat="server" Text="An:" Font-Names="Franklin Gothic Heavy"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="anBox" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label5" runat="server" Text="Motorizare:" Font-Names="Franklin Gothic Heavy"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="motorizareBox" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label6" runat="server" Text="Combustibil: " Font-Names="Franklin Gothic Heavy"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="combustibilBox" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Label ID="statusLbl" runat="server" Text="..." Font-Names="Franklin Gothic Heavy"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Button ID="UpdateBtn" runat="server" OnClick="UpdateBtn_Click" Text="Actualizare masina" Width="170px" BackColor="#009933" BorderColor="Yellow" Font-Names="Franklin Gothic Heavy" ForeColor="White" />
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="addButton" runat="server" Font-Bold="True"  OnClick="addButton_Click" Text="Adaugare masina" Width="170px" BackColor="#009933" BorderColor="Yellow" Font-Names="Franklin Gothic Heavy" ForeColor="White"/>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="exitBtn" runat="server" OnClick="exitBtn_Click" Text="Exit" Width="171px" BackColor="#333399" BorderColor="Yellow" Font-Names="Franklin Gothic Heavy" ForeColor="White"/>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Button ID="deleteBtn" runat="server" OnClick="deleteBtn_Click" Text="Stergere masina" Width="170px" BackColor="#009933" BorderColor="Yellow" Font-Names="Franklin Gothic Heavy" ForeColor="White" />
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="InSpreCautareBtn" runat="server" OnClick="InSpreCautareBtn_Click" Text="Cauta masina" Width="171px" BackColor="#009933" BorderColor="Yellow" Font-Names="Franklin Gothic Heavy" ForeColor="White"/>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="FeedbackBtn" runat="server" Text="FeedBack" Width="171px" BackColor="#333399" BorderColor="Yellow" Font-Names="Franklin Gothic Heavy" ForeColor="White" OnClick="FeedbackBtn_Click"/>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
