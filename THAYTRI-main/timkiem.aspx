<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="timkiem.aspx.cs" Inherits="timkiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="search-page">

    <h2>Kết quả tìm kiếm</h2>

    <asp:Repeater ID="rptSach" runat="server">

        <ItemTemplate>

            <div class="search-item">

                <!-- ảnh sách -->
                <div class="item-img">
                    <img src='<%# Eval("HinhAnh") %>' />
                </div>

                <!-- thông tin -->
                <div class="item-info">
                    <div class="item-name">
                        <%# Eval("TenSach") %>
                    </div>

                    <a class="item-detail"
                       href='trangchitiet.aspx?MaSach=<%# Eval("MaSach") %>'>
                       Xem chi tiết
                    </a>
                </div>

            </div>

        </ItemTemplate>

    </asp:Repeater>

</div>

</asp:Content>

