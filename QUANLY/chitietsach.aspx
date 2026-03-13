<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chitietsach.aspx.cs" Inherits="QUANLY_chitietsach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        .container{
        width:1100px;
        margin:auto;
        font-family:Arial;
        }

        .title{
        margin-bottom:20px;
        }

        .book-card{
        display:flex;
        gap:40px;
        background:white;
        padding:25px;
        border-radius:10px;
        box-shadow:0 0 10px rgba(0,0,0,0.1);
        }

        .book-image{
        width:220px;
        }

        .img-book{
        width:200px;
        border-radius:6px;
        box-shadow:0 3px 8px rgba(0,0,0,0.2);
        }

        .book-info{
        flex:1;
        }

        .book-name{
        margin-bottom:20px;
        font-size:28px;
        }

        .info-row{
        margin-bottom:10px;
        font-size:18px;
        }

        .info-row span{
        font-weight:bold;
        margin-right:10px;
        }

        .content-box{
        margin-top:30px;
        background:white;
        padding:25px;
        border-radius:10px;
        box-shadow:0 0 10px rgba(0,0,0,0.08);
        }

        .content-box h3{
        margin-top:20px;
        }

        .content-box p{
        line-height:1.7;
        text-align:justify;
        }

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">

<h1 class="title">Chi tiết sách</h1>

<div class="book-card">

<div class="book-image">
<asp:Image ID="imgSach" runat="server" CssClass="img-book"/>
</div>

<div class="book-info">

<h2 class="book-name">
<asp:Label ID="lblTenSach" runat="server"></asp:Label>
</h2>

<div class="info-row">
<span>Giá:</span>
<asp:Label ID="lblGia" runat="server"></asp:Label> VNĐ
</div>

<div class="info-row">
<span>Tác giả:</span>
<asp:Label ID="lblTacGia" runat="server"></asp:Label>
</div>

<div class="info-row">
<span>Nhà xuất bản:</span>
<asp:Label ID="lblNXB" runat="server"></asp:Label>
</div>

<div class="info-row">
<span>Nhà cung cấp:</span>
<asp:Label ID="lblNCC" runat="server"></asp:Label>
</div>
    <div class="info-row">
<span>Hình thức bìa:</span>
<asp:Label ID="lblBia" runat="server"></asp:Label>
</div>

<div class="info-row">
<span>Năm xuất bản:</span>
<asp:Label ID="lblNamXB" runat="server"></asp:Label>
</div>

<div class="info-row">
<span>Số trang:</span>
<asp:Label ID="lblSoTrang" runat="server"></asp:Label>
</div>

</div>

</div>

<div class="content-box">

<h3>Mô tả</h3>
<p>
<asp:Label ID="lblMoTa" runat="server"></asp:Label>
</p>

<h3>Nội dung tóm tắt</h3>
<p>
<asp:Label ID="lblTomTat" runat="server"></asp:Label>
</p>

<h3>Chú thích</h3>
<p>
<asp:Label ID="lblChuThich" runat="server"></asp:Label>
</p>

</div>

</div>

    </form>
</body>
</html>
