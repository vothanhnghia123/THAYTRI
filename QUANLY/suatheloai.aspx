<%@ Page Title="" Language="C#" MasterPageFile="~/QUANLY/QUANLY.master" AutoEventWireup="true" CodeFile="suatheloai.aspx.cs" Inherits="QUANLY_suatheloai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="form-box">

<h2>Sửa Thể Loại</h2>

<div class="form-group">
<label>Mã Thể Loại</label>
<asp:TextBox ID="txtMTL" runat="server" ReadOnly="true"></asp:TextBox>
</div>

<div class="form-group">
<label>Tên Thể Loại</label>
<asp:TextBox ID="txtTenTL" runat="server"></asp:TextBox>
</div>

<div class="form-group">
<label>Lĩnh Vực</label>
<asp:DropDownList ID="ddlLinhVuc" runat="server"></asp:DropDownList>
</div>

<asp:Button ID="btnSua" runat="server" Text="Cập nhật"
OnClick="btnSua_Click" CssClass="btn-update"/>

</div>
</asp:Content>

