<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="User_Profile_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="float: left">
        <table>
            <tr>            
                <td>
                    <asp:Image ID="Image1" runat="server" Height="300px" Width="250px" />
                </td>
            </tr>        
            <tr>
                <td>
                    Name:
                    <asp:Label ID="lblName" runat="server" CssClass="bold"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    City:
                    <asp:Label ID="lblCity" runat="server" CssClass="bold"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Phone:
                    <asp:Label ID="lblPhone" runat="server" CssClass="bold"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Current College:
                    <asp:Label ID="lblCurrentCollege" runat="server" CssClass="bold"></asp:Label>                    
                </td>
            </tr>
            <tr>
                <td>
                    Description:
                    <asp:Label ID="lblDescription" runat="server" CssClass="bold"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User/Profile/EditProfile.aspx">Edit my Profile</asp:HyperLink></td>
            </tr>
        </table>
    </div>    
    <div style="float: right; padding: 50px">
        <h3 style="text-align: center">Current Postings</h3>       
        
        <table style="padding: 0px;">
            <tr style="padding: 4px 7px 2px 4px; text-align: center">
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Date</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" >
                <ItemTemplate>                    
                    <tr>                        
                        <td style="padding: 4px 7px 2px 4px">
                            <asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("Title") %>' 
                                NavigateUrl='<%# String.Concat("~/User/Post/AddEditBook.aspx?Id=", Eval("Id")) %>'>
                            </asp:HyperLink>
                        </td>
                        <td style="padding: 4px 7px 2px 4px; text-align: right;">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval ("Author") %>'></asp:Label>
                        </td>
                        <td style="padding: 4px 7px 2px 4px; text-align: right;">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval ("Price") %>'></asp:Label>
                        </td>
                        <td style="padding: 4px 7px 2px 4px">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval ("EnteredOn", "{0:d}") %>'></asp:Label>
                        </td>
                    </tr>
                </ItemTemplate>            
            </asp:Repeater>
        </table>            
        <br />
        <div style="text-align: center">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/User/Post/AddEditBook.aspx">
                Post a book
            </asp:HyperLink>
        </div>
   </div>
    <div class="clearing"></div>
</asp:Content>
