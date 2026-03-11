<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="trangchitiet.aspx.cs" Inherits="trangchitiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" DataSourceID="AccessDataSource1">
        <ItemTemplate>
            <table cellpadding="0" cellspacing="0" class="auto-style3">
                <tr>
                    <td>
                        <asp:Image ID="Image9" runat="server" ImageUrl='<%# Eval("HinhAnh") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/Data/BanSach.mdb" SelectCommand="SELECT * FROM [Sach] WHERE ([MaSach] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaSach" QueryStringField="MaSach" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>

