<%@ Control Language="C#" ClassName="SmartBox" %>

<script runat="server">
    public string Title_txt
    {
        get
        {
            return txtTitle.Text;
        }
    }
    public string Title_lbl
    {
        set
        {
            lblTitle.Text = value;
        }
    }
    public string Author_txt
    {
        get
        {
            return txtAuthor.Text;
        }
    }
    public string Author_lbl
    {
        set
        {
            lblAuthor.Text = value;
        }

    }
    public int ISBN_txt
    {
        get
        {
            int test = Convert.ToInt32(txtISBN.Text);
            return test;
            //   return Convert.ToInt32(txtISBN.Text);
        }
    }
    public int ISBN_lbl
    {
        set
        {
            int test;

            test = Convert.ToInt32(lblISBN.Text);
            test= value;
        }
    }
</script>


<table style="width: 100%;">
         <tr>
                 <td class="tblrightAl"><asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label></td>
                 <td><asp:TextBox ID="txtTitle" runat="server" MaxLength="50" Width="250px"></asp:TextBox>                
                 </td>
                   <td><asp:RequiredFieldValidator ID="titleRequired" runat="server" ControlToValidate="txtTitle" 
                     ErrorMessage="Title field is mandatory"
                     ></asp:RequiredFieldValidator></td>
                
             </tr>
             <tr>
                 <td class="tblrightAl"> <asp:Label ID="lblAuthor" runat="server" Text="Author(s):"></asp:Label></td>
                 <td>    <asp:TextBox ID="txtAuthor" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>  
                <td><asp:RequiredFieldValidator ID="authorRequired" runat="server" ControlToValidate="txtAuthor" 
                     ErrorMessage=" One author is mandatory" Display="Dynamic"
                     ></asp:RequiredFieldValidator></td>
             </tr>
      <tr>
                 <td class="tblrightAl"></td>
                 <td><asp:TextBox ID="txtAuthor1" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>              
             </tr>
              <tr>
                 <td class="tblrightAl"></td>
                 <td><asp:TextBox ID="txtAuthor2" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>              
             </tr>
               <tr>
                 <td class="tblrightAl"><asp:Label ID="lblISBN" runat="server" Text="ISBN No.:"></asp:Label></td>
                 <td><asp:TextBox ID="txtISBN" runat="server" MaxLength="50" Width="250px"></asp:TextBox></td>
                 <td>
                     <asp:CompareValidator ID="ISBNVal" runat="server" ErrorMessage="Enter a number in this field" ControlToValidate="txtISBN" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator></td>
             </tr>

</table>

      