<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TRANGCHU.aspx.cs" Inherits="TRANGCHU" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>Sách mới </h1>
    </div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" DataSourceID="AccessDataSource_SM" RepeatColumns="5">

        <ItemTemplate>
            <table cellpadding="0" cellspacing="0" class="auto-style3">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink27" runat="server" Class="alink" NavigateUrl='<%# Eval("MaSach", "trangchitiet.aspx?MaSach={0}") %>'>
                            <div class="book-card">

                                <img src="<%# Eval("HinhAnh") %>" class="book-img">

                                <div class="book-name">
                                    <%# Eval("TenSach") %>
                                </div>

                                <div class="book-price">
                                    <%# String.Format("{0:N0}", Eval("GiaBan")) %> đ
                                </div>

                            </div>
                        </asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="AccessDataSource_SM" runat="server" DataFile="~/Data/BanSach.mdb" SelectCommand="SELECT TOP 5 * FROM Sach 
ORDER BY id DESC;"></asp:AccessDataSource>
    <div class="a_xemthem">
    </div>

    <div>
        <h1>Sách Văn học </h1>
    </div>
    <asp:DataList ID="DataList2" runat="server" DataKeyField="MaSach" DataSourceID="AccessDataSource1" RepeatColumns="5">

        <ItemTemplate>
            <table cellpadding="0" cellspacing="0" class="auto-style3">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink27" runat="server" Class="alink" NavigateUrl='<%# Eval("MaSach", "trangchitiet.aspx?MaSach={0}") %>'>
                            <div class="book-card">

                                <img src="<%# Eval("HinhAnh") %>" class="book-img">

                                <div class="book-name">
                                    <%# Eval("TenSach") %>
                                </div>

                                <div class="book-price">
                                    <%# String.Format("{0:N0}", Eval("GiaBan")) %> đ
                                </div>

                            </div>
                        </asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/Data/BanSach.mdb" SelectCommand="SELECT TOP 10 * FROM Sach WHERE MaLinhVuc='VH' ORDER BY id DESC;"></asp:AccessDataSource>
    <div class="a_xemthem" style="margin-left: 40px ">
        <asp:HyperLink ID="HyperLink2" Class="alink" runat="server" NavigateUrl="sanpham.aspx?malv=VH" >Xem Thêm ></asp:HyperLink>
    </div>
</asp:Content>


