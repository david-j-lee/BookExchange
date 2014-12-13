<%@ Page Title="Posting - Add/Edit a Book" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddEditBook.aspx.cs" Inherits="Post_AddEditBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 125px;
        }
        .auto-style4 {
            width: 314px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <td>Title</td>
            <td class="auto-style4"><asp:TextBox ID="txtTitle" runat="server" Width="196px"></asp:TextBox></td>
            <td><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
            <td class="auto-style2">Condition</td>
            <td class="auto-style3"><asp:DropDownList ID="ddlCondition" runat="server" Height="16px" Width="108px"></asp:DropDownList></td>
            <td class="auto-style1"><asp:Label ID="Label7" runat="server" Text=""></asp:Label></td>
        </tr>        
        <tr>
            <td>Author</td>            
            <td class="auto-style4"><asp:TextBox ID="txtAuthor" runat="server" Width="197px"></asp:TextBox></td>
            <td><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
            <td class="auto-style2" colspan="3" rowspan="5"><asp:Image ID="Image1" runat="server" Height="300px" Width="300px" style="text-align: center"/></td>
        </tr>
        <tr>
            <td>ISBN</td>
            <td class="auto-style4"><asp:TextBox ID="txtISBN" runat="server" Width="197px"></asp:TextBox></td>
            <td><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Description</td>
            <td class="auto-style4"><asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Width="200px" Height="50px"></asp:TextBox></td>
            <td><asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Major</td>
            <td class="auto-style4"><asp:TextBox ID="txtMajor" runat="server" Width="196px"></asp:TextBox></td>
            <td><asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Expected Value</td>
            <td class="auto-style4"><asp:TextBox ID="txtExpectedValue" runat="server" Width="198px"></asp:TextBox></td>
            <td><asp:Label ID="Label6" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2" colspan="3"><asp:FileUpload ID="FileUpload1" runat="server" Width="275px" /></td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="error" ControlToValidate="txtTitle" ErrorMessage="Must type in a title"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4"><asp:Button ID="btnPost" runat="server" Text="Post" OnClick="btnPost_Click" style="background-color: #96A1C2" /></td>            
        </tr>
        </table>
    </asp:Content>

