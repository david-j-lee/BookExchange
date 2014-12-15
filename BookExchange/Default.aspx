<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="Styles/demo.css" />
    <link rel="stylesheet" type="text/css" href="Styles/elastislide.css" />
    <link rel="stylesheet" type="text/css" href="Styles/custom.css" />
    <script src="js/modernizr.custom.17475.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="margin: auto; padding-top: 20px;">
        <tr>
            <td><asp:TextBox ID="txtSearch" runat="server" Width="700px" Height="30px" Font-Size="16pt"></asp:TextBox></td>
            <td><asp:Button ID="btnSearch" runat="server" Text="Search" Width="100px" Height="40px" OnClick="btnSearch_Click" /></td>
        </tr>
    </table>
    <h2><asp:Label ID="Label4" runat="server" Text="Label" Font-Size="32pt">Welcome to the Book Exchange</asp:Label></h2>
    <!-- Start of featured content java -->    
    <div class="container demo-1">
        <div class="main">
            <ul id="carousel" class="elastislide-list">
                <asp:Repeater ID="rptFeaturedContent" runat="server">
                    <ItemTemplate>
                        <li>
                            <a href = '<%# String.Concat("/BookExchange/User/Post/BookDetails.aspx?Id=", Eval("Id")) %>'>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageURL")%>' />
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquerypp.custom.js"></script>
    <script type="text/javascript" src="js/jquery.elastislide.js"></script>
    <script type="text/javascript"> $('#carousel').elastislide();</script>
    <!-- end of featured content java -->
    <br />
    <!-- Start of static messages and images -->    
    <table>
        <tr>
            <td><asp:Image ID="Image1" runat="server" Height="300px" Width="300px" BorderStyle="Solid" BorderColor="#96A1C2" /></td>                        
            <td>&nbsp</td>
            <td><asp:Image ID="Image2" runat="server" Height="300px" Width="300px" BorderStyle="Solid" BorderColor="#96A1C2" /></td>
            <td>&nbsp</td>                        
            <td><asp:Image ID="Image3" runat="server" Height="300px" Width="300px" BorderStyle="Solid" BorderColor="#96A1C2" /></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="" Width="200px"></asp:Label></td>                        
            <td></td>
            <td><asp:Label ID="Label2" runat="server" Text="" Width="200px"></asp:Label></td>            
            <td></td>
            <td><asp:Label ID="Label3" runat="server" Text="" Width="200px"></asp:Label></td>                                                
        </tr>
    </table>
    <!-- end of static messages and images -->
    <div class="clearing"></div>    
</asp:Content>

