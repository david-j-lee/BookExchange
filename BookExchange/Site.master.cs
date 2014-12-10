using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            // if user is logged in
            HyperLink1.Text = "Sign Out";
            HyperLink1.NavigateUrl = "~/SignOut.aspx";
            
            HyperLink6.Visible = false;
            HyperLink8.Visible = true;
            
            string email = Session["email"].ToString();
            using (BookExchangeEntities myEntity = new BookExchangeEntities())
            {
                var user = (from u in myEntity.Users
                            where u.Email == email
                            select u).SingleOrDefault();

                HyperLink8.Text = user.FirstName.ToString() + " " + user.LastName.ToString();

                if (user.Type == 0)
                {
                    // if basic user
                    HyperLink8.NavigateUrl = "~/User/Profile/MyProfile.aspx";                    
                }
                else
                {
                    // if manager
                    HyperLink8.NavigateUrl = "~/Manager/Default.aspx";                    
                }
            }
        }
        else
        {
            // if user is not login
            HyperLink1.Text = "Sign In";
            HyperLink1.NavigateUrl = "~/Login.aspx";
            HyperLink6.Visible = true;
            HyperLink8.Visible = false;
        }
    }
}
