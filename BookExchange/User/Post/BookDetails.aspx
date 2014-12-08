<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BookDetails.aspx.cs" Inherits="Post_BookDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>        
            <td><asp:Image ID="Image1" runat="server" Height="300px" Width="300px"/></td>   
        </tr>
        <tr>

            <td>Title: &nbsp
            <asp:Label ID="lblTitle" runat="server"></asp:Label></td>            
        </tr>        
        <tr>
            <td>Author: &nbsp
            <asp:Label ID="lblAuthor" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>ISBN: &nbsp
            <asp:Label ID="lblISBN" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Description: &nbsp
            <asp:Label ID="lblDescription" runat="server" TextMode="MultiLine" Width="200px" Height="50px"></asp:Label></td>
        </tr>
        <tr>
            <td>Major: &nbsp
            <asp:Label ID="lblMajor" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Expected Value: &nbsp
            <asp:Label ID="lblExpectedValue" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Condition: &nbsp
            <asp:Label ID="lblCondition" runat="server"></asp:Label></td>
        </tr>  
    </table>
    <table>
        <tr>
            <td><asp:DropDownList ID="ddlBooks" runat="server" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="Id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:BookExchangeConnectionString %>" 
                    SelectCommand="SELECT * FROM [Postings] WHERE ([UserEmail] = @UserEmail) ORDER BY [Title]">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserEmail" SessionField="email" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="text-align: center;"><asp:Button ID="btnRequestTrade" runat="server" Text="Request a Trade" OnClick="btnRequestTrade_Click" /></td>            
        </tr>
    </table>
</asp:Content>

