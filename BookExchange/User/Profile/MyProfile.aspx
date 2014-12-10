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
                    Name: &nbsp
                    <asp:Label ID="lblName" runat="server" CssClass="bold"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    City: &nbsp
                    <asp:Label ID="lblCity" runat="server" CssClass="bold"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Phone: &nbsp
                    <asp:Label ID="lblPhone" runat="server" CssClass="bold"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Current College: &nbsp
                    <asp:Label ID="lblCurrentCollege" runat="server" CssClass="bold"></asp:Label>                    
                </td>
            </tr>
            <tr>
                <td>
                    Description: &nbsp
                    <asp:Label ID="lblDescription" runat="server" CssClass="bold"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User/Profile/EditProfile.aspx">Edit my Profile</asp:HyperLink></td>
            </tr>
        </table>
    </div>    

    <div style="float: right; ">

        <div style="padding: 50px">
            <h3 style="text-align: center">Trade Requests</h3>       
        
            <table style="padding: 0px;">
                <tr style="padding: 4px 7px 2px 4px; text-align: center">
                    <th></th>
                    <th>Book Offered</th>  
                    <th>My Book</th>                              
                    <th>Requested Date</th>
                </tr>
                <asp:Repeater ID="Repeater4" runat="server" >
                    <ItemTemplate>                    
                        <tr>
                            <td><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# String.Concat("~/User/Post/ExchangeRequest.aspx?Id=", Eval("Id")) %>'>accept</asp:HyperLink></td>
                            <td style="padding: 4px 7px 2px 4px; text-align: right;">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval ("urTitle") %>'></asp:Label>
                            </td>
                            <td style="padding: 4px 7px 2px 4px; text-align: right;">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval ("myTitle") %>'></asp:Label>
                            </td>
                            <td style="padding: 4px 7px 2px 4px">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval ("RequestDate", "{0:d}") %>'></asp:Label>
                            </td>                            
                        </tr>
                    </ItemTemplate>            
                </asp:Repeater>
            </table>            
        </div>    

        <div style="padding: 50px">
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

        <div style="padding: 50px">
            <h3 style="text-align: center">My Requests</h3>       
        
            <table style="padding: 0px;">
                <tr style="padding: 4px 7px 2px 4px; text-align: center">
                    <th>My Book</th>
                    <th>Requested Book</th>                
                    <th>Requested Date</th>
                </tr>
                <asp:Repeater ID="Repeater2" runat="server" >
                    <ItemTemplate>                    
                        <tr>                                                
                            <td style="padding: 4px 7px 2px 4px; text-align: right;">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval ("myTitle") %>'></asp:Label>
                            </td>
                            <td style="padding: 4px 7px 2px 4px; text-align: right;">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval ("urTitle") %>'></asp:Label>
                            </td>
                            <td style="padding: 4px 7px 2px 4px">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval ("RequestDate", "{0:d}") %>'></asp:Label>
                            </td>
                        </tr>
                    </ItemTemplate>            
                </asp:Repeater>
            </table>            
        </div>

        <div style="padding: 50px">
            <h3 style="text-align: center">Completed Postings</h3>       
        
            <table style="padding: 0px;">
                <tr style="padding: 4px 7px 2px 4px; text-align: center">
                    <th>Title</th>
                    <th>Author</th>
                    <th>Price</th>
                    <th>Date</th>
                </tr>
                <asp:Repeater ID="Repeater3" runat="server" >
                    <ItemTemplate>                    
                        <tr>                                                
                            <td style="padding: 4px 7px 2px 4px; text-align: right;">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval ("Title") %>'></asp:Label>
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
        </div>            
        
    </div>
    <div class="clearing"></div>
</asp:Content>
