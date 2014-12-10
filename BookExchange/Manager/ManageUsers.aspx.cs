using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class Managing_Users : System.Web.UI.Page
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
                    var users = from u in myEntity.Users
                                orderby u.CreatedOn
                                select new { u.Email, u.FirstName, u.LastName, u.CreatedOn };
                    Repeater1.DataSource = users;
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
                var users = from u in myEntity.Users
                            orderby u.CreatedOn
                            where u.Email == email
                            select new { u.Email, u.FirstName, u.LastName, u.CreatedOn };
                Repeater1.DataSource = users;
                Repeater1.DataBind();                
            }
            else
            {
                var users = from u in myEntity.Users
                            orderby u.CreatedOn
                            select new { u.Email, u.FirstName, u.LastName, u.CreatedOn };
                Repeater1.DataSource = users;
                Repeater1.DataBind();
            }            
        }
    }
}