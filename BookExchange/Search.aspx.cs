using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindListView();
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Session["search"] = txtSearch.Text;
        BindListView();
    }

    void BindListView()
    {
        string userEmail = "";
        string search = "";

        if (!IsPostBack)
        {
            txtSearch.Text = search;
        }
        if (Session["email"] != null)
        {
            userEmail = Session["email"].ToString();
        }
        if (Session["search"] != null)
        {
            search = Session["search"].ToString();
            txtSearch.Text = search;
        }

        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {
            if (Session["search"] == null) // if search does not exsist
            {
                if (Session["email"] != null) // if logged in, show all
                {
                    var postings = from p in myEntity.Postings
                                   where p.UserEmail != userEmail && p.TradersEmail == null
                                   orderby p.EnteredOn descending
                                   select new { p.Title, p.Id, p.Author, p.Price, p.Major, p.ISBN, p.EnteredOn, p.Condition, p.UserEmail, p.ImageURL };
                    ListView1.DataSource = postings;
                    ListView1.DataBind();
                }
                else
                {
                    var postings = from p in myEntity.Postings // if not logged in, show all but your postings
                                   where p.TradersEmail == null
                                   orderby p.EnteredOn descending
                                   select new { p.Title, p.Id, p.Author, p.Price, p.Major, p.ISBN, p.EnteredOn, p.Condition, p.UserEmail, p.ImageURL };
                    ListView1.DataSource = postings;
                    ListView1.DataBind();
                }
            }
            else // if search does exsist
            {
                if (Session["email"] != null) // if not logged in, show all that meets search criteria
                {                    
                    var postings = from p in myEntity.Postings
                                   where p.UserEmail != userEmail && p.TradersEmail == null && p.Title.Contains(search) ||
                                           p.UserEmail != userEmail && p.TradersEmail == null && p.Author.Contains(search) ||
                                           p.UserEmail != userEmail && p.TradersEmail == null && p.ISBN.Contains(search)
                                   orderby p.EnteredOn descending
                                   select new { p.Title, p.Id, p.Author, p.Price, p.Major, p.ISBN, p.EnteredOn, p.Condition, p.UserEmail, p.ImageURL };
                    ListView1.DataSource = postings;
                    ListView1.DataBind();
                }
                else // if logged in, show all that meets search criteria but your postings
                {
                    var postings = from p in myEntity.Postings
                                   where p.TradersEmail == null && p.Title.Contains(search) ||
                                           p.TradersEmail == null && p.Author.Contains(search) ||
                                           p.TradersEmail == null && p.ISBN.Contains(search)
                                   orderby p.EnteredOn descending
                                   select new { p.Title, p.Id, p.Author, p.Price, p.Major, p.ISBN, p.EnteredOn, p.Condition, p.UserEmail, p.ImageURL };
                    ListView1.DataSource = postings;
                    ListView1.DataBind();
                }
            }
        }
    }

    protected void OnPagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        (ListView1.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        BindListView();
    }
}