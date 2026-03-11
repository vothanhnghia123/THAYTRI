<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="trangchitiet.aspx.cs" Inherits="trangchitiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSach" DataSourceID="AccessDataSource1">
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink27" runat="server">HyperLink</asp:HyperLink>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/Data/BanSach.mdb" SelectCommand="SELECT * FROM [Sach]"></asp:AccessDataSource>
</asp:Content>

