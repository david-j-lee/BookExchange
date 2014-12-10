using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class Manager_ManageTradeRequests : System.Web.UI.Page
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
                    // my requests
                    var tradeRequests = from myPost in myEntity.Postings
                                        join trade in myEntity.TradeRequests on myPost.Id equals trade.TradePostingId
                                        join urPost in myEntity.Postings on trade.PostingId equals urPost.Id
                                        orderby trade.RequestDate descending
                                        select new { trade.Id, myEmail = myPost.UserEmail, urEmail = urPost.UserEmail, trade.RequestDate, myPost.ImageURL, myPost.Title, myPost.Author };
                    Repeater1.DataSource = tradeRequests;
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
                // my requests
                var tradeRequests = from myPost in myEntity.Postings
                                    join trade in myEntity.TradeRequests on myPost.Id equals trade.TradePostingId
                                    join urPost in myEntity.Postings on trade.PostingId equals urPost.Id
                                    where myPost.UserEmail == txtEmailSearch.Text
                                    orderby trade.RequestDate descending
                                    select new { trade.Id, myEmail = myPost.UserEmail, urEmail = urPost.UserEmail, trade.RequestDate, myPost.ImageURL, myPost.Title, myPost.Author };
                Repeater1.DataSource = tradeRequests;
                Repeater1.DataBind();
            }
            else
            {
                // my requests
                var tradeRequests = from myPost in myEntity.Postings
                                    join trade in myEntity.TradeRequests on myPost.Id equals trade.TradePostingId
                                    join urPost in myEntity.Postings on trade.PostingId equals urPost.Id
                                    orderby trade.RequestDate descending
                                    select new { trade.Id, myEmail = myPost.UserEmail, urEmail = urPost.UserEmail, trade.RequestDate, myPost.ImageURL, myPost.Title, myPost.Author };
                Repeater1.DataSource = tradeRequests;
                Repeater1.DataBind();
            }
        }
    }
}