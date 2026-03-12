<%@ Page Title="" Language="C#" MasterPageFile="~/QUANLY/QUANLY.master" AutoEventWireup="true" CodeFile="theloai.aspx.cs" Inherits="QUANLY_theloai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-box">

    <h2>Nhập Thông Tin Mới</h2>

    <div class="form-group">
        <label>Mã Thể Loại</label>
        <asp:TextBox ID="txtMTL" runat="server" CssClass="input"></asp:TextBox>
    </div>

    <div class="form-group">
        <label>Tên Thể Loại</label>
        <asp:TextBox ID="txtTenTL" runat="server" CssClass="input"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Button ID="Button1" runat="server" Text="Thêm"
            OnClick="Button1_Click" CssClass="btn-them"/>
    </div>

    <div class="table-box">
        <asp:GridView ID="GridView_TL" runat="server" CssClass="grid"></asp:GridView>
    </div>

</div>
</asp:Content>

