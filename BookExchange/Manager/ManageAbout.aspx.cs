using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class Managing_ManageAbout : System.Web.UI.Page
{
    int _id = -1;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["type"] == null || Session["type"] == "0")
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            using (BookExchangeEntities myEntity = new BookExchangeEntities())
            {
                // load all home
                var allAbout = from a in myEntity.Abouts
                               orderby a.EnteredOn descending
                               select new { a.MessageOne, a.MessageTwo, a.MessageThree, a.ImageURLOne, a.ImageURLTwo, a.ImageURLThree, a.EnteredOn };

                Repeater1.DataSource = allAbout.Take(5);
                Repeater1.DataBind();

                // if update
                if (!IsPostBack)
                {
                    var about = (from a in myEntity.Abouts
                                 orderby a.EnteredOn descending
                                 select a).FirstOrDefault();

                    if (about != null)
                    {
                        txtMessageOne.Text = about.MessageOne;
                        txtMessageTwo.Text = about.MessageTwo;
                        txtMessageThree.Text = about.MessageThree;
                        btnUpdate.Text = "Update";
                        _id = about.Id;
                    }
                }
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {
            var about = (from a in myEntity.Abouts
                         orderby a.EnteredOn descending
                         select a).FirstOrDefault();
            About myAbout;
            // if insert
            if (_id == -1)
            {
                myAbout = new About();
                myAbout.EnteredOn = DateTime.Now;
                myEntity.AddToAbouts(myAbout);
            }
            else
            {
                myAbout = (from m in myEntity.Abouts
                          where m.Id == _id
                          select m).SingleOrDefault();
            }
            myAbout.MessageOne = txtMessageOne.Text;
            myAbout.MessageTwo = txtMessageTwo.Text;
            myAbout.MessageThree = txtMessageThree.Text;
            // default is previous image
            if (about != null)
            {
                myAbout.ImageURLOne = about.ImageURLOne;
                myAbout.ImageURLTwo = about.ImageURLTwo;
                myAbout.ImageURLThree = about.ImageURLThree;
            }
            // Image one
            if (FileUpload1.HasFile)
            {
                string virtualFolder = "~/Images/About/";
                string physicalFolder = Server.MapPath(virtualFolder);
                string fileName = Guid.NewGuid().ToString();
                string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                FileUpload1.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension));
                myAbout.ImageURLOne = virtualFolder + fileName + extension;
            }

            // Image two
            if (FileUpload2.HasFile)
            {
                string virtualFolder = "~/Images/About/";
                string physicalFolder = Server.MapPath(virtualFolder);
                string fileName = Guid.NewGuid().ToString();
                string extension = System.IO.Path.GetExtension(FileUpload2.FileName);
                FileUpload2.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension));
                myAbout.ImageURLTwo = virtualFolder + fileName + extension;
            }

            // Image three
            if (FileUpload3.HasFile)
            {
                string virtualFolder = "~/Images/About/";
                string physicalFolder = Server.MapPath(virtualFolder);
                string fileName = Guid.NewGuid().ToString();
                string extension = System.IO.Path.GetExtension(FileUpload3.FileName);
                FileUpload3.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension));
                myAbout.ImageURLThree = virtualFolder + fileName + extension;
            }            
            // save
            myEntity.SaveChanges();
            // Response.Redirect("~/Manager/Default.aspx");
        }
    }
}