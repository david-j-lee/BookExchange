using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class Managing_Home : System.Web.UI.Page
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
                if (Session["type"] == "0") // if user is logged in store the email
                {
                    Response.Redirect("~/Login.aspx");
                }

                if (!IsPostBack && email != "")
                {
                    using (BookExchangeEntities myEntity = new BookExchangeEntities())
                    {
                        var user = (from u in myEntity.Users
                                    where u.Email == email
                                    select u).SingleOrDefault();

                        if (user != null)
                        {
                            txtFirstName.Text = user.FirstName;
                            txtLastName.Text = user.LastName;
                            txtCurrentCollege.Text = user.CurrentCollege;
                            txtCity.Text = user.City;
                            txtPhone.Text = user.Phone;
                            txtDescription.Text = user.Description;

                            Image1.ImageUrl = user.ImageURL;
                        }
                    }
                }
            }
        }
    }
}