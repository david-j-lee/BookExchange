<%@ Page Title="Manager - ManageTradeRequests" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ManageTradeRequests.aspx.cs" Inherits="Manager_ManageTradeRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        height: 23px;
    }
    .auto-style2 {
        height: 41px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">    
    <h1>Manage Trade Requests</h1>
    <table>
        <tr>
            <th>Search by email</th>
        </tr>
        <tr>
            <td><asp:TextBox ID="txtEmailSearch" runat="server"></asp:TextBox></td>
            <td><asp:Button ID="btnGo" runat="server" Text="GO" OnClick="btnGo_Click" /></td>
        </tr>
    </table>
    <table>
        <tr>
            <th class="auto-style1">Id</th>
            <th class="auto-style1">UserEmail</th>
            <th class="auto-style1">Title</th>
            <th class="auto-style1">Author</th>
            <th class="auto-style1">TradersEmail</th>
            <th class="auto-style1">Request Date</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>                    
                    <td><asp:Label ID="Label4" runat="server" Text='<%# Eval("Id") %>'></asp:Label></td>
                    <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("myEmail") %>'></asp:Label></td>
                    <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("Title") %>'></asp:Label></td>
                    <td><asp:Label ID="Label7" runat="server" Text='<%# Eval("Author") %>'></asp:Label></td>
                    <td><asp:Label ID="Label3" runat="server" Text='<%# Eval("urEmail") %>'></asp:Label></td>
                    <td><asp:Label ID="Label5" runat="server" Text='<%# Eval("RequestDate") %>'></asp:Label></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>

