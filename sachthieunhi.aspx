<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="sachthieunhi.aspx.cs" Inherits="sachthieunhi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" DataSourceID="AccessDataSource_STN" RepeatColumns="4">
        <ItemTemplate>
            <table class="auto-style3">
                <tr>
                    <td>
                        <div class="card" style="width: 18rem;">
                          <img src="<%# Eval("HinhAnh") %>" class="card-img-top" alt="...">
                          <div class="card-body">
                            
                            <a href="#" class="btn btn-primary"><%# Eval("TenSach") %></a>
                              <h5 class="card-title"><%# Eval("GiaBan") %></h5>
                          </div>
                        </div>

                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="AccessDataSource_STN" runat="server" DataFile="~/Data/BanSach.mdb" SelectCommand="select *
from Sach
Where MaLinhVuc='STN'"></asp:AccessDataSource>
</asp:Content>

