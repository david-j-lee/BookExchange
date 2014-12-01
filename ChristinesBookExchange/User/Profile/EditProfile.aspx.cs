using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class User_Profile_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {
            string email = Session["email"].ToString();

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
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string email = Session["email"].ToString();

        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {
            User myUser;

            myUser = (from u in myEntity.Users
                      where u.Email == email
                      select u).SingleOrDefault();

            myUser.FirstName = txtFirstName.Text;
            myUser.LastName = txtLastName.Text;
            myUser.City = txtCity.Text;
            myUser.Phone = txtPhone.Text;
            myUser.CurrentCollege = txtCurrentCollege.Text;
            myUser.Description = txtDescription.Text;

            // Image
            if (FileUpload1.HasFile)
            {
                string virtualFolder = "~/Images/Users/";
                string physicalFolder = Server.MapPath(virtualFolder);
                string fileName = Guid.NewGuid().ToString();
                string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                FileUpload1.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension));
                myUser.ImageURL = virtualFolder + fileName + extension;
            }

            myEntity.SaveChanges();
            Response.Redirect("~/User/Profile/MyProfile.aspx");
        }        
    }
}