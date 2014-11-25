<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3 style="text-align: center">
        <asp:TextBox ID="TextBox1" runat="server" Width="700px" Height="30px" Font-Size="16pt"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" Width="100px" Height="35px" />
    </h3>    
</asp:Content>

