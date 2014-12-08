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

        if (Session["email"] == null)
        {
            btnRequestTrade.Visible = false;
            ddlBooks.Visible = false;
        }
        else if (Session["email"].ToString() == posterEmail)
        {
            btnRequestTrade.Visible = false;
            ddlBooks.Visible = false;
        }
        else
        {
            // place trade request code here
        }

    }
    protected void btnRequestTrade_Click(object sender, EventArgs e)
    {

    }
}