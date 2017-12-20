using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

 
       
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Application["Theme"] != null)
        {
            Page.Theme = Application["Theme"].ToString();
        }
        //switch (Request.QueryString["theme"])
        //{
        //    case "Dark":
        //        Page.Theme ="Dark";
        //        break;
        //    case "Light":
        //        Page.Theme = "Light";
        //        break;
        //}
    }
    protected void btnLight_Click(object sender, EventArgs e)
    {
        //Response.Redirect("Default.aspx?theme=Light");
        Application["Theme"] = btnLight.Text;
        Server.Transfer(Request.FilePath);
    }
    protected void btnDark_Click(object sender, EventArgs e)
    {
        // Response.Redirect("Default.aspx?theme=Dark");
        Application["Theme"] = btnDark.Text;
        Server.Transfer(Request.FilePath);
    }
}