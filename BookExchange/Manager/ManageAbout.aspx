<%@ Page Title="Manager - Manage About" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ManageAbout.aspx.cs" Inherits="Managing_ManageAbout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Manage About</h1>
    <table>
        <tr>
            <td>
                <table>
                    <tr><th>Message One</th></tr>
                    <tr>            
                        <td><asp:TextBox ID="txtMessageOne" runat="server" TextMode="MultiLine" Height="100px" Width="300px"></asp:TextBox></td>
                    </tr>
                    <tr><th>Message two</th></tr>        
                    <tr>
                        <td><asp:TextBox ID="txtMessageTwo" runat="server" TextMode="MultiLine" Height="100px" Width="300px"></asp:TextBox></td>
                    </tr>
                    <tr><th>Message Three</th></tr>
                    <tr>  
                        <td><asp:TextBox ID="txtMessageThree" runat="server" TextMode="MultiLine" Height="100px" Width="300px"></asp:TextBox></td>
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
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            </td>
        </tr>
    </table>
    <table>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><asp:Label ID="lblMessageOne" runat="server" Text='<%# Eval("MessageOne") %>'></asp:Label></td>
                    <td><asp:Label ID="lblMessageTwo" runat="server" Text='<%# Eval("MessageTwo") %>'></asp:Label></td>
                    <td><asp:Label ID="lblMessageThree" runat="server" Text='<%# Eval("MessageThree") %>'></asp:Label></td>
                    <td><asp:Label ID="lblUpdatedOn" runat="server" Text='<%# Eval("EnteredOn") %>'></asp:Label></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>

