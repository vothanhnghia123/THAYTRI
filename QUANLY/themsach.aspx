<%@ Page Title="" Language="C#" MasterPageFile="~/QUANLY/QUANLY.master" AutoEventWireup="true" CodeFile="themsach.aspx.cs" Inherits="QUANLY_themsach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-box">

    <h2>Nhập Thông Tin Sách</h2>

    <table class="form-table">

        <tr>
            <td>Lĩnh Vực</td>
            <td>
                <asp:DropDownList ID="cboLinhVuc" runat="server"
                    DataTextField="MaLinhVuc"
                    DataValueField="MaLinhVuc"
                    CssClass="input">
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>Thể Loại</td>
            <td>
                <asp:DropDownList ID="cboTheLoai" runat="server"
                    DataTextField="MaTheLoai"
                    DataValueField="MaTheLoai"
                    CssClass="input">
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>Mã Sách</td>
            <td>
                <asp:TextBox ID="txtMaS" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Tên Sách</td>
            <td>
                <asp:TextBox ID="txtTenS" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Mô Tả</td>
            <td>
                <asp:TextBox ID="txtMoTa" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Nội dung tóm tắt</td>
            <td>
                <asp:TextBox ID="txtNDTT" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Giá Bán</td>
            <td>
                <asp:TextBox ID="txtGB" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Tác Giả</td>
            <td>
                <asp:TextBox ID="txtTacGia" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Hình Ảnh</td>
            <td>
                <asp:FileUpload ID="FileUpload_ANH" runat="server" CssClass="input" />
            </td>
        </tr>

        <tr>
            <td>Chú Thích</td>
            <td>
                <asp:TextBox ID="txtChuThich" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Nhà Xuất Bản</td>
            <td>
                <asp:TextBox ID="txtNXB" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Nhà Cung Cấp</td>
            <td>
                <asp:TextBox ID="txtNCC" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Hình Thức Bìa</td>
            <td>
                <asp:TextBox ID="txtBIA" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Năm Xuất Bản</td>
            <td>
                <asp:TextBox ID="txtNamXB" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Số Trang</td>
            <td>
                <asp:TextBox ID="txtSoT" runat="server" CssClass="input"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Button ID="btTHEM" runat="server"
                    Text="Thêm Sách"
                    OnClick="btTHEM_Click"
                    CssClass="btn-them"/>
            </td>
        </tr>

    </table>

    <div class="table-box">
        <asp:GridView ID="GridView_S" runat="server" CssClass="grid"></asp:GridView>
    </div>

</div>
</asp:Content>

