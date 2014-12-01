<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="User_Profile_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <td></td>
            <td><asp:Image ID="Image1" runat="server" Height="300px" Width="250px" /></td>            
        </tr>
        <tr>
            <td></td>
            <td><asp:FileUpload ID="FileUpload1" runat="server"  /></td>
        </tr>
        <tr>
            <td>First Name</td>
            <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>City</td>
            <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Phone</td>
            <td><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Current College</td>
            <td><asp:TextBox ID="txtCurrentCollege" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Description</td>
            <td><asp:TextBox ID="txtDescription" runat="server" Width="300px" Height="50px" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td style="text-align: center"><asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" /></td>            
        </tr>
    </table>
</asp:Content>

