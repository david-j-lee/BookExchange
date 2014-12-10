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
        // run if no search
        string userEmail = "";

        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {
            if (Session["search"] == null)
            {


                if (Session["email"] != null)
                {
                    userEmail = Session["email"].ToString();
                    var postings = from p in myEntity.Postings
                                   where p.UserEmail != userEmail && p.TradersEmail == null
                                   orderby p.EnteredOn descending
                                   select new { p.Title, p.Id, p.Author, p.Price, p.Major, p.ISBN, p.EnteredOn, p.Condition, p.UserEmail, p.ImageURL };                    
                    Repeater1.DataSource = postings;
                    Repeater1.DataBind();
                }
                else
                {
                    var postings = from p in myEntity.Postings
                                   where p.TradersEmail == null
                                   orderby p.EnteredOn descending
                                   select new { p.Title, p.Id, p.Author, p.Price, p.Major, p.ISBN, p.EnteredOn, p.Condition, p.UserEmail, p.ImageURL };
                    Repeater1.DataSource = postings;
                    Repeater1.DataBind();
                }
            }
            else
            {
                if (Session["search"] != "")
                {                    
                    // run if not blank
                    string search = Session["search"].ToString();

                    if (Session["email"] != null)
                    {
                        userEmail = Session["email"].ToString();
                        var postings = from p in myEntity.Postings
                                       where p.UserEmail != userEmail && p.TradersEmail == null && p.Title == search
                                       orderby p.EnteredOn descending
                                       select new { p.Title, p.Id, p.Author, p.Price, p.Major, p.ISBN, p.EnteredOn, p.Condition, p.UserEmail, p.ImageURL };
                        Repeater1.DataSource = postings;
                        Repeater1.DataBind();
                    }
                    else
                    {
                        var postings = from p in myEntity.Postings
                                       where p.TradersEmail == null && p.Title == search
                                       orderby p.EnteredOn descending
                                       select new { p.Title, p.Id, p.Author, p.Price, p.Major, p.ISBN, p.EnteredOn, p.Condition, p.UserEmail, p.ImageURL };
                        Repeater1.DataSource = postings;
                        Repeater1.DataBind();
                    }
                }
                else
                {
                    // run if blank
                    if (Session["email"] != null)
                    {
                        userEmail = Session["email"].ToString();
                        var postings = from p in myEntity.Postings
                                       where p.UserEmail != userEmail && p.TradersEmail == null
                                       orderby p.EnteredOn descending
                                       select new { p.Title, p.Id, p.Author, p.Price, p.Major, p.ISBN, p.EnteredOn, p.Condition, p.UserEmail, p.ImageURL };
                        Repeater1.DataSource = postings;
                        Repeater1.DataBind();
                    }
                    else
                    {
                        var postings = from p in myEntity.Postings
                                       where p.TradersEmail == null
                                       orderby p.EnteredOn descending
                                       select new { p.Title, p.Id, p.Author, p.Price, p.Major, p.ISBN, p.EnteredOn, p.Condition, p.UserEmail, p.ImageURL };
                        Repeater1.DataSource = postings;
                        Repeater1.DataBind();
                    }
                }
            }
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string userEmail = "";
        string search = txtSearch.Text;
        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {
            if (search != "")
            {
                // run if not blank
                if (Session["email"] != null)
                {
                    userEmail = Session["email"].ToString();
                    var postings = from p in myEntity.Postings
                                   where p.UserEmail != userEmail && p.TradersEmail == null && p.Title == search
                                   orderby p.EnteredOn descending
                                   select new { p.Title, p.Id, p.Author, p.Price, p.Major, p.ISBN, p.EnteredOn, p.Condition, p.UserEmail, p.ImageURL };
                    Repeater1.DataSource = postings;
                    Repeater1.DataBind();
                }
                else
                {
                    var postings = from p in myEntity.Postings
                                   where p.TradersEmail == null && p.Title == search
                                   orderby p.EnteredOn descending
                                   select new { p.Title, p.Id, p.Author, p.Price, p.Major, p.ISBN, p.EnteredOn, p.Condition, p.UserEmail, p.ImageURL };
                    Repeater1.DataSource = postings;
                    Repeater1.DataBind();
                }
            }
            else
            {
                // run if blank
                if (Session["email"] != null)
                {
                    userEmail = Session["email"].ToString();
                    var postings = from p in myEntity.Postings
                                   where p.UserEmail != userEmail && p.TradersEmail == null
                                   orderby p.EnteredOn descending
                                   select new { p.Title, p.Id, p.Author, p.Price, p.Major, p.ISBN, p.EnteredOn, p.Condition, p.UserEmail, p.ImageURL };
                    Repeater1.DataSource = postings;
                    Repeater1.DataBind();
                }
                else
                {
                    var postings = from p in myEntity.Postings
                                   where p.TradersEmail == null
                                   orderby p.EnteredOn descending
                                   select new { p.Title, p.Id, p.Author, p.Price, p.Major, p.ISBN, p.EnteredOn, p.Condition, p.UserEmail, p.ImageURL };
                    Repeater1.DataSource = postings;
                    Repeater1.DataBind();
                }
            }
        }
    }
}