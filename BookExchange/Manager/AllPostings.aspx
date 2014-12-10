<%@ Page Title="Manager - All Postings" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AllPostings.aspx.cs" Inherits="Manager_AllPostings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Manage Postings</h1>
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
            <th>Id</th>
            <th>UserEmail</th>
            <th>Title</th>
            <th>Author</th>
            <th>TradersEmail</th>
            <th>ImageURL</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>                    
                    <td><asp:Label ID="Label4" runat="server" Text='<%# Eval("Id") %>'></asp:Label></td>
                    <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("UserEmail") %>'></asp:Label></td>                   
                    <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("Title") %>'></asp:Label></td>
                    <td><asp:Label ID="Label3" runat="server" Text='<%# Eval("Author") %>'></asp:Label></td>
                    <td><asp:Label ID="Label5" runat="server" Text='<%# Eval("TradersEmail") %>'></asp:Label></td>
                    <td><asp:Label ID="Label6" runat="server" Text='<%# Eval("ImageURL") %>'></asp:Label></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>

