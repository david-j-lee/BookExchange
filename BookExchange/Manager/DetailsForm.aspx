<%@ Page Title="Manager - DetailsForm" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DetailsForm.aspx.cs" Inherits="Managing_AdminBookDetailsForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Condition" HeaderText="Condition" SortExpression="Condition" />
            <asp:BoundField DataField="ImageURL" HeaderText="ImageURL" SortExpression="ImageURL" />
            <asp:BoundField DataField="EnteredOn" HeaderText="EnteredOn" SortExpression="EnteredOn" />
            <asp:BoundField DataField="UpdatedOn" HeaderText="UpdatedOn" SortExpression="UpdatedOn" />
            <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" SortExpression="UserEmail" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookExchangeConnectionString1 %>" DeleteCommand="DELETE FROM [Postings] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Postings] ([ISBN], [Description], [Major], [Title], [Author], [Price], [Condition], [ImageURL], [EnteredOn], [UpdatedOn], [UserEmail]) VALUES (@ISBN, @Description, @Major, @Title, @Author, @Price, @Condition, @ImageURL, @EnteredOn, @UpdatedOn, @UserEmail)" ProviderName="<%$ ConnectionStrings:BookExchangeConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [ISBN], [Description], [Major], [Title], [Author], [Price], [Condition], [ImageURL], [EnteredOn], [UpdatedOn], [UserEmail] FROM [Postings]" UpdateCommand="UPDATE [Postings] SET [ISBN] = @ISBN, [Description] = @Description, [Major] = @Major, [Title] = @Title, [Author] = @Author, [Price] = @Price, [Condition] = @Condition, [ImageURL] = @ImageURL, [EnteredOn] = @EnteredOn, [UpdatedOn] = @UpdatedOn, [UserEmail] = @UserEmail WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Major" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Condition" Type="String" />
            <asp:Parameter Name="ImageURL" Type="String" />
            <asp:Parameter Name="EnteredOn" Type="String" />
            <asp:Parameter Name="UpdatedOn" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Major" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Condition" Type="String" />
            <asp:Parameter Name="ImageURL" Type="String" />
            <asp:Parameter Name="EnteredOn" Type="String" />
            <asp:Parameter Name="UpdatedOn" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

