<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="User_Profile_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="float: left">
        <table>
            <tr>            
                <td></td>
                <td><asp:Image ID="Image1" runat="server" Height="300px" Width="250px" /></td>            
            </tr>        
            <tr>
                <td>Name:</td>
                <td><asp:Label ID="lblName" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>City:</td>
                <td><asp:Label ID="lblCity" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><asp:Label ID="lblPhone" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Current College:</td>
                <td><asp:Label ID="lblCurrentCollege" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><asp:Label ID="lblDescription" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User/Profile/EditProfile.aspx">Edit my Profile</asp:HyperLink></td>
            </tr>
        </table>
    </div>    
    <div style="float: right; padding: 50px">
        <h3>Current Postings</h3>       
        <asp:Repeater ID="Repeater1" runat="server" >
            <ItemTemplate>
                <table style="padding: 0px;">
                    <td>
                        <asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("Title") %>' 
                            NavigateUrl='<%# String.Concat("~/User/Post/AddEditBook.aspx?Id=", Eval("Id")) %>'>
                        </asp:HyperLink><br />
                    </td>                
                </table>
            </ItemTemplate>            
        </asp:Repeater>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/User/Post/AddEditBook.aspx">Post a book</asp:HyperLink>
   </div>

    

    

    <div class="clearing"></div>
</asp:Content>

