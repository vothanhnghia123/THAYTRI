    <%@ Page Title="" Language="C#" MasterPageFile="~/QUANLY/QUANLY.master" AutoEventWireup="true" CodeFile="suasach.aspx.cs" Inherits="suasach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sua-sach-page">
    <h2>Sửa sách</h2>

<table class="form-table">

<tr>
<td>Tên sách</td>
<td>
<asp:TextBox ID="txtTenSach" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td>Giá bán</td>
<td>
<asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td>Tác giả</td>
<td>
<asp:TextBox ID="txtTacGia" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td>Nhà xuất bản</td>
<td>
<asp:TextBox ID="txtNXB" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td>Nhà cung cấp</td>
<td>
<asp:TextBox ID="txtNCC" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td>Hình thức bìa</td>
<td>
<asp:TextBox ID="txtBia" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td>Năm xuất bản</td>
<td>
<asp:TextBox ID="txtNamXB" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td>Số trang</td>
<td>
<asp:TextBox ID="txtSoTrang" runat="server"></asp:TextBox>
</td>
</tr>

    <tr>
<td>Ảnh hiện tại</td>
<td>
<asp:Image ID="imgSach" runat="server" Width="120" />
</td>
</tr>

<tr>
<td>Upload ảnh mới</td>
<td>
<asp:FileUpload ID="FileUpload_ANH" runat="server" />
</td>
</tr>

<tr>
<td>Mô tả</td>
<td>
<asp:TextBox ID="txtMoTa" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
</td>
</tr>

<tr>
<td>Nội dung tóm tắt</td>
<td>
<asp:TextBox ID="txtTomTat" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
</td>
</tr>

<tr>
<td>Chú thích</td>
<td>
<asp:TextBox ID="txtChuThich" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td></td>
<td>
<asp:Button 
ID="btnSua" 
runat="server" 
Text="Cập nhật" 
OnClick="btnSua_Click"
CssClass="btn-update"/>
</td>
</tr>

</table>
        </div>
</asp:Content>

