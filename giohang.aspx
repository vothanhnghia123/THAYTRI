<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="giohang.aspx.cs" Inherits="giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="cart-container">

    <!-- BÊN TRÁI: GIỎ HÀNG -->
    <div class="cart-left">

<asp:GridView 
ID="GridView1"
runat="server"
CssClass="cart-table"
AutoGenerateColumns="False"
ShowHeader="False"
DataKeyNames="MaSach"
OnRowDeleting="GridView1_RowDeleting">

<Columns>

<asp:TemplateField>
<ItemTemplate>

<div class="cart-item">

<div class="item-img">
<img src='<%# Eval("HinhAnh") %>' />
</div>

<div class="item-info">
<div class="item-name">
<%# Eval("TenSach") %>
</div>

<div class="item-price">
<%# Eval("GiaBan","{0:N0}") %> đ
</div>
</div>

<div class="item-qty">
SL: <%# Eval("SoLuong") %>
</div>

<div class="item-total">
<%# Convert.ToDouble(Eval("GiaBan")) * Convert.ToInt32(Eval("SoLuong")) %> đ
</div>

<div class="item-delete">
<asp:LinkButton runat="server" CommandName="Delete">🗑</asp:LinkButton>
</div>

</div>

</ItemTemplate>
</asp:TemplateField>

</Columns>
</asp:GridView>

        <br />

        <div class="cart-total">
            Tổng tiền:
            <asp:Label ID="lblTongTien" runat="server"></asp:Label>
        </div>

    </div>


    <!-- BÊN PHẢI: THÔNG TIN THANH TOÁN -->
    <div class="cart-right">

        <h3>Thông tin khách hàng</h3>

        Họ Và Tên<br />
        <asp:TextBox ID="txtHVT" runat="server" CssClass="input"></asp:TextBox>
        <br /><br />

        Số điện thoại<br />
        <asp:TextBox ID="txtSDT" runat="server" CssClass="input"></asp:TextBox>
        <br /><br />

        Email<br />
        <asp:TextBox ID="txtEmail" runat="server" CssClass="input"></asp:TextBox>
        <br /><br />

        Địa chỉ giao hàng<br />
        <asp:TextBox ID="txtDiaChi" runat="server" CssClass="input"></asp:TextBox>
        <br /><br />

        Phương thức thanh toán<br />
        <asp:DropDownList ID="ddlThanhToan" runat="server">

            <asp:ListItem Text="Thanh toán khi nhận hàng (COD)" Value="COD"></asp:ListItem>

            <asp:ListItem Text="Chuyển khoản ngân hàng" Value="Bank"></asp:ListItem>

            <asp:ListItem Text="Ví điện tử" Value="Ewallet"></asp:ListItem>

        </asp:DropDownList>

        <br /><br />

        <asp:Button 
        ID="btnThanhToan"
        runat="server"
        Text="Thanh toán"
        CssClass="btn-pay"
        OnClick="btnThanhToan_Click"/>

    </div>

</div>

    </asp:Content>

