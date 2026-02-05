<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            border:1px solid;
        }
        .auto-style2 {
            color: #FF0000;
        }
        .auto-style3 {
            width: 86px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" cellpadding="2" cellspacing="2" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3" style="text-align: center; background-color: #0000FF"><strong>LOGIN</strong></td>
            </tr>
            <tr>
                <td class="auto-style3" rowspan="4">
                    <asp:Image ID="Image1" runat="server" Height="166px" ImageUrl="~/Images/HinhKhoa.jpg" Width="188px" />
                </td>
                <td>Usename</td>
                <td>
                    <asp:TextBox ID="txtUse" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btdangnhap" runat="server" OnClick="btdangnhap_Click" style="text-align: center" Text="Button" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lbl_TB" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
