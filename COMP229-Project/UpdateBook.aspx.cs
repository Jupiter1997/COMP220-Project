using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class UpdateBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {




    }
    protected void Page_Init(object sender, EventArgs e)
    {

        LoadBoxes();
    }
    private void LoadBoxes()
    {
     
        int bookID = (int)Session["Selectedbook"];

        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;
        string connectionString =
            ConfigurationManager.ConnectionStrings["ShalomLibrary"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("Select * from Book where BookID=@bookID", conn);
        comm.Parameters.Add("@bookID", SqlDbType.Int).Value = bookID;
        try
        {
            conn.Open();
            reader = comm.ExecuteReader();
            while (reader.Read())
            {
                txtTitle.Text = reader["Title"].ToString();
                txtAuthor.Text = reader["Author"].ToString();
                txtISBN.Text = reader["ISBN"].ToString();
                txtGenre.Text = reader["Genre"].ToString();
                txtNoofPages.Text = reader["NoOfPages"].ToString();
                radlistLent.SelectedValue = reader["LentToFriend"].ToString();
                txtFriendName.Text = reader["FriendName"].ToString();
                txtAreaComments.Value = reader["Comments"].ToString();

            }
           

        }
        finally
        {
            conn.Close();
        }

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int bookID = (int)Session["Selectedbook"];

        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;
        string connectionString =
            ConfigurationManager.ConnectionStrings["ShalomLibrary"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("Update Book Set Title = @Title, Author = @Author, ISBN = @ISBN, Genre = @Genre, NoOfPages = @NoofPages, LentToFriend = @LentToFriend, FriendName = @FriendName, Comments = @Comments Where BookID = @bookID", conn);
        comm.Parameters.Add("@bookID", SqlDbType.Int).Value = bookID;

        comm.Parameters.Add("@Title", SqlDbType.NVarChar).Value = txtTitle.Text;

        comm.Parameters.Add("@Author", SqlDbType.NVarChar).Value = txtAuthor.Text;

        comm.Parameters.Add("@ISBN", SqlDbType.NVarChar).Value = txtISBN.Text;

        comm.Parameters.Add("@Genre", SqlDbType.NVarChar).Value = txtGenre.Text;

        comm.Parameters.Add("@NoOfPages", SqlDbType.NVarChar).Value = txtNoofPages.Text;

        comm.Parameters.Add("@LentToFriend", SqlDbType.NVarChar).Value = radlistLent.SelectedValue;

        comm.Parameters.Add("@FriendName", SqlDbType.NVarChar).Value = txtFriendName.Text;

        comm.Parameters.Add("@Comments", SqlDbType.NVarChar).Value = txtAreaComments.Value;
        try
        {
            conn.Open();
            comm.ExecuteNonQuery();
            Response.Redirect("Books.aspx");
   
        }


        finally
        {

            conn.Close();
        }


    }

    protected void radlistLent_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (radlistLent.SelectedValue == "Yes")
        {
            txtFriendName.Enabled = true;

            FriendNameReq.Enabled = true;
        }
        else
        {
            txtFriendName.Enabled = false;
            txtFriendName.Text = "";
            FriendNameReq.Enabled = false;
        }
    }


  
}