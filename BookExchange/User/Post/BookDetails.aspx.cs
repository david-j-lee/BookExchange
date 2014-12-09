using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class Post_BookDetails : System.Web.UI.Page
{
    int _id = -1;    

    protected void Page_Load(object sender, EventArgs e)
    {
        string posterEmail = "";

        // check whether querystring is empty
        if (!string.IsNullOrEmpty(Request.QueryString.Get("Id")))
        {
            _id = Convert.ToInt32(Request.QueryString.Get("Id"));
        }

        // if record found
        if (!IsPostBack && _id > -1)
        {            
            using (BookExchangeEntities myEntity = new BookExchangeEntities())
            {
                var posting = (from p in myEntity.Postings
                               where p.Id == _id
                               select p).SingleOrDefault();

                if (posting != null)
                {
                    posterEmail = posting.UserEmail; // to allocate email in order to use later to hide trade requesting
                    lblISBN.Text = posting.ISBN;
                    lblDescription.Text = posting.Description;
                    lblMajor.Text = posting.Major;
                    lblTitle.Text = posting.Title;
                    lblAuthor.Text = posting.Author;
                    lblExpectedValue.Text = posting.Price.ToString();
                    lblCondition.Text = posting.Condition;
                    Image1.ImageUrl = posting.ImageURL;
                }                
            }
        }


        // load login user access controls

        if (Session["email"] == null) // check if logged in
        {
            btnRequestTrade.Visible = false;
            ddlBooks.Visible = false;
        }
        else if (Session["email"].ToString() == posterEmail) // check if post is from you
        {
            btnRequestTrade.Visible = false;
            ddlBooks.Visible = false;
        }
        else
        {
            using (BookExchangeEntities myEntity = new BookExchangeEntities())
            {
                var myBooks = from p in myEntity.Postings
                              join t in myEntity.TradeRequests on p.Id equals t.PostingId into books
                              where p.UserEmail == Session["email"].ToString()
                              
                              from b in books.DefaultIfEmpty()
                              
                              select new { p.Title, p.Id };

                ddlBooks.DataTextField = "Title";
                ddlBooks.DataValueField = "Id";
                ddlBooks.DataBind();
            }
        }

    }
    protected void btnRequestTrade_Click(object sender, EventArgs e)
    {
        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {
            TradeRequest myTradeRequest;

            // if insert
            if (ddlBooks.SelectedIndex >= 0)
            {
                myTradeRequest = new TradeRequest();

                myTradeRequest.Status = 0;
                myTradeRequest.RequestDate = DateTime.Now;
                myTradeRequest.PostingId = _id;
                myTradeRequest.TradePostingId = Convert.ToInt32(ddlBooks.SelectedValue);

                myEntity.AddToTradeRequests(myTradeRequest);

                myEntity.SaveChanges();
            }
        }
    }
}