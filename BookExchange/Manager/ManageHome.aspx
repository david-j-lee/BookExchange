<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ManageHome.aspx.cs" Inherits="Managing_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="MessageOne" HeaderText="MessageOne" SortExpression="MessageOne" />
            <asp:BoundField DataField="MessageTwo" HeaderText="MessageTwo" SortExpression="MessageTwo" />
            <asp:BoundField DataField="MessageThree" HeaderText="MessageThree" SortExpression="MessageThree" />
            <asp:BoundField DataField="ImageURLOne" HeaderText="ImageURLOne" SortExpression="ImageURLOne" />
            <asp:BoundField DataField="ImageURLTwo" HeaderText="ImageURLTwo" SortExpression="ImageURLTwo" />
            <asp:BoundField DataField="ImageURLThree" HeaderText="ImageURLThree" SortExpression="ImageURLThree" />
            <asp:BoundField DataField="EnteredOn" HeaderText="EnteredOn" SortExpression="EnteredOn" />
            <asp:BoundField DataField="EnteredBy" HeaderText="EnteredBy" SortExpression="EnteredBy" />
            <asp:BoundField DataField="UpdatedOn" HeaderText="UpdatedOn" SortExpression="UpdatedOn" />
            <asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy" SortExpression="UpdatedBy" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookExchangeConnectionString %>" DeleteCommand="DELETE FROM [Home] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Home] ([MessageOne], [MessageTwo], [MessageThree], [ImageURLOne], [ImageURLTwo], [ImageURLThree], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (@MessageOne, @MessageTwo, @MessageThree, @ImageURLOne, @ImageURLTwo, @ImageURLThree, @EnteredOn, @EnteredBy, @UpdatedOn, @UpdatedBy)" SelectCommand="SELECT * FROM [Home]" UpdateCommand="UPDATE [Home] SET [MessageOne] = @MessageOne, [MessageTwo] = @MessageTwo, [MessageThree] = @MessageThree, [ImageURLOne] = @ImageURLOne, [ImageURLTwo] = @ImageURLTwo, [ImageURLThree] = @ImageURLThree, [EnteredOn] = @EnteredOn, [EnteredBy] = @EnteredBy, [UpdatedOn] = @UpdatedOn, [UpdatedBy] = @UpdatedBy WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MessageOne" Type="String" />
            <asp:Parameter Name="MessageTwo" Type="String" />
            <asp:Parameter Name="MessageThree" Type="String" />
            <asp:Parameter Name="ImageURLOne" Type="String" />
            <asp:Parameter Name="ImageURLTwo" Type="String" />
            <asp:Parameter Name="ImageURLThree" Type="String" />
            <asp:Parameter Name="EnteredOn" Type="DateTime" />
            <asp:Parameter Name="EnteredBy" Type="Int32" />
            <asp:Parameter Name="UpdatedOn" Type="DateTime" />
            <asp:Parameter Name="UpdatedBy" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MessageOne" Type="String" />
            <asp:Parameter Name="MessageTwo" Type="String" />
            <asp:Parameter Name="MessageThree" Type="String" />
            <asp:Parameter Name="ImageURLOne" Type="String" />
            <asp:Parameter Name="ImageURLTwo" Type="String" />
            <asp:Parameter Name="ImageURLThree" Type="String" />
            <asp:Parameter Name="EnteredOn" Type="DateTime" />
            <asp:Parameter Name="EnteredBy" Type="Int32" />
            <asp:Parameter Name="UpdatedOn" Type="DateTime" />
            <asp:Parameter Name="UpdatedBy" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="MessageOne" HeaderText="MessageOne" SortExpression="MessageOne" />
            <asp:BoundField DataField="MessageTwo" HeaderText="MessageTwo" SortExpression="MessageTwo" />
            <asp:BoundField DataField="MessageThree" HeaderText="MessageThree" SortExpression="MessageThree" />
            <asp:BoundField DataField="ImageURLOne" HeaderText="ImageURLOne" SortExpression="ImageURLOne" />
            <asp:BoundField DataField="ImageURLTwo" HeaderText="ImageURLTwo" SortExpression="ImageURLTwo" />
            <asp:BoundField DataField="ImageURLThree" HeaderText="ImageURLThree" SortExpression="ImageURLThree" />
            <asp:BoundField DataField="EnteredOn" HeaderText="EnteredOn" SortExpression="EnteredOn" />
            <asp:BoundField DataField="EnteredBy" HeaderText="EnteredBy" SortExpression="EnteredBy" />
            <asp:BoundField DataField="UpdatedOn" HeaderText="UpdatedOn" SortExpression="UpdatedOn" />
            <asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy" SortExpression="UpdatedBy" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />

</asp:Content>

