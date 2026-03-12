<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="giohang.aspx.cs" Inherits="giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView 
ID="GridView1"
runat="server"
CssClass="cart-table"
AutoGenerateColumns="False"
DataKeyNames="MaSach"
OnRowDeleting="GridView1_RowDeleting">

    <Columns>

        <asp:ImageField 
        DataImageUrlField="HinhAnh" HeaderText="Ảnh" />

        <asp:BoundField DataField="TenSach" HeaderText="Tên sách"/>

        <asp:BoundField DataField="GiaBan" HeaderText="Giá" DataFormatString="{0:N0}"/>

        <asp:BoundField DataField="SoLuong" HeaderText="Số lượng"/>

        <asp:TemplateField HeaderText="Thành tiền">
            <ItemTemplate>
                <%# Convert.ToDouble(Eval("GiaBan")) * Convert.ToInt32(Eval("SoLuong")) %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:CommandField ShowDeleteButton="True" DeleteText="Xóa"/>

    </Columns>
</asp:GridView>

<br />

<div class="cart-total">
    Tổng tiền:
    <span>
        <asp:Label ID="lblTongTien" runat="server"></asp:Label>
    </span>
</div>



    </asp:Content>

