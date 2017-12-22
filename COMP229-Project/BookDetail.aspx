<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookDetail.aspx.cs" Inherits="BookDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="divBook">
        <h2>Book Detail Page</h2>
    <asp:ListView ID="BookLisTView" runat="server" style="margin-right: 0px">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF; color: #284775;">
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
            <tr style="background-color: #999999;">
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
            <tr style="background-color: #E0FFFF; color: #333333;">
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
                            <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
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
                    <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF"></td>
                </tr>
            </table>

        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
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
    </asp:ListView>
        <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
            <asp:Button ID="Delete" runat="server" Text="Delete" Height="32px" OnClick="Delete_Click" Width="68px" /><br />
        <a href="Books.aspx" style="text-align:right;">Back to Books Collection</a>

        </div>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ShalomLibraryConnectionString %>' SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
</asp:Content>

