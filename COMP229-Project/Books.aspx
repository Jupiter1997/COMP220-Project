<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Books Page</h2>
   <div id="divBook">
       <h3>Book Collection</h3>
       <p>
           <%--           <asp:ListView ID="BookListView" runat="server" DataSourceID="SqlDataSource1" Style="margin-left: auto;">
               <AlternatingItemTemplate>
                   <tr style="background-color: #FFF8DC;">
                       <td>
                           <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /></td>
                   </tr>
               </AlternatingItemTemplate>
               <EditItemTemplate>
                   <tr style="background-color: #008A8C; color: #FFFFFF;">
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
                   <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                       <tr>
                           <td>No data was returned.</td>
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
                   <tr style="background-color: #DCDCDC; color: #000000;">
                       <td>
                           <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /></td>
                   </tr>
               </ItemTemplate>
               <LayoutTemplate>
                   <table runat="server" class="BookListView">
                       <tr runat="server">
                           <td runat="server">
                               <table runat="server" class="BookListView" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                   <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                       <th runat="server">Title</th>
                                       <th runat="server">Author</th>
                                       <th runat="server">ISBN</th>
                                   </tr>
                                   <tr runat="server" id="itemPlaceholder"></tr>
                               </table>
                           </td>
                       </tr>
                       <tr runat="server">
                           <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;"></td>
                       </tr>
                   </table>
               </LayoutTemplate>
               <SelectedItemTemplate>
                   <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                       <td>
                           <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /></td>
                   </tr>
               </SelectedItemTemplate>
           </asp:ListView>--%>
           <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ShalomLibraryConnectionString %>' SelectCommand="SELECT [Title], [Author], [ISBN] FROM [Book]"></asp:SqlDataSource>
 
           <asp:GridView ID="BookGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="744px" OnSelectedIndexChanged="BookGrid_SelectedIndexChanged" DataKeyNames="Title">
               <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
               <Columns>
                   <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
                   <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author"></asp:BoundField>
                   <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN"></asp:BoundField>
                   <asp:ButtonField CommandName="Select" Text="Select" />
               </Columns>
               <EditRowStyle BackColor="#999999"></EditRowStyle>

               <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

               <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White" VerticalAlign="Middle"></PagerStyle>

               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" VerticalAlign="Middle" HorizontalAlign="Center"></RowStyle>

               <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

               <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

               <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

               <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

               <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
           </asp:GridView>
     <%--      <asp:DataList ID="BookDetails" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
               <AlternatingItemStyle BackColor="#F7F7F7"></AlternatingItemStyle>

               <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C"></FooterStyle>

               <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7"></HeaderStyle>

               <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C"></ItemStyle>

               <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7"></SelectedItemStyle>
           </asp:DataList>
           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
          
           
           <asp:ListView ID="BookListView" runat="server">
               <AlternatingItemTemplate>
                   <tr style="background-color: #FFF8DC;">
                       <td>
                           <asp:Label Text='<%# Eval("BookID") %>' runat="server" ID="BookIDLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Genre") %>' runat="server" ID="GenreLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("NoOfPages") %>' runat="server" ID="NoOfPagesLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("LentToFriend") %>' runat="server" ID="LentToFriendLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("FriendName") %>' runat="server" ID="FriendNameLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Comments") %>' runat="server" ID="CommentsLabel" /></td>
                   </tr>
               </AlternatingItemTemplate>
               <EditItemTemplate>
                   <tr style="background-color: #008A8C; color: #FFFFFF;">
                       <td>
                           <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                           <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                       </td>
                       <td>
                           <asp:Label Text='<%# Eval("BookID") %>' runat="server" ID="BookIDLabel1" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("Author") %>' runat="server" ID="AuthorTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("ISBN") %>' runat="server" ID="ISBNTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("Genre") %>' runat="server" ID="GenreTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("NoOfPages") %>' runat="server" ID="NoOfPagesTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("LentToFriend") %>' runat="server" ID="LentToFriendTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("FriendName") %>' runat="server" ID="FriendNameTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("Comments") %>' runat="server" ID="CommentsTextBox" /></td>
                   </tr>
               </EditItemTemplate>
               <EmptyDataTemplate>
                   <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                       <tr>
                           <td>No data was returned.</td>
                       </tr>
                   </table>
               </EmptyDataTemplate>
               <InsertItemTemplate>
                   <tr style="">
                       <td>
                           <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                           <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                       </td>
                       <td>&nbsp;</td>
                       <td>
                           <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("Author") %>' runat="server" ID="AuthorTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("ISBN") %>' runat="server" ID="ISBNTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("Genre") %>' runat="server" ID="GenreTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("NoOfPages") %>' runat="server" ID="NoOfPagesTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("LentToFriend") %>' runat="server" ID="LentToFriendTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("FriendName") %>' runat="server" ID="FriendNameTextBox" /></td>
                       <td>
                           <asp:TextBox Text='<%# Bind("Comments") %>' runat="server" ID="CommentsTextBox" /></td>
                   </tr>
               </InsertItemTemplate>
               <ItemTemplate>
                   <tr style="background-color: #DCDCDC; color: #000000;">
                       <td>
                           <asp:Label Text='<%# Eval("BookID") %>' runat="server" ID="BookIDLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Genre") %>' runat="server" ID="GenreLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("NoOfPages") %>' runat="server" ID="NoOfPagesLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("LentToFriend") %>' runat="server" ID="LentToFriendLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("FriendName") %>' runat="server" ID="FriendNameLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Comments") %>' runat="server" ID="CommentsLabel" /></td>
                   </tr>
               </ItemTemplate>
               <LayoutTemplate>
                   <table runat="server">
                       <tr runat="server">
                           <td runat="server">
                               <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                   <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                       <th runat="server">BookID</th>
                                       <th runat="server">Title</th>
                                       <th runat="server">Author</th>
                                       <th runat="server">ISBN</th>
                                       <th runat="server">Genre</th>
                                       <th runat="server">NoOfPages</th>
                                       <th runat="server">LentToFriend</th>
                                       <th runat="server">FriendName</th>
                                       <th runat="server">Comments</th>
                                   </tr>
                                   <tr runat="server" id="itemPlaceholder"></tr>
                               </table>
                           </td>
                       </tr>
                       <tr runat="server">
                           <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;"></td>
                       </tr>
                   </table>
               </LayoutTemplate>
               <SelectedItemTemplate>
                   <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                       <td>
                           <asp:Label Text='<%# Eval("BookID") %>' runat="server" ID="BookIDLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Genre") %>' runat="server" ID="GenreLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("NoOfPages") %>' runat="server" ID="NoOfPagesLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("LentToFriend") %>' runat="server" ID="LentToFriendLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("FriendName") %>' runat="server" ID="FriendNameLabel" /></td>
                       <td>
                           <asp:Label Text='<%# Eval("Comments") %>' runat="server" ID="CommentsLabel" /></td>
                   </tr>
               </SelectedItemTemplate>
           </asp:ListView>--%>


           <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ShalomLibrary %>' SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
       </p>
   </div>
    <p><a href="AddBook.aspx">Click to Add another Book</a></p>

</asp:Content>

