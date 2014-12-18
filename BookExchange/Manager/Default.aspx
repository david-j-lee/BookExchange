<%@ Page Title="Manager - Home Page" Language="C#" MasterPageFile="~/Manager.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Manager_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Styles/MyStyles.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="Styles/demo.css" />
    <link rel="stylesheet" type="text/css" href="Styles/elastislide.css" />
    <link rel="stylesheet" type="text/css" href="Styles/custom.css" />
    <script src="js/modernizr.custom.17475.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">    
    <h2>Administrator Home Page</h2>
    <!-- 
        Start of featured content java
        Java slider was taken from http://www.codeproject.com/Articles/785972/ASP-NET-Repeater-with-jQuery-Slider
    -->    
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
</asp:Content>
