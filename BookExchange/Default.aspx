<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="margin: auto; padding-top: 20px;">
        <tr>
            <th>Search by book title!</th>
        </tr>
        <tr>
            <td><asp:TextBox ID="txtSearch" runat="server" Width="700px" Height="30px" Font-Size="16pt"></asp:TextBox></td>
            <td><asp:Button ID="btnSearch" runat="server" Text="Search" Width="100px" Height="40px" OnClick="btnSearch_Click" /></td>
        </tr>        
    </table>    
    <br />
    <table style="margin: auto">
        <tr>
            <td><asp:Image ID="Image1" runat="server" Height="300px" Width="300px" BorderStyle="Solid" BorderColor="#96A1C2" /></td>
            <td><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>                        
        </tr>        
        <tr><td> &nbsp</td></tr>
        <tr><td> &nbsp</td></tr>
        <tr>            
            <td><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>            
            <td><asp:Image ID="Image2" runat="server" Height="300px" Width="300px" BorderStyle="Solid" BorderColor="#96A1C2" /></td>
        </tr>
        <tr><td> &nbsp</td></tr>
        <tr><td> &nbsp</td></tr>
        <tr>                        
            <td><asp:Image ID="Image3" runat="server" Height="300px" Width="300px" BorderStyle="Solid" BorderColor="#96A1C2" /></td>
            <td><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>            
        </tr>
    </table>
    <div class="clearing"></div>
    <div id="sidebar">
        </div>
   
</asp:Content>

