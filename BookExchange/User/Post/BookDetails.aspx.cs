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
                    lblUserEmail.Text = posting.UserEmail;
                    Image1.ImageUrl = posting.ImageURL;
                }                
            }
        }


        // load logged in user access controls
        if (Session["email"] == null) // check if logged in
        {
            btnRequestTrade.Visible = false;
            ddlBooks.Visible = false;
            lblRequestTradeMessage.Visible = false;
        }
        else if (Session["email"].ToString() == posterEmail) // check if post is from you
        {
            btnRequestTrade.Visible = false;
            ddlBooks.Visible = false;
            lblRequestTradeMessage.Visible = false;
        }
        else
        {
            // data bind the drop down list with users open book postings
            using (BookExchangeEntities myEntity = new BookExchangeEntities()) 
            {
                string myEmail = Session["email"].ToString();
                var myBooks = from p in myEntity.Postings
                              join t in myEntity.TradeRequests on p.Id equals t.TradePostingId into books
                              where p.UserEmail == myEmail && p.TradersEmail == null
                              
                              from b in books.DefaultIfEmpty()
                              where b.TradePostingId == null
                              select new { p.Title, p.Id, b.TradePostingId };

                ddlBooks.DataSource = myBooks;                            
                ddlBooks.DataTextField = "Title";
                ddlBooks.DataValueField = "Id";
                ddlBooks.DataBind();

                if (myBooks.FirstOrDefault() == null)
                {
                    btnRequestTrade.Visible = false;
                    ddlBooks.Visible = false;
                    lblRequestTradeMessage.Visible = true;
                    lblRequestTradeMessage.Text = "You do not have any books to trade.";
                }
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

                Response.Redirect("~/Search.aspx");
            }
        }
    }
}