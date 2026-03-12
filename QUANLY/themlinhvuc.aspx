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
        <asp:GridView ID="GridView_LV" runat="server" CssClass="grid"></asp:GridView>
    </div>

</div>
</asp:Content>

