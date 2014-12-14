<%@ Page Title="Manager - Manage Users" Language="C#" MasterPageFile="~/Manager.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="Managing_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Manage Users</h1>
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
            <th>Email</th>
            <th>Name</th>
            <th>Created On</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>                    
                    <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("Email") %>'></asp:Label></td>
                    <td><asp:Label ID="Label2" runat="server" Text='<%# String.Concat(Eval("FirstName")," ",Eval("LastName")) %>'></asp:Label></td>
                    <td><asp:Label ID="Label3" runat="server" Text='<%# Eval("CreatedOn") %>'></asp:Label></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>

