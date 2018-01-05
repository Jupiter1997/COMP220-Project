using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
      
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        LoadDDGenre();
        LoadFriendName();
    }
    private void LoadDDGenre()
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;
        string connectionString =
            ConfigurationManager.ConnectionStrings["ShalomLibrary"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("Select Distinct Genre from Book", conn);
        try
        {
            conn.Open();
            reader = comm.ExecuteReader();
            ddGenre.DataSource = reader;
            ddGenre.DataTextField = "Genre";
            ddGenre.DataValueField = "Genre";
            ddGenre.DataBind();
 


        }
        catch
        {
            Label1.Text = "BOBO";
        }
        finally
        {
            conn.Close();
        }
    }
    private void LoadFriendName()
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;
        string connectionString =
            ConfigurationManager.ConnectionStrings["ShalomLibrary"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("Select Distinct FriendName from Book", conn);
        try
        {
            conn.Open();
            reader = comm.ExecuteReader();
            ddFriend.DataSource = reader;
            ddFriend.DataTextField = "FriendName";
            ddFriend.DataValueField = "FriendName";
            ddFriend.DataBind();



        }
        catch
        {
            Label1.Text = "BOBO";
        }
        finally
        {
            conn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
     
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;
        string connectionString =
            ConfigurationManager.ConnectionStrings["ShalomLibrary"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("Select * from book where Genre = @Genre", conn);
        comm.Parameters.Add("@Genre", SqlDbType.NVarChar).Value = ddGenre.SelectedValue;

        try
        {
            conn.Open();
            reader = comm.ExecuteReader();
            SearchListView.DataSource = reader;
            SearchListView.DataBind();


        }

        finally
        {
            conn.Close();
        }

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;
        string connectionString =
            ConfigurationManager.ConnectionStrings["ShalomLibrary"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("Select * from book where FriendName = @FriendName", conn);
        comm.Parameters.Add("@FriendName", SqlDbType.NVarChar).Value = ddFriend.SelectedValue;

        try
        {
            conn.Open();
            reader = comm.ExecuteReader();
            SearchListView.DataSource = reader;
            SearchListView.DataBind();


        }

        finally
        {
            conn.Close();
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        ddGenre.Items.Add(txtAddGenre.Text);

        lblAddGenre.Visible = false;
        txtAddGenre.Visible = false;
        btnAddGenre.Visible = false;
        btnShowAdd.Visible = true;

    }

    protected void btnShowAdd_Click(object sender, EventArgs e)
    {
        lblAddGenre.Visible = true;
        txtAddGenre.Visible = true;
        btnAddGenre.Visible = true;
        btnShowAdd.Visible = false;
    }
}