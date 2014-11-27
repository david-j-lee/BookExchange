<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="margin: auto; padding-top: 20px;">
        <tr>
            <td><asp:TextBox ID="TextBox1" runat="server" Width="700px" Height="30px" Font-Size="16pt"></asp:TextBox></td>
            <td><asp:Button ID="Button1" runat="server" Text="Search" Width="100px" Height="40px" /></td>
        </tr>        
    </table>    
    <br />
    <table style="margin: auto">
        <tr>
            <td>message here</td>
            <td>picture here</td>
        </tr>
        <tr>
            <td>message here</td>
            <td>picture here</td>
        </tr>
    </table>
    <div class="clearing"></div>
</asp:Content>

