<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddBook.aspx.cs" Inherits="AddBook"%>

<%@ Register Src="~/SmartBox.ascx" TagPrefix="uc" TagName="SmartBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
   <h2>Add a Book</h2>
    
     <div id="divAddbook">
          <uc:SmartBox runat="server" ID="SmartBox" /><br />

         <table style="width: 100%;">

            
              <tr>
                 <td class="tblrightAl">
                     <asp:Label ID="lblGenre" runat="server" Text="Genre"></asp:Label></td>
                 <td><asp:TextBox ID="txtGenre" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>
                 <td>&nbsp;</td>
             </tr>
              <tr>
                 <td class="tblrightAl">No. of Pages:</td>
                 <td><asp:TextBox ID="txtNoofPages" runat="server" MaxLength="5" Width="250px"></asp:TextBox></td>
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
                 <td><asp:TextBox ID="txtFriendName" runat="server" MaxLength="50" Width="250px"></asp:TextBox>

                 </td>
                 <td>
                     <asp:RequiredFieldValidator ID="FriendNameReq" runat="server"
                          ControlToValidate="txtFriendName"
                          ErrorMessage="Friend's name is mandatory" Display="Dynamic"></asp:RequiredFieldValidator></td>
             </tr>
             
              <tr>
                 <td class="tblrightAl">Comments: </td>
                 <td><textarea id="txtAreaComments" cols="20" rows="2" runat="server"></textarea></td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td colspan="3" class="btnRow">&nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Save" OnClick="btnSubmit_Click" Height="30px" Width="60px" />
                     &nbsp;<asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnSubmit_Click" Height="30px" Width="60px" />
                 </td>
           
             </tr>
          
         </table>



       
    </div>
</asp:Content>

