<%@ Page Title="" Language="C#" MasterPageFile="~/QUANLY/QUANLY.master" AutoEventWireup="true" CodeFile="sualinhvuc.aspx.cs" Inherits="QUANLY_sualinhvuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="form-box">

<h2>Sửa lĩnh vực</h2>

<div class="form-group">
<label>Mã lĩnh vực</label>
<asp:TextBox ID="txtMLV" runat="server" CssClass="input" ReadOnly="true"></asp:TextBox>
</div>

<div class="form-group">
<label>Tên lĩnh vực</label>
<asp:TextBox ID="txtTenLV" runat="server" CssClass="input"></asp:TextBox>
</div>

<div class="form-group">
<asp:Button ID="btnSua" runat="server"
Text="Cập nhật"
OnClick="btnSua_Click"
CssClass="btn-update"/>
</div>

</div>
</asp:Content>

