<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateBook.aspx.cs" Inherits="UpdateBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>Update Book</h2>

    <div id="divAddbook">

        <table style="width: 100%;">
            <tr>
                <td class="tblrightAl">
                    <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" MaxLength="50" Width="250px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="titleRequired" runat="server" ControlToValidate="txtTitle"
                        ErrorMessage="Title field is mandatory"></asp:RequiredFieldValidator></td>

            </tr>
            <tr>
                <td class="tblrightAl">
                    <asp:Label ID="lblAuthor" runat="server" Text="Author(s):"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtAuthor" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="authorRequired" runat="server" ControlToValidate="txtAuthor"
                        ErrorMessage=" One author is mandatory" Display="Dynamic"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="tblrightAl"></td>
                <td>
                    <asp:TextBox ID="txtAuthor1" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="tblrightAl"></td>
                <td>
                    <asp:TextBox ID="txtAuthor2" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="tblrightAl">
                    <asp:Label ID="lblISBN" runat="server" Text="ISBN No.:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtISBN" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>
                <td>
                    <asp:CompareValidator ID="ISBNVal" runat="server" ErrorMessage="Enter a number in this field" ControlToValidate="txtISBN" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator></td>
            </tr>

        </table>
        <br />
        <table style="width: 100%;">


            <tr>
                <td class="tblrightAl">
                    <asp:Label ID="lblGenre" runat="server" Text="Genre"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtGenre" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="tblrightAl">No. of Pages:</td>
                <td>
                    <asp:TextBox ID="txtNoofPages" runat="server" MaxLength="5" Width="250px"></asp:TextBox></td>
                <td>
                    <asp:RangeValidator ID="NumPageRequired" runat="server" ControlToValidate="txtNoofPages"
                        MinimumValue="1" MaximumValue="9999" Type="Integer"
                        ErrorMessage="Pages must be a positive number" Display="Dynamic"></asp:RangeValidator></td>
            </tr>
            <tr>
                <td class="tblrightAl">Lent to a friend?</td>
                <td>
                    <asp:RadioButtonList ID="radlistLent" runat="server" AutoPostBack="True" RepeatDirection="Horizontal"
                        OnSelectedIndexChanged="radlistLent_SelectedIndexChanged">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="tblrightAl">Friend's name:</td>
                <td>
                    <asp:TextBox ID="txtFriendName" runat="server" MaxLength="50" Width="250px"></asp:TextBox>

                </td>
                <td>
                     <asp:RequiredFieldValidator ID="FriendNameReq" runat="server"
                          ControlToValidate="txtFriendName"
                          ErrorMessage="Friend's name is mandatory" Display="Dynamic"></asp:RequiredFieldValidator></td>
            </tr>

            <tr>
                <td class="tblrightAl">Comments: </td>
                <td>
                    <textarea id="txtAreaComments" cols="20" rows="2" runat="server"></textarea></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style1">&nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" Height="30px" Width="60px" OnClick="btnUpdate_Click" />
                    &nbsp;
                </td>

            </tr>

        </table>
        <a href="Books.aspx" style="text-align: right;">Back to Books</a>




    </div>
</asp:Content>

