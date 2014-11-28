<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PostYourBook.aspx.cs" Inherits="Posting_TradeYourBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <td>Title</td>
            <td><asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></td>
            <td><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
        </tr>        
        <tr>
            <td>Author</td>            
            <td><asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox></td>
            <td><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>ISBN</td>
            <td><asp:TextBox ID="txtISBN" runat="server"></asp:TextBox></td>
            <td><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Description</td>
            <td><asp:TextBox ID="txtDescription" runat="server"></asp:TextBox></td>
            <td><asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Major</td>
            <td><asp:TextBox ID="txtMajor" runat="server"></asp:TextBox></td>
            <td><asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Expected Value</td>
            <td><asp:TextBox ID="txtExpectedValue" runat="server"></asp:TextBox></td>
            <td><asp:Label ID="Label6" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Condition</td>
            <td><asp:DropDownList ID="ddlCondition" runat="server"></asp:DropDownList></td>
            <td><asp:Label ID="Label7" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td></td>
            <td style="text-align: center;"><asp:Button ID="btnPost" runat="server" Text="Post" /></td>            
            <td></td>
        </tr>
    </table>
</asp:Content>

