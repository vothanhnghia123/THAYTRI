<%@ Page Title="" Language="C#" MasterPageFile="~/QUANLY/QUANLY.master" AutoEventWireup="true" CodeFile="themsach.aspx.cs" Inherits="QUANLY_themsach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td colspan="2" style="text-align: center">Nhập Thông Tin Mới</td>
        </tr>
        <tr>
            <td class="auto-style4">Lĩnh Vực</td>
            <td class="auto-style4">
                <asp:DropDownList ID="cboLinhVuc" runat="server"  DataTextField="MaLinhVuc" DataValueField="MaLinhVuc">
                </asp:DropDownList>
                <asp:AccessDataSource ID="AccessDataSource_LV" runat="server" DataFile="~/Data/BanSach.mdb" SelectCommand="SELECT * FROM [LinhVuc]"></asp:AccessDataSource>
            </td>
        </tr>
        <tr>
            <td>Thể Loại</td>
            <td>
                <asp:DropDownList ID="cboTheLoai" runat="server"  DataTextField="MaTheLoai" DataValueField="MaTheLoai">
                </asp:DropDownList>
                <asp:AccessDataSource ID="AccessDataSource_TL" runat="server" DataFile="~/Data/BanSach.mdb" SelectCommand="SELECT * FROM [TheLoai]"></asp:AccessDataSource>
            </td>
        </tr>
        <tr>
            <td>Mã Sách</td>
            <td>
                <asp:TextBox ID="txtMaS" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tên Sách</td>
            <td>
                <asp:TextBox ID="txtTenS" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mô Tả</td>
            <td>
                <asp:TextBox ID="txtMoTa" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Nội dung tóm tắt</td>
            <td>
                <asp:TextBox ID="txtNDTT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Giá Bán</td>
            <td>
                <asp:TextBox ID="txtGB" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tác Giả</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtTacGia" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Hình Ảnh</td>
            <td>
                <asp:FileUpload ID="FileUpload_ANH" runat="server" />
            </td>
        </tr>
        <tr>
            <td>Chú Thích</td>
            <td>
                <asp:TextBox ID="txtChuThich" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Nhà Xuất Bản</td>
            <td>
                <asp:TextBox ID="txtNXB" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Nhà Cung Cấp</td>
            <td>
                <asp:TextBox ID="txtNCC" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Hình Thức Bìa</td>
            <td>
                <asp:TextBox ID="txtBIA" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Năm Xuất Bản</td>
            <td>
                <asp:TextBox ID="txtNamXB" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Số Trang</td>
            <td>
                <asp:TextBox ID="txtSoT" runat="server"></asp:TextBox>
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
                <asp:GridView ID="GridView_S" runat="server">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

