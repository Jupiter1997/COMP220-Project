using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddBook : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            BindData();
        }


    }
    private void BindData()
    {

        string title = SmartBox.Title_txt;
        string author = SmartBox.Author_txt;
        string genre = txtGenre.Text;
        string lentToFriend = radlistLent.Text;
        string friendName = txtFriendName.Text;
        string comments = txtAreaComments.Value;
         int ISBN = Convert.ToInt32(SmartBox.ISBN_txt);
        int noOfPages = Convert.ToInt32(txtNoofPages.Text);


        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;
        string connectionString =
            ConfigurationManager.ConnectionStrings["ShalomLibrary"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("Insert into [Book]([Title], [Author],[ISBN],[Genre]," +
            "[NoOfPages],[LentToFriend,[FriendName],[Comments]) Values('@Title','@Author','@ISBN','@Genre','@NoOfPages','@LentToFriend','@)FriendName','@Comments')");
        comm.Parameters.Add("Title", SqlDbType.NVarChar);
        comm.Parameters["Title"].Value = title;
        comm.Parameters.Add("Author", SqlDbType.NVarChar);
        comm.Parameters["Author"].Value = author;
        comm.Parameters.Add("ISBN", SqlDbType.Int);
        comm.Parameters["ISBN"].Value = ISBN;
        comm.Parameters.Add("Genre", SqlDbType.NVarChar);
        comm.Parameters["Genre"].Value = genre;
        comm.Parameters.Add("NoOfPages", SqlDbType.Int);
        comm.Parameters["NoOfPages"].Value = noOfPages;
        comm.Parameters.Add("LentToFriend", SqlDbType.NVarChar);
        comm.Parameters["LentToFriend"].Value = lentToFriend;
        comm.Parameters.Add("FriendName", SqlDbType.NVarChar);
        comm.Parameters["FriendName"].Value = friendName;
        comm.Parameters.Add("Comments", SqlDbType.NVarChar);
        comm.Parameters["Comments"].Value = comm;
        try
        {
            conn.Open();
            reader = comm.ExecuteReader();
            
        }
      
        finally
        {
            conn.Close();
        }
    }
  


    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
            ((List<Book>)Application["bookList"]).Add(new Book
            {
                Title = SmartBox.Title_txt,
                Author = SmartBox.Author_txt,
                ISBN = SmartBox.ISBN_txt
            });
        }
        Response.Redirect("Books.aspx");
     
    }
 
    protected void radlistLent_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (radlistLent.SelectedValue == "Yes")
        {
            txtFriendName.Enabled = true;
            FriendNameReq.Enabled = true;
        }else
        {
            txtFriendName.Enabled = false;
            FriendNameReq.Enabled = false;
        }
    }
}