using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class Posting_TradeYourBook : System.Web.UI.Page
{
    int _id = -1;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            // check whether querystring is empty
            if (!string.IsNullOrEmpty(Request.QueryString.Get("Id")))
            {
                _id = Convert.ToInt32(Request.QueryString.Get("Id"));
            }

            // if update
            if (!IsPostBack && _id > -1)
            {
                using (BookExchangeEntities myEntity = new BookExchangeEntities())
                {
                    var posting = (from p in myEntity.Postings
                                   where p.Id == _id
                                   select p).SingleOrDefault();

                    if (posting != null)
                    {
                        txtISBN.Text = posting.ISBN;
                        txtDescription.Text = posting.Description;
                        txtMajor.Text = posting.Major;
                        txtTitle.Text = posting.Title;
                        txtAuthor.Text = posting.Author;
                        txtExpectedValue.Text = posting.Description.ToString();                        

                        //ddlCondition.DataBind();
                        //ListItem myItem = ddlCondition.Items.FindByValue(posting.Condition.ToString());
                        //if (myItem != null)
                        //{
                        //    myItem.Selected = true;
                        //}
                        
                        Image1.ImageUrl = posting.ImageURL;
                    }
                }
            }
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
    }
    protected void btnPost_Click(object sender, EventArgs e)
    {
        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {
            Posting myPosting;

            // if insert
            if (_id == -1)
            {
                myPosting = new Posting();

                myPosting.UserEmail = Session["email"].ToString();
                myPosting.EnteredOn = DateTime.Now;

                myEntity.AddToPostings(myPosting);
            }
            else
            {
                myPosting = (from p in myEntity.Postings
                             where p.Id == _id
                             select p).SingleOrDefault();
            }

            myPosting.ISBN = txtISBN.Text;
            myPosting.Description = txtDescription.Text;
            myPosting.Major = txtMajor.Text;            
            myPosting.Title = txtTitle.Text;
            myPosting.Author = txtAuthor.Text;
            myPosting.Price = Convert.ToDecimal(txtExpectedValue.Text);
            //myPosting.Condition = ddlCondition.SelectedItem.ToString();
            myPosting.UpdatedOn = DateTime.Now;

            // Image
            if (FileUpload1.HasFile)
            {
                string virtualFolder = "~/Images/Postings/";
                string physicalFolder = Server.MapPath(virtualFolder);
                string fileName = Guid.NewGuid().ToString();
                string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                FileUpload1.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension));
                myPosting.ImageURL = virtualFolder + fileName + extension;
            }

            myEntity.SaveChanges();
            Response.Redirect("Default.aspx");
        }
    }
}