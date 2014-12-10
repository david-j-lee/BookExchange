<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ManageHome.aspx.cs" Inherits="Managing_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <td>
                <table>
                    <tr><th>Message One</th></tr>
                    <tr>            
                        <td><asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="200px" Width="300px"></asp:TextBox></td>
                    </tr>
                    <tr><th>Message two</th></tr>        
                    <tr>
                        <td><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="200px" Width="300px"></asp:TextBox></td>
                    </tr>
                    <tr><th>Message Three</th></tr>
                    <tr>  
                        <td><asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="200px" Width="300px"></asp:TextBox></td>
                    </tr>
                </table>
            </td>
            <td>
                <table>
                    <tr><th>Image One</th></tr>
                    <tr>
                        <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>                        
                    </tr>
                    <tr><th>Image three</th></tr>
                    <tr>                        
                        <td><asp:FileUpload ID="FileUpload2" runat="server" /></td>
                    </tr>
                    <tr><th>ImageOne</th></tr>
                    <tr>                        
                        <td><asp:FileUpload ID="FileUpload3" runat="server" /></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" />
            </td>
        </tr>
    </table>
</asp:Content>

