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
        string userEmail = "";

        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {

            if (Session["email"] != null)
            {
                userEmail = Session["email"].ToString();
                var postings = from p in myEntity.Postings
                               where p.UserEmail != userEmail && p.TradersEmail == null
                               orderby p.EnteredOn descending
                               select new { p.Title, p.Id, p.Author, p.Price, p.Major };
                Repeater1.DataSource = postings;
                Repeater1.DataBind();  
            }
            else
            {
                var postings = from p in myEntity.Postings
                               where p.TradersEmail == null
                               orderby p.EnteredOn descending
                               select new { p.Title, p.Id, p.Author, p.Price, p.Major };
                Repeater1.DataSource = postings;
                Repeater1.DataBind();  
            }            
        }
    }
}