using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for Theme
/// </summary>
public class Theme:System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Application["Theme"] != null)
        {
            Page.Theme = Session["Theme"].ToString();
        }
    }

    public Theme()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}
