using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class Manager_Default : System.Web.UI.Page
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

private void BindRepeater()
    {
        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {
            var featuredPostings = from f in myEntity.Postings
                                   where f.TradersEmail == null && f.ImageURL != null
                                   orderby f.EnteredOn descending
                                   select new { f.Id, f.Title, f.Author, f.ISBN, f.ImageURL };

            rptFeaturedContent.DataSource = featuredPostings.Take(10);
            rptFeaturedContent.DataBind();
        }
    }
}
