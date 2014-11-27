using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            HyperLink1.Text = "Sign Out";
            HyperLink1.NavigateUrl = "~/SignOut.aspx";
            HyperLink6.Visible = false;
        }
        else
        {
            HyperLink1.Text = "Sign In";
            HyperLink1.NavigateUrl = "~/Login.aspx";
            HyperLink6.Visible = true;
        }
    }
}
