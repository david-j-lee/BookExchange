<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="User_Profile_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
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
            <td><asp:Label ID="lblDescription" runat="server" Width="300px" Height="50px"></asp:Label></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User/Profile/EditProfile.aspx">Edit my Profile</asp:HyperLink></td>
        </tr>
    </table>
    <table>
        <tr>
            <td></td>
        </tr>
    </table>        
</asp:Content>

