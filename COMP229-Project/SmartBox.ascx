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
            return Convert.ToInt32(txtISBN.Text);
        }
    }
    public int ISBN_lbl
    {
        set
        {

            value = Convert.ToInt32(lblISBN.Text);
        }
    }
</script>
<p>
    <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
      
      <asp:Label ID="lblAuthor" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>

        <asp:Label ID="lblISBN" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="txtISBN" runat="server"></asp:TextBox>


</p>
