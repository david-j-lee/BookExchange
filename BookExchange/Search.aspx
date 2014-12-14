<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="margin: auto; padding-top: 20px;">
        <tr>
            <td><asp:TextBox ID="txtSearch" runat="server" Width="700px" Height="30px" Font-Size="16pt"></asp:TextBox></td>
            <td><asp:Button ID="btnSearch" runat="server" Text="Search" Width="100px" Height="40px" OnClick="btnSearch_Click" /></td>
        </tr>        
    </table> 
    <asp:ListView ID="ListView1" runat="server">                        
        <EmptyDataTemplate>
            No postings were found
        </EmptyDataTemplate>
        <ItemTemplate>
            <tr runat="server">
                <td><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="75px" Height="75px" BorderStyle="Solid" BorderWidth="1px" /></td>
                <td><asp:Label ID="Label7" runat="server" Text='<%# Eval("EnteredOn", "{0:d}") %>'></asp:Label></td>
                <td><asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Title")%>' NavigateUrl='<%# String.Concat("~/User/Post/BookDetails.aspx?Id=", Eval("Id")) %>' ></asp:HyperLink></td>
                <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("Author") %>'></asp:Label></td>
                <td><asp:Label ID="Label3" runat="server" Text='<%# Eval("ISBN") %>'></asp:Label></td>
                <td><asp:Label ID="Label4" runat="server" Text='<%# Eval("Major") %>'></asp:Label></td>
                <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("UserEmail") %>'></asp:Label></td>
                <td><asp:Label ID="Label5" runat="server" Text='<%# Eval("Condition") %>'></asp:Label></td>
                <td><asp:Label ID="Label6" runat="server" Text='<%# Eval("Price") %>'></asp:Label></td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table>
                <tr runat="server" id="itemPlaceHolder">
                    <th></th>
                    <th>Date</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>ISBN</th>
                    <th>Major</th>
                    <th>Email</th>
                    <th>Condition</th>
                    <th>Price</th>
                </tr>
            </table>
            <div style="text-align: center">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="100">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
    </asp:ListView>        
</asp:Content>