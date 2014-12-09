using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;


public partial class Post_ExchangeRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            string myEmail = Session["email"].ToString();
            using (BookExchangeEntities myEntity = new BookExchangeEntities())
            {

                var myBookInfo = (from m in myEntity.Postings
                                  where m.UserEmail == myEmail
                                  select m).SingleOrDefault();
                lblMyTitle.Text = myBookInfo.Title;
                lblMyAuthor.Text = myBookInfo.Author;
                lblMyISBN.Text = myBookInfo.ISBN;
                lblMyCondition.Text = myBookInfo.Condition;
                lblMyPrice.Text = myBookInfo.Price.ToString();
                lblMyDescription.Text = myBookInfo.Description;

                // check whether querystring is empty
                int _id = -1;
                if (!string.IsNullOrEmpty(Request.QueryString.Get("Id")))
                {
                    _id = Convert.ToInt32(Request.QueryString.Get("Id"));
                }
                // if record found
                if (!IsPostBack && _id > -1)
                {
                    // must query traderequest to get traders information
                    var tradeRequest = (from t in myEntity.TradeRequests
                                        where t.Id == _id
                                        select t).SingleOrDefault();
                    // if trade request found
                    if (tradeRequest != null)
                    {
                        // to get trade info
                        var offeredBookInfo = (from o in myEntity.Postings
                                               where o.Id == tradeRequest.TradePostingId
                                               select o).SingleOrDefault();

                        lblTradersTitle.Text = offeredBookInfo.Title;
                        lblTradersAuthor.Text = offeredBookInfo.Author;
                        lblTradersISBN.Text = offeredBookInfo.ISBN;
                        lblTradersCondition.Text = offeredBookInfo.Condition;
                        lblTradersPrice.Text = offeredBookInfo.Price.ToString();
                        lblTradersDescription.Text = offeredBookInfo.Description;
                    }
                }                 
            }
        }
    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Profile/MyProfile.aspx");
    }
}