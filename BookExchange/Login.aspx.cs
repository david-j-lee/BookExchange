using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string _email = txtEmail.Text;
        string _password = txtPassword.Text;
        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {
            var user = (from u in myEntity.Users
                        where u.Email == _email && u.Password == _password
                        select u).SingleOrDefault();
            if (user != null)
            {
                Session["email"] = _email;
                Session["type"] = user.Type;

                if (user.Type == 0)
                {
                    Response.Redirect("~/User/Profile/MyProfile.aspx");
                }
                else
                {
                    Response.Redirect("~/Manager/Default.aspx");
                }
            }
            else
            {
                lblError.Text = "Username or password doesn't match.  Please try again.";
            }
        }
    }
}