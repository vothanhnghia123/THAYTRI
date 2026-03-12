<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="trangchitiet.aspx.cs" Inherits="trangchitiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" DataSourceID="AccessDataSource1">
        <ItemTemplate>
            <div class="container">

    <!-- Hình ảnh -->
    <div class="img-book">

        <asp:Image ID="imgSach" runat="server"
            ImageUrl='<%# Eval("HinhAnh") %>'
            CssClass="card-img-top" />

    </div>


    <!-- Thông tin -->
    <div class="info-book">

        <asp:Label ID="lblMaSach" runat="server" Text='<%# Eval("MaSach") %>' Visible="false"></asp:Label>

        <h1>
            <asp:Label ID="lblTenSach" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label>
        </h1>

        <div class="row-info">

            <div>
                Tác giả:
                <asp:Label ID="lblTacGia" runat="server"><%# Eval("TacGia") %></asp:Label>
            </div>

            <div>
                Nhà cung cấp:
                <asp:Label ID="lblNhaCC" runat="server"><%# Eval("NhaCC") %></asp:Label>
            </div>

        </div>

        <div class="price">
            <asp:Label ID="lblGiaBan" runat="server"><%# String.Format("{0:N0}", Eval("GiaBan")) %></asp:Label> VNĐ
            <asp:Label ID="lblGiaRaw" runat="server" Visible="false" Text='<%# Eval("GiaBan") %>'></asp:Label>
        </div>


        <div class="detail">

            <table>

                <tr>
                    <td>Nhà xuất bản</td>
                    <td>
                        <asp:Label ID="lblNXB" runat="server"><%# Eval("NhaXB") %></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>Năm XB</td>
                    <td>
                        <asp:Label ID="lblNamXB" runat="server"><%# Eval("NamXB") %></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>Số trang</td>
                    <td>
                        <asp:Label ID="lblSoTrang" runat="server"><%# Eval("SoTrang") %></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>Hình thức bìa</td>
                    <td>
                        <asp:Label ID="lblBia" runat="server"><%# Eval("HinhThucBia") %></asp:Label>
                    </td>
                </tr>

            </table>

        </div>


        <asp:Button ID="btnCart" runat="server" Text="Thêm vào giỏ hàng" CssClass="btn btn-cart" OnClick="btnCart_Click" />

        <asp:Button ID="btnBuy" runat="server" Text="Mua ngay" CssClass="btn btn-buy" />

    </div>

</div>



<div class="container desc">

    <div>

        <h2>Mô tả</h2>

        <asp:Label ID="lblMoTa" runat="server"><%# Eval("MoTa") %></asp:Label>

        <h2>Nội dung tóm tắt</h2>

        <asp:Label ID="lblTomTat" runat="server"><%# Eval("NoiDungTomTat") %></asp:Label>

    </div>

</div>

        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/Data/BanSach.mdb" SelectCommand="SELECT * FROM [Sach] WHERE ([MaSach] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaSach" QueryStringField="MaSach" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <div id="thongbao" style="
position:fixed;
top:20px;
right:20px;
background:#28a745;
color:white;
padding:12px 20px;
border-radius:6px;
display:none;
z-index:999;
font-weight:bold;">
✔ Đã thêm vào giỏ hàng
</div>
    <script>
        function showThongBao() {
            var tb = document.getElementById("thongbao");
            tb.style.display = "block";

            setTimeout(function () {
                tb.style.display = "none";
            }, 2000);
        }
</script>
</asp:Content>

