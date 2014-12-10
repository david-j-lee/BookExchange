<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <td>Email</td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            <td></td>            
        </tr>
        <tr>
            <td>First Name</td>
            <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><asp:TextBox ID="txtPassword1" runat="server" TextMode="Password"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>Re-Type Password</td>
            <td><asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox></td>
            <td></td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:Label ID="lblError" CssClass="error" runat="server" Text=""></asp:Label><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="error" ControlToValidate="txtEmail" ErrorMessage="You must type in an email"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="error" ControlToValidate="txtFirstName" ErrorMessage="You must type in a first name"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="error" ControlToValidate="txtLastName" ErrorMessage="You must type in a last name"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="error" ControlToValidate="txtPassword1" ErrorMessage="You must choose a password"></asp:RequiredFieldValidator><br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="error" ControlToCompare="txtPassword1" ControlToValidate="txtPassword2" ErrorMessage="Passwords must match"></asp:CompareValidator><br />
            </td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td style="text-align: center"><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td>         
        </tr>
    </table>
</asp:Content>

