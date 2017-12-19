using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddBook : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
       

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

        }
     
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