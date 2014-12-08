using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {
            var homepage = (from h in myEntity.Homes
                            orderby h.Id descending
                            select h).FirstOrDefault();

            if (homepage != null)
            {
                Label1.Text = homepage.MessageOne;
                Label2.Text = homepage.MessageTwo;
            }
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Search.aspx");
    }
}