<%@ Page Title="" Language="C#" MasterPageFile="~/QUANLY/QUANLY.master" AutoEventWireup="true" CodeFile="theloai.aspx.cs" Inherits="QUANLY_theloai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td colspan="2" style="text-align: center">Nhận Thông Tin Mới</td>
        </tr>
        <tr>
            <td>Mã Thể Loại</td>
            <td>
                <asp:TextBox ID="txtMTL" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tên Thể Loại</td>
            <td>
                <asp:TextBox ID="txtTenTL" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Thêm" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView_TL" runat="server">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

