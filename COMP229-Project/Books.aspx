<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Books Page</h2>
   <div id="divBook">
       <h3>Book Collection</h3>
       <p>
           <asp:ListView ID="BookListView" runat="server" DataSourceID="ObjectDataSource1" ValidateRequestMode="Inherit" style="margin-left:auto;">
               <AlternatingItemTemplate>
                   <tr style="background-color: #FFFFFF; color: #284775;">
                       <td>
                           <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /></td>
                   </tr>
               </AlternatingItemTemplate>
               <EditItemTemplate>
                   <tr style="background-color: #999999;">
                       <td>
                           <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                           <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                       </td>
                       <td>
                           <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("Author") %>' runat="server" ID="AuthorTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("ISBN") %>' runat="server" ID="ISBNTextBox" /></td>
                   </tr>
               </EditItemTemplate>
               <EmptyDataTemplate>
                   <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;
">
                       <tr>
                           <td>No books in the collection.</td>
                       </tr>
                   </table>
               </EmptyDataTemplate>
               <InsertItemTemplate>
                   <tr style="">
                       <td>
                           <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                           <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                       </td>
                       <td>
                           <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("Author") %>' runat="server" ID="AuthorTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("ISBN") %>' runat="server" ID="ISBNTextBox" /></td>
                   </tr>
               </InsertItemTemplate>
               <ItemTemplate>
                   <tr style="background-color: #E0FFFF; color: #333333;">
                       <td>
                           <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /></td>
                   </tr>
               </ItemTemplate>
               <LayoutTemplate>
                   <table runat="server" class="BookListView" >
                       <tr runat="server">
                           <td runat="server">
                               <table runat="server" id="itemPlaceholderContainer" class="BookListView" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                   <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                       <th runat="server">Title</th>
                                       <th runat="server">Author</th>
                                       <th runat="server">ISBN</th>
                                   </tr>
                                   <tr runat="server" id="itemPlaceholder"></tr>
                               </table>
                           </td>
                       </tr>
                       <tr runat="server">
                           <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF"></td>
                       </tr>
                   </table>
               </LayoutTemplate>
               <SelectedItemTemplate>
                   <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                       <td>
                           <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /></td>
                   </tr>
               </SelectedItemTemplate>
           </asp:ListView>
           <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" SelectMethod="GetBooks" TypeName="BookRepository"></asp:ObjectDataSource>
       </p>
   </div>
    <p><a href="AddBook.aspx">Click to Add another Book</a></p>

</asp:Content>

