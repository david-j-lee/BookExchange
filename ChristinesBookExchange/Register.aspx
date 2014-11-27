<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <td>Email</td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>First Name</td>
            <td><asp:TextBox ID="txtFistName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Alias</td>
            <td><asp:TextBox ID="txtAlias" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Re-Type Password</td>
            <td><asp:TextBox ID="txtPassword2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td style="text-align: center"><asp:Button ID="btnSubmit" runat="server" Text="Submit" /></td>            
        </tr>
    </table>
</asp:Content>

