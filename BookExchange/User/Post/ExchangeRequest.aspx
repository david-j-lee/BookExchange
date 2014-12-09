<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ExchangeRequest.aspx.cs" Inherits="Post_ExchangeRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
       <table>           

            <tr>
                <th style="font-size: 40px">My Book</th>
                <th></th>
                <th style="font-size: 40px">Trader's Book</th>
            </tr>

            <tr>
                <td>
                    <table>
                        <tr>
                            <td>Title</td>
                            <td><asp:Label ID="lblMyTitle" runat="server" Width="200" ></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Author</td>
                            <td><asp:Label ID="lblMyAuthor" runat="server" Width="200"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>ISBN: </td>
                            <td><asp:Label ID="lblMyISBN" runat="server" Width="200" ></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Condition</td>
                            <td><asp:Label ID="lblMyCondition" runat="server" Width="200"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Price</td>
                            <td><asp:Label ID="lblMyPrice" runat="server" Width="200"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Description</td>
                            <td><asp:Label ID="lblMyDescription" runat="server" Width="200"></asp:Label></td>
                        </tr> 
                        
                        
                        <tr>
                            <td>tradersemail</td>
                            <td><asp:Label ID="lblMyTradersEmail" runat="server" Width="200"></asp:Label></td>
                        </tr> 
                        
                                          
                    </table>
                </td>

                <td style="width: 200px; text-align: center; font-weight: bold; font-size: 40px;">
                    FOR
                </td>

                <td>
                    <table>
                        <tr>
                            <td>Title: </td>
                            <td><asp:Label ID="lblTradersTitle" runat="server" Width="200" ></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Author</td>
                            <td><asp:Label ID="lblTradersAuthor" runat="server" Width="200"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>ISBN: </td>
                            <td><asp:Label ID="lblTradersISBN" runat="server" Width="200" ></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Condition</td>
                            <td><asp:Label ID="lblTradersCondition" runat="server" Width="200"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Price</td>
                            <td><asp:Label ID="lblTradersPrice" runat="server" Width="200"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Description</td>
                            <td><asp:Label ID="lblTradersDescription" runat="server" Width="200"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Traders Email</td>
                            <td><asp:Label ID="lblTradersTradersEmail" runat="server" Width="200"></asp:Label></td>
                        </tr>
                    </table>
               </td>
           </tr>                                   
       </table>

    <table>
        <tr><td><asp:Button ID="btnConfirm" runat="server" Text="Confirm" onclick="btnConfirm_Click" /> &nbsp <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" /></td></tr>
    </table>   
</asp:Content>

