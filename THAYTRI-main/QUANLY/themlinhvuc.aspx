<%@ Page Title="" Language="C#" MasterPageFile="~/QUANLY/QUANLY.master" AutoEventWireup="true" CodeFile="themlinhvuc.aspx.cs" Inherits="QUANLY_themlinhvuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-box">

    <h2>Nhập Thông Tin Mới</h2>

    <div class="form-group">
        <label>Mã lĩnh vực</label>
        <asp:TextBox ID="txtMLV" runat="server" CssClass="input"></asp:TextBox>
    </div>

    <div class="form-group">
        <label>Tên lĩnh vực</label>
        <asp:TextBox ID="txtTenLV" runat="server" CssClass="input"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Button ID="btTHEM" runat="server" OnClick="btTHEM_Click" Text="Thêm" CssClass="btn-them" />
    </div>

    <div class="table-box">
        <asp:GridView 
ID="GridView_LV" 
runat="server"
AutoGenerateColumns="false"
CssClass="grid">

<Columns>

<asp:BoundField DataField="MaLinhVuc" HeaderText="Mã lĩnh vực" />
<asp:BoundField DataField="TenLinhVuc" HeaderText="Tên lĩnh vực" />

<asp:TemplateField HeaderText="Sửa">
<ItemTemplate>
<a href='sualinhvuc.aspx?id=<%# Eval("MaLinhVuc") %>' 
class="btn-edit">Sửa</a>
</ItemTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="Xóa">
<ItemTemplate>
<a href='xoalinhvuc.aspx?id=<%# Eval("MaLinhVuc") %>' 
class="btn-delete"
onclick="return confirm('Bạn có chắc muốn xóa?')">
Xóa
</a>
</ItemTemplate>
</asp:TemplateField>

</Columns>
</asp:GridView>
    </div>

</div>
</asp:Content>

