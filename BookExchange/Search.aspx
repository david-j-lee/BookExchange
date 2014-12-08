<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Expected Value</th>
            <th>Course</th>
        </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Title")%>' NavigateUrl='<%# String.Concat("~/User/Post/BookDetails.aspx?Id=", Eval("Id")) %>' ></asp:HyperLink></td>
                        <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("Author") %>'></asp:Label></td>
                        <td><asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label></td>
                        <td><asp:Label ID="Label4" runat="server" Text='<%# Eval("Major") %>'></asp:Label></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        
    </table>
</asp:Content>

