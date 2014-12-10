using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookExchangeModel;

public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (BookExchangeEntities myEntity = new BookExchangeEntities())
        {
            var aboutpage = (from a in myEntity.Abouts
                             orderby a.EnteredOn descending
                             select a).FirstOrDefault();

            if (aboutpage != null)
            {
                Label1.Text = aboutpage.MessageOne;
                Label2.Text = aboutpage.MessageTwo;
                Label3.Text = aboutpage.MessageThree;
                Image1.ImageUrl = aboutpage.ImageURLOne;
                Image2.ImageUrl = aboutpage.ImageURLTwo;
                Image3.ImageUrl = aboutpage.ImageURLThree;
            }
        }
    }
}