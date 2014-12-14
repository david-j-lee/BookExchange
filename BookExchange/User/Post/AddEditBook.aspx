<%@ Page Title="Posting - Add/Edit a Book" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddEditBook.aspx.cs" Inherits="Post_AddEditBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>Title</td>
                        <td><asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></td>
                        <td><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                    </tr>        
                    <tr>
                        <td>Author</td>            
                        <td><asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox></td>
                        <td><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>ISBN</td>
                        <td><asp:TextBox ID="txtISBN" runat="server"></asp:TextBox></td>
                        <td><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td><asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Width="200px" Height="50px"></asp:TextBox></td>
                        <td><asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Major</td>
                        <td><asp:TextBox ID="txtMajor" runat="server"></asp:TextBox></td>
                        <td><asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Expected Value</td>
                        <td><asp:TextBox ID="txtExpectedValue" runat="server"></asp:TextBox></td>
                        <td><asp:Label ID="Label6" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Condition</td>
                        <td><asp:DropDownList ID="ddlCondition" runat="server"></asp:DropDownList></td>
                        <td><asp:Label ID="Label7" runat="server" Text=""></asp:Label></td>
                    </tr>
                </table>
            </td>
            <td>
                <table>
                    <tr>
                        <td></td>
                        <td><asp:Image ID="Image1" runat="server" Height="300px" Width="300px"/></td>            
                    </tr>
                    <tr>
                        <td></td>
                        <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>    
    <div class="clearing"></div>
    <table>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="error" ControlToValidate="txtTitle" ErrorMessage="* Must type in a title"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="center"><asp:Button ID="btnPost" runat="server" CssClass="button" Text="Post" OnClick="btnPost_Click" /></td>            
        </tr>
    </table>
</asp:Content>

