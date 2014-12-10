<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <td>Email</td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>            
        </tr>
        <tr>
            <td>Password</td>
            <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td style="text-align: center"><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>            
        </tr>
        <tr>            
            <td><asp:Label ID="lblError" runat="server" Text=""></asp:Label></td>            
        </tr>
        <tr>
            <td></td>
            <td></td>            
        </tr>
        <tr>
            <td></td>
            <td style="text-align: center"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Create an account</asp:HyperLink></td>            
        </tr>
    </table>
</asp:Content>

