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

    protected void Button1_Click(object sender, EventArgs e)
    {
        
     
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;
        string connectionString =
            ConfigurationManager.ConnectionStrings["ShalomLibrary"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("Select * from book where Genre = @Genre", conn);
        comm.Parameters.Add("@Genre", SqlDbType.NVarChar).Value = txtGenreS.Text;

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
        comm.Parameters.Add("@FriendName", SqlDbType.NVarChar).Value = txtFriedS.Text;

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
}