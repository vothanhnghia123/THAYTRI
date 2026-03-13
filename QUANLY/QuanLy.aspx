<%@ Page Title="" Language="C#" MasterPageFile="~/QUANLY/QUANLY.master" AutoEventWireup="true" CodeFile="QuanLy.aspx.cs" Inherits="QUANLY_QuanLy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="dashboard">

<div class="box">
<h3>Tổng sách</h3>
<asp:Label ID="lblTongSach" runat="server"></asp:Label>
</div>

<div class="box">
<h3>Lĩnh vực</h3>
<asp:Label ID="lblLinhVuc" runat="server"></asp:Label>
</div>

<div class="box">
<h3>Thể loại</h3>
<asp:Label ID="lblTheLoai" runat="server"></asp:Label>
</div>

</div>
</asp:Content>

