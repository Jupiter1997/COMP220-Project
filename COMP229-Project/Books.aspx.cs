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
        Session["SelectedBook"] = selectedRowIndex;
        Response.Redirect("BookDetail.aspx");



    }








}