<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ManageTradeRequests.aspx.cs" Inherits="Manager_ManageTradeRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="RequestDate" HeaderText="RequestDate" SortExpression="RequestDate" />
            <asp:BoundField DataField="PostingId" HeaderText="PostingId" SortExpression="PostingId" />
            <asp:BoundField DataField="TradePostingId" HeaderText="TradePostingId" SortExpression="TradePostingId" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookExchangeConnectionString %>" DeleteCommand="DELETE FROM [TradeRequests] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TradeRequests] ([Status], [RequestDate], [PostingId], [TradePostingId]) VALUES (@Status, @RequestDate, @PostingId, @TradePostingId)" SelectCommand="SELECT * FROM [TradeRequests]" UpdateCommand="UPDATE [TradeRequests] SET [Status] = @Status, [RequestDate] = @RequestDate, [PostingId] = @PostingId, [TradePostingId] = @TradePostingId WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Status" Type="Int32" />
            <asp:Parameter Name="RequestDate" Type="DateTime" />
            <asp:Parameter Name="PostingId" Type="Int32" />
            <asp:Parameter Name="TradePostingId" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Status" Type="Int32" />
            <asp:Parameter Name="RequestDate" Type="DateTime" />
            <asp:Parameter Name="PostingId" Type="Int32" />
            <asp:Parameter Name="TradePostingId" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

