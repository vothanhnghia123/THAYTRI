<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="vanhoc.aspx.cs" Inherits="vanhoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" DataSourceID="AccessDataSource_VH" RepeatColumns="4">
        <ItemTemplate>
            <table  class="auto-style3">
                <tr>
                    <td >
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
        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="AccessDataSource_VH" runat="server" DataFile="~/Data/BanSach.mdb" SelectCommand="select *
from Sach
where MaLinhVuc='VH'"></asp:AccessDataSource>
</asp:Content>

