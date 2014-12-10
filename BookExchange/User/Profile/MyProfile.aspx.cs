using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class User_Profile_MyProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            string email = Session["email"].ToString();

            using (BookExchangeEntities myEntity = new BookExchangeEntities())
            {
                // Users
                var users = (from u in myEntity.Users
                             where u.Email == email
                             select u).SingleOrDefault();

                lblName.Text = users.FirstName + " " + users.LastName;
                lblDescription.Text = users.Description;
                lblCurrentCollege.Text = users.CurrentCollege;
                lblCity.Text = users.City;
                lblPhone.Text = users.Phone;

                Image1.ImageUrl = users.ImageURL;

                // Current Postings
                var postings = from p in myEntity.Postings
                               where p.UserEmail == email && p.TradersEmail == null
                               orderby p.EnteredOn descending
                               select new { p.Id, p.Title, p.Price, p.EnteredOn, p.Author };

                Repeater1.DataSource = postings;
                Repeater1.DataBind();

                // completed trades
                var completedPostings = from c in myEntity.Postings
                                        where c.UserEmail == email && c.TradersEmail != null
                                        orderby c.EnteredOn descending
                                        select new { c.Id, c.Title, c.Price, c.EnteredOn, c.Author };

                Repeater3.DataSource = completedPostings;
                Repeater3.DataBind();

                // my requests
                var myRequests = from myPost in myEntity.Postings
                                 join trade in myEntity.TradeRequests on myPost.Id equals trade.TradePostingId
                                 join urPost in myEntity.Postings on trade.PostingId equals urPost.Id
                                 where myPost.UserEmail == email && urPost.TradersEmail == null
                                 orderby trade.RequestDate descending
                                 select new { myTitle = myPost.Title, urTitle = urPost.Title, trade.RequestDate };

                Repeater2.DataSource = myRequests;
                Repeater2.DataBind();


                // requests for my books
                var pendingOffers = from tradersPost in myEntity.Postings
                                    join trade in myEntity.TradeRequests on tradersPost.Id equals trade.TradePostingId
                                    join myPost in myEntity.Postings on trade.PostingId equals myPost.Id
                                    where myPost.UserEmail == email && myPost.TradersEmail == null
                                    orderby trade.RequestDate descending
                                    select new { myTitle = myPost.Title, urTitle = tradersPost.Title, trade.RequestDate, trade.Id };

                Repeater4.DataSource = pendingOffers;
                Repeater4.DataBind();
            }
        }
    }
}