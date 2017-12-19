<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddBook.aspx.cs" Inherits="AddBook" %>

<%@ Register Src="~/SmartBox.ascx" TagPrefix="uc" TagName="SmartBox" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <uc:SmartBox runat="server" ID="SmartBox" />

     <div id="divAddbook">
         <table style="width: 100%;">
             <tr>
                 <th></th>
                   <th></th>
             </tr>
             <tr>
                 <td>Title: </td>
                 <td><asp:TextBox ID="txtTitle" runat="server" MaxLength="50" Width="250px"></asp:TextBox>                   
                 </td>
                   <td><asp:RequiredFieldValidator ID="titleRequired" runat="server" ControlToValidate="txtTitle" 
                     ErrorMessage="Title field is mandatory"
                     ></asp:RequiredFieldValidator></td>
                
             </tr>
             <tr>
                 <td>Author(s):</td>
                 <td><asp:TextBox ID="txtAuthor" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>  
                <td><asp:RequiredFieldValidator ID="authorRequired" runat="server" ControlToValidate="txtAuthor" 
                     ErrorMessage=" One author is mandatory" Display="Dynamic"
                     ></asp:RequiredFieldValidator></td>
             </tr>
              <tr>
                 <td></td>
                 <td><asp:TextBox ID="txtAuthor1" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>              
             </tr>
              <tr>
                 <td></td>
                 <td><asp:TextBox ID="txtAuthor2" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>              
             </tr>
               <tr>
                 <td>ISBN No.</td>
                 <td><asp:TextBox ID="txtISBN" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>
                 <td>&nbsp;</td>
             </tr>
              <tr>
                 <td>Genre:</td>
                 <td><asp:TextBox ID="txtGenre" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>
                 <td>&nbsp;</td>
             </tr>
              <tr>
                 <td>No. of Pages:</td>
                 <td><asp:TextBox ID="txtNoofPages" runat="server" MaxLength="5" Width="250px"></asp:TextBox></td>
                 <td>
                     <asp:RangeValidator ID="NumPageRequired" runat="server" ControlToValidate="txtNoofPages"
                          MinimumValue="1" MaximumValue="9999" Type="Integer"
                         ErrorMessage="Pages must be a positive number" Display="Dynamic"></asp:RangeValidator></td>
             </tr>
             <tr>
                 <td>Lent to a friend?</td>
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
                 <td>Friend's name:</td>
                 <td><asp:TextBox ID="txtFriendName" runat="server" MaxLength="50" Width="250px"></asp:TextBox>

                 </td>
                 <td>
                     <asp:RequiredFieldValidator ID="FriendNameReq" runat="server"
                          ControlToValidate="txtFriendName"
                          ErrorMessage="Friend's name is mandatory" Display="Dynamic"></asp:RequiredFieldValidator></td>
             </tr>
             
              <tr>
                 <td>Comments: </td>
                 <td><textarea id="TextArea1" cols="20" rows="2"></textarea></td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Add Book" OnClick="btnSubmit_Click" /></td>
           
             </tr>
         </table>

       <%--  <table style="width: 100%;">
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>--%>
       

       
    </div>
</asp:Content>

