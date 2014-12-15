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
                            orderby h.EnteredOn descending
                            select h).FirstOrDefault();

            if (homepage != null)
            {
                Label1.Text = homepage.MessageOne;
                Label2.Text = homepage.MessageTwo;
                Label3.Text = homepage.MessageThree;
                Image1.ImageUrl = homepage.ImageURLOne;
                Image2.ImageUrl = homepage.ImageURLTwo;
                Image3.ImageUrl = homepage.ImageURLThree;
            }            
        }

        if (!Page.IsPostBack)
        {
            BindRepeater();
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Session["search"] = txtSearch.Text;
        Response.Redirect("~/Search.aspx");
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