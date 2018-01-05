using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class BookDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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

            BookLisTView.DataSource = reader;
            BookLisTView.DataBind();
        }

        finally
        {
            conn.Close();
        }
    }


    protected void Delete_Click(object sender, EventArgs e)
    {
        int bookID = (int)Session["Selectedbook"];

        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;
        string connectionString =
            ConfigurationManager.ConnectionStrings["ShalomLibrary"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("Delete from Book where BookID=@bookID", conn);
        comm.Parameters.Add("@bookID", SqlDbType.Int).Value = bookID;

        try
        {
            conn.Open();
            reader = comm.ExecuteReader();
            lblmessage.Text = "Book Deleted";
            BookLisTView.Visible = false;
            Delete.Visible = false;

   
        }

        finally
        {
            conn.Close();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateBook.aspx");
    }
}