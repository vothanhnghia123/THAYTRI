<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ngontinh.aspx.cs" Inherits="ngontinh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" DataSourceID="AccessDataSource1" RepeatColumns="5">
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
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/Data/BanSach.mdb" SelectCommand="select * from Sach Where MaTheLoai='NT'"></asp:AccessDataSource>
</asp:Content>

