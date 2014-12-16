<%@ Page Title="Posting - Book Details" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BookDetails.aspx.cs" Inherits="Post_BookDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <td>
                <table>
                    <tr>        
                        <td><asp:Image ID="Image1" runat="server" Height="400px" Width="300px" BorderStyle="Solid"/></td>   
                    </tr>
                </table>
            </td>
            <td>
                <table>
                    <tr>
                        <td>Title: &nbsp
                        <asp:Label ID="lblTitle" runat="server" CssClass="bold" ></asp:Label></td>            
                    </tr>        
                    <tr>
                        <td>Author: &nbsp
                        <asp:Label ID="lblAuthor" runat="server" CssClass="bold"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>ISBN: &nbsp
                        <asp:Label ID="lblISBN" runat="server" CssClass="bold"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Description: &nbsp
                        <asp:Label ID="lblDescription" runat="server" TextMode="MultiLine" CssClass="bold"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Major: &nbsp
                        <asp:Label ID="lblMajor" runat="server" CssClass="bold"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Expected Value: &nbsp
                        <asp:Label ID="lblExpectedValue" runat="server" CssClass="bold"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Condition: &nbsp
                        <asp:Label ID="lblCondition" runat="server" CssClass="bold"></asp:Label></td>
                    </tr>  
                    <tr>
                        <td>Posted By: &nbsp
                        <asp:Label ID="lblUserEmail" runat="server" CssClass="bold"></asp:Label></td>
                    </tr>  
                </table>
            </td>
        </tr>
    </table>    
    <div class="clearing"></div>
    <table>
        <tr>
            <td class="center">
                <asp:DropDownList ID="ddlBooks" runat="server" Font-Size="14pt" ></asp:DropDownList>                
            </td>
        </tr>
        <tr>
            <td style="text-align: center;"><asp:Button ID="btnRequestTrade" runat="server" CssClass="button" Text="Request a Trade" OnClick="btnRequestTrade_Click" /></td>            
        </tr>
        <tr>
            <td class="center">
                <asp:Label ID="lblRequestTradeMessage" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

