<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="margin: auto">
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
            <td><asp:Image ID="Image1" runat="server" Height="300px" Width="300px" BorderStyle="Solid" /></td>            
        </tr>        
        <tr><td> &nbsp</td></tr>
        <tr><td> &nbsp</td></tr>
        <tr>
            <td><asp:Image ID="Image2" runat="server" Height="300px" Width="300px" BorderStyle="Solid" /></td>            
            <td><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>                        
        </tr>
        <tr><td> &nbsp</td></tr>
        <tr><td> &nbsp</td></tr>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>     
            <td><asp:Image ID="Image3" runat="server" Height="300px" Width="300px" BorderStyle="Solid" /></td>            
        </tr>
    </table>
</asp:Content>

