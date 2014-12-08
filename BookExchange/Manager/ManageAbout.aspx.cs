using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Managing_ManageAbout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["type"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            if (Convert.ToInt32(Session["type"]) == 0)
            {
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                //input on load code here
            }
        }
    }
}