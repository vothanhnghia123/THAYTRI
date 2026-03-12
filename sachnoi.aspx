<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sachnoi.aspx.cs" Inherits="sachnoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" DataSourceID="AccessDataSource1" RepeatColumns="5">
        <ItemTemplate>
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
        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/Data/BanSach.mdb" SelectCommand="select *
from Sach
where MaTheLoai='SN'"></asp:AccessDataSource>
</asp:Content>

