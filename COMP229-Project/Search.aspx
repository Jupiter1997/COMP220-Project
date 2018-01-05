<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="divBook">
    <asp:Label ID="Label1" runat="server" Text="Search By Genre:"></asp:Label>
         <asp:DropDownList ID="ddGenre" runat="server">
        </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" /><br />
        <asp:Label ID="Label2" runat="server" Text="Search by Firend's Name:"></asp:Label>
    <asp:DropDownList ID="ddFriend" runat="server">
                 
        </asp:DropDownList>
    <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" /><br />


      
                

        <asp:Button ID="btnShowAdd" runat="server" Text="Add A Genre" OnClick="btnShowAdd_Click" />


                <asp:Label ID="lblAddGenre" runat="server" Text="Add a Genre:" Visible="false"></asp:Label>       
    <asp:TextBox ID="txtAddGenre" runat="server" Visible="false"></asp:TextBox>
    <asp:Button ID="btnAddGenre" runat="server" Text="Add Genre" OnClick="Button3_Click" Visible="False" /><br />
         <br />
        <asp:ListView ID="SearchListView" runat="server">
            <AlternatingItemTemplate>
                <span style="background-color: #FFFFFF; color: #284775;">BookID:
                    <asp:Label Text='<%# Eval("BookID") %>' runat="server" ID="BookIDLabel" /><br />
                    Title:
                    <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /><br />
                    Author:
                    <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /><br />
                    ISBN:
                    <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /><br />
                    Genre:
                    <asp:Label Text='<%# Eval("Genre") %>' runat="server" ID="GenreLabel" /><br />
                    NoOfPages:
                    <asp:Label Text='<%# Eval("NoOfPages") %>' runat="server" ID="NoOfPagesLabel" /><br />
                    LentToFriend:
                    <asp:Label Text='<%# Eval("LentToFriend") %>' runat="server" ID="LentToFriendLabel" /><br />
                    FriendName:
                    <asp:Label Text='<%# Eval("FriendName") %>' runat="server" ID="FriendNameLabel" /><br />
                    Comments:
                    <asp:Label Text='<%# Eval("Comments") %>' runat="server" ID="CommentsLabel" /><br />
                    <br />
                </span>

            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #999999;">BookID:
                    <asp:Label Text='<%# Eval("BookID") %>' runat="server" ID="BookIDLabel1" /><br />
                    Title:
                    <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /><br />
                    Author:
                    <asp:TextBox Text='<%# Bind("Author") %>' runat="server" ID="AuthorTextBox" /><br />
                    ISBN:
                    <asp:TextBox Text='<%# Bind("ISBN") %>' runat="server" ID="ISBNTextBox" /><br />
                    Genre:
                    <asp:TextBox Text='<%# Bind("Genre") %>' runat="server" ID="GenreTextBox" /><br />
                    NoOfPages:
                    <asp:TextBox Text='<%# Bind("NoOfPages") %>' runat="server" ID="NoOfPagesTextBox" /><br />
                    LentToFriend:
                    <asp:TextBox Text='<%# Bind("LentToFriend") %>' runat="server" ID="LentToFriendTextBox" /><br />
                    FriendName:
                    <asp:TextBox Text='<%# Bind("FriendName") %>' runat="server" ID="FriendNameTextBox" /><br />
                    Comments:
                    <asp:TextBox Text='<%# Bind("Comments") %>' runat="server" ID="CommentsTextBox" /><br />
                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" /><asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" /><br />
                    <br />
                </span>

            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>

            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">Title:
                    <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /><br />
                    Author:
                    <asp:TextBox Text='<%# Bind("Author") %>' runat="server" ID="AuthorTextBox" /><br />
                    ISBN:
                    <asp:TextBox Text='<%# Bind("ISBN") %>' runat="server" ID="ISBNTextBox" /><br />
                    Genre:
                    <asp:TextBox Text='<%# Bind("Genre") %>' runat="server" ID="GenreTextBox" /><br />
                    NoOfPages:
                    <asp:TextBox Text='<%# Bind("NoOfPages") %>' runat="server" ID="NoOfPagesTextBox" /><br />
                    LentToFriend:
                    <asp:TextBox Text='<%# Bind("LentToFriend") %>' runat="server" ID="LentToFriendTextBox" /><br />
                    FriendName:
                    <asp:TextBox Text='<%# Bind("FriendName") %>' runat="server" ID="FriendNameTextBox" /><br />
                    Comments:
                    <asp:TextBox Text='<%# Bind("Comments") %>' runat="server" ID="CommentsTextBox" /><br />
                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /><br />
                    <br />
                </span>

            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #E0FFFF; color: #333333;">BookID:
                    <asp:Label Text='<%# Eval("BookID") %>' runat="server" ID="BookIDLabel" /><br />
                    Title:
                    <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /><br />
                    Author:
                    <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /><br />
                    ISBN:
                    <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /><br />
                    Genre:
                    <asp:Label Text='<%# Eval("Genre") %>' runat="server" ID="GenreLabel" /><br />
                    NoOfPages:
                    <asp:Label Text='<%# Eval("NoOfPages") %>' runat="server" ID="NoOfPagesLabel" /><br />
                    LentToFriend:
                    <asp:Label Text='<%# Eval("LentToFriend") %>' runat="server" ID="LentToFriendLabel" /><br />
                    FriendName:
                    <asp:Label Text='<%# Eval("FriendName") %>' runat="server" ID="FriendNameLabel" /><br />
                    Comments:
                    <asp:Label Text='<%# Eval("Comments") %>' runat="server" ID="CommentsLabel" /><br />
                    <br />
                </span>

            </ItemTemplate>
            <LayoutTemplate>
                <div runat="server" id="itemPlaceholderContainer" style="font-family: Verdana, Arial, Helvetica, sans-serif;"><span runat="server" id="itemPlaceholder" /></div>
                <div style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF;">
                </div>

            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #E2DED6; font-weight: bold; color: #333333;">BookID:
                    <asp:Label Text='<%# Eval("BookID") %>' runat="server" ID="BookIDLabel" /><br />
                    Title:
                    <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /><br />
                    Author:
                    <asp:Label Text='<%# Eval("Author") %>' runat="server" ID="AuthorLabel" /><br />
                    ISBN:
                    <asp:Label Text='<%# Eval("ISBN") %>' runat="server" ID="ISBNLabel" /><br />
                    Genre:
                    <asp:Label Text='<%# Eval("Genre") %>' runat="server" ID="GenreLabel" /><br />
                    NoOfPages:
                    <asp:Label Text='<%# Eval("NoOfPages") %>' runat="server" ID="NoOfPagesLabel" /><br />
                    LentToFriend:
                    <asp:Label Text='<%# Eval("LentToFriend") %>' runat="server" ID="LentToFriendLabel" /><br />
                    FriendName:
                    <asp:Label Text='<%# Eval("FriendName") %>' runat="server" ID="FriendNameLabel" /><br />
                    Comments:
                    <asp:Label Text='<%# Eval("Comments") %>' runat="server" ID="CommentsLabel" /><br />
                    <br />
                </span>

            </SelectedItemTemplate>
    </asp:ListView>
        </div>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ShalomLibraryConnectionString %>' SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
</asp:Content>

