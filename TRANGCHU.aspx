<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TRANGCHU.aspx.cs" Inherits="TRANGCHU" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>Sách mới </h1>
    </div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" DataSourceID="AccessDataSource_SM" RepeatColumns="4">

        <ItemTemplate>
            <table cellpadding="0" cellspacing="0" class="auto-style3">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink27" runat="server" NavigateUrl='<%# Eval("MaSach", "trangchitiet.aspx?MaSach={0}") %>'>
                            <div class="card" style="width: 18rem;">
                              <img src="<%# Eval("HinhAnh") %>" class="card-img-top" alt="...">
                              <div class="card-body">

                                <a href="#" class="btn btn-primary aten"><%# Eval("TenSach") %></a>
                            
                                <div class="card-title"><%# Eval("GiaBan") %></div>

                              </div>
                            </div>
                        </asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="AccessDataSource_SM" runat="server" DataFile="~/Data/BanSach.mdb" SelectCommand="SELECT TOP 8 * FROM Sach 
ORDER BY id DESC;"></asp:AccessDataSource>
    <div class="a_xemthem">
        <asp:HyperLink ID="HyperLink1" runat="server">Xem Thêm ></asp:HyperLink>
    </div>

    <div>
        <h1>Sách Văn học </h1>
    </div>
    <asp:DataList ID="DataList2" runat="server" DataKeyField="MaSach" DataSourceID="AccessDataSource1" RepeatColumns="4">

        <ItemTemplate>
            <table cellpadding="0" cellspacing="0" class="auto-style3">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink27" runat="server" NavigateUrl='<%# Eval("MaSach", "trangchitiet.aspx?MaSach={0}") %>'>
                            <div class="card" style="width: 18rem;">
                              <img src="<%# Eval("HinhAnh") %>" class="card-img-top" alt="...">
                              <div class="card-body">

                                <a href="#" class="btn btn-primary aten"><%# Eval("TenSach") %></a>
                            
                                <div class="card-title"><%# Eval("GiaBan") %></div>

                              </div>
                            </div>
                        </asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/Data/BanSach.mdb" SelectCommand="SELECT TOP 8 * FROM Sach WHERE MaLinhVuc='VH' ORDER BY id DESC;"></asp:AccessDataSource>
</asp:Content>


