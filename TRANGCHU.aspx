<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TRANGCHU.aspx.cs" Inherits="TRANGCHU" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" DataSourceID="AccessDataSource_SM" RepeatColumns="4">
        <ItemTemplate>
            <table cellpadding="0" cellspacing="0" class="auto-style3">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink27" runat="server">
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
    <asp:AccessDataSource ID="AccessDataSource_SM" runat="server" DataFile="~/Data/BanSach.mdb" SelectCommand="SELECT TOP 10 * FROM Sach 
ORDER BY id DESC;"></asp:AccessDataSource>


</asp:Content>

