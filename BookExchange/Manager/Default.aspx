﻿<%@ Page Title="Manager - Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Manager_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Styles/MyStyles.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">    
    <h2>Manager Home Page</h2>                               
    <table aria-dropeffect="execute" aria-orientation="vertical" >
        <tr>
            <td>
                <ul>
                    <li>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Manager/ManageHome.aspx" CssClass="body">Manage Home</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Manager/ManageAbout.aspx" CssClass="body">Manage About</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Manager/ManageUsers.aspx" CssClass="body">Manage Users</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Manager/AllPostings.aspx" CssClass="body">All Postings</asp:HyperLink>
                    </li>        
                    <li>
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Manager/ManageTradeRequests.aspx" CssClass="body">Trade Requests</asp:HyperLink>
                    </li>                 
                </ul>
            </td>
        </tr>
    </table>              
    <!-- dont understand why this needs to be here
        <div style="float: right; margin: 0px">
            <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ExpandDepth="1" NodeIndent="0" AutoGenerateDataBindings="False" BackColor="#7E7E7E" BorderStyle="None" CssClass="body" ForeColor="White" Width="152px">
                <HoverNodeStyle BackColor="White" />
                <NodeStyle Font-Size="Large" />
            </asp:TreeView>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </div>
    -->
    <div class="clearing">&nbsp;</div>
</asp:Content>
