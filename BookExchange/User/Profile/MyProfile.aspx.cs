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
        if (Session["email"] != null)
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

                // Postings
                var postings = from p in myEntity.Postings
                               where p.UserEmail == email
                               orderby p.EnteredOn descending
                               select new { p.Id, p.Title, p.Price, p.EnteredOn, p.Author };

                Repeater1.DataSource = postings;
                Repeater1.DataBind();
            }
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}