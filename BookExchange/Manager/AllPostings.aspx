<%@ Page Title="Manager - All Postings" Language="C#" MasterPageFile="~/Manager.master" AutoEventWireup="true" CodeFile="AllPostings.aspx.cs" Inherits="Manager_AllPostings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Manage Postings</h2>
    <table>
        <tr>
            <th>Search by email</th>
        </tr>
        <tr>
            <td></td>
            <td><asp:TextBox ID="txtEmailSearch" runat="server"></asp:TextBox></td>
            <td><asp:Button ID="btnGo" runat="server" Text="GO" OnClick="btnGo_Click" /></td>
        </tr>
    </table>
    <table>
        <tr>
            <th>Status</th>
            <th>UserEmail</th>
            <th>Title</th>
            <th>Author</th>
            <th>TradersEmail</th>            
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text='<%# Eval("status") %>'></asp:Label></td>                    
                    <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("UserEmail") %>'></asp:Label></td>                   
                    <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("Title") %>'></asp:Label></td>
                    <td><asp:Label ID="Label3" runat="server" Text='<%# Eval("Author") %>'></asp:Label></td>
                    <td><asp:Label ID="Label5" runat="server" Text='<%# Eval("TradersEmail") %>'></asp:Label></td>                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>

