<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ExchangeRequestForm.aspx.cs" Inherits="Post_ExchangeRequestForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
       <table>
           <tr>
               <td> Posting ID</td>
               <td>
                   <asp:TextBox ID="txtPostingID" runat="server" Width="200" TextMode="MultiLine"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td> Title</td>
               <td>
                   <asp:TextBox ID="txtTitle" runat="server" Width="200" TextMode="MultiLine"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td> ISBN</td>
               <td>
                   <asp:TextBox ID="txtISBN" runat="server" Width="200" TextMode="MultiLine"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td> Author</td>
               <td>
                   <asp:TextBox ID="txtAuthor" runat="server" Width="200"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td> Book major</td>
               <td>
                   <asp:TextBox ID="txtBookMajor" runat="server" Width="200"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td> Book to Exchange</td>
               <td>
                   <asp:TextBox ID="BookToExchange" runat="server" Width="200"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td> Location</td>
               <td>
                   <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="Title"></asp:DropDownList>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookExchangeConnectionString %>" SelectCommand="SELECT [Title] FROM [Postings] WHERE ([UserEmail] = @UserEmail)">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="DropDownList1" Name="UserEmail" PropertyName="SelectedValue" Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
               </td>
           </tr>
           <tr>
               <td> Suggested Time</td>
               <td>
                   <asp:TextBox ID="SuggestedTime" runat="server" Width="200"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td></td>
               <td>
                   <asp:Button ID="btnSave" runat="server" Text="Confirm" onclick="btnSave_Click" />
               </td>
           </tr>
           <tr>
               <td colspan="2">
                   <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors:" />
               </td>
           </tr>
       </table>
    <asp:Label ID="Message" runat="server" Text="Message Sent" Visible="false"></asp:Label>
</asp:Content>

