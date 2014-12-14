using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class Manager_AllPostings : System.Web.UI.Page
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
                using (BookExchangeEntities myEntity = new BookExchangeEntities())
                {
                    var postings = from p in myEntity.Postings
                                   orderby p.EnteredOn
                                   select new { p.Id, p.UserEmail, p.Title, p.Author, p.TradersEmail, status = p.TradersEmail == null ? "Open" : "Closed"  };
                    Repeater1.DataSource = postings;
                    Repeater1.DataBind();
                }
            }
        }
    }
    protected void btnGo_Click(object sender, EventArgs e)
    {
        string email = txtEmailSearch.Text;
        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {
            if (txtEmailSearch.Text != "")
            {
                var postings = from p in myEntity.Postings
                               orderby p.EnteredOn
                               where p.UserEmail == email
                               select new { p.Id, p.UserEmail, p.Title, p.Author, p.TradersEmail };
                Repeater1.DataSource = postings;
                Repeater1.DataBind();
            }
            else
            {
                var postings = from p in myEntity.Postings
                               orderby p.EnteredOn
                               select new { p.Id, p.UserEmail, p.Title, p.Author, p.TradersEmail };
                Repeater1.DataSource = postings;
                Repeater1.DataBind();
            }
        }
    }
}