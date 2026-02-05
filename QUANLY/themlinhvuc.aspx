<%@ Page Title="" Language="C#" MasterPageFile="~/QUANLY/QUANLY.master" AutoEventWireup="true" CodeFile="themlinhvuc.aspx.cs" Inherits="QUANLY_themlinhvuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td colspan="2" style="text-align: center">Nhập Thông Tin Mới</td>
        </tr>
        <tr>
            <td>Mã lĩnh vực</td>
            <td>
                <asp:TextBox ID="txtMLV" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tên lĩnh vực</td>
            <td>
                <asp:TextBox ID="txtTenLV" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btTHEM" runat="server" OnClick="btTHEM_Click" Text="Thêm" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView_LV" runat="server">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

