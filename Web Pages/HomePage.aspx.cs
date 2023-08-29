using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NordShore.Web_Pages
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EmailClient emailClient = new EmailClient();
            emailClient.monthEmail(); 
        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void signUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void aboutUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutUs.aspx");
        }

        protected void contact_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUs.aspx");
        }

        protected void news_Click(object sender, EventArgs e)
        {
            Response.Redirect("News.aspx");
        }

        protected void subscribe_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void development_Click(object sender, EventArgs e)
        {
            Response.Redirect("Development.aspx");
        }

        protected void shopNow_Click(object sender, EventArgs e)
        {
            Response.Redirect("E-Commerce.aspx");
        }
    }
}