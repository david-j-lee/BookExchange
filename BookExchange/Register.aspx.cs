using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string _email = txtEmail.Text;
        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {
            var user = (from u in myEntity.Users
                        where u.Email == _email
                        select u).SingleOrDefault();

            if (user != null) //username already exists
            {
                lblError.Text = ("Email already exists, please choose another one");
            }
            else
            {
                User myUser = new User();
                myUser.Email = txtEmail.Text;
                myUser.FirstName = txtFirstName.Text;
                myUser.LastName = txtLastName.Text;
                myUser.Password = txtPassword1.Text;
                myUser.CreatedOn = DateTime.Now;
                myUser.Type = 0;

                myEntity.AddToUsers(myUser);
                myEntity.SaveChanges();
                Response.Redirect("Login.aspx");
            }
        }
    }
}