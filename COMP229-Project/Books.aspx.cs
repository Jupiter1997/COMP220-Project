using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Books : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            LoadBooks();
        }
       
    }
    private void LoadBooks()
    {

      
    }
   

    protected void BookGrid_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindDetails();
      
        
    }
    private void bindDetails()
    {
        int selectedRowIndex = BookGrid.SelectedIndex + 1;
        //  int bookID = (int)BookGrid.DataKeys[selectedRowIndex].Value;
        Label1.Text = selectedRowIndex.ToString();
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;
        string connectionString =
            ConfigurationManager.ConnectionStrings["ShalomLibrary"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("Select * from Book where BookID=@bookID", conn);
        comm.Parameters.Add("@bookID", SqlDbType.Int).Value = selectedRowIndex;
   
        try
        {
            conn.Open();
            reader = comm.ExecuteReader();

            BookListView.DataSource = reader;
            BookListView.DataBind();
        }

        finally
        {
            conn.Close();
        }


    }








}