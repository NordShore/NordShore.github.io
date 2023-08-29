using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Threading.Tasks;

namespace NordShore.Web_Pages
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void contacted_Click(object sender, EventArgs e)
        {
            string email = emailValidation.Text;
            string userInput = Request.Form["requestInput"];
            if (string.IsNullOrEmpty(email)) 
            {
                emailError.Text = "You need to enter your Email"; 
            }
            else 
            {
                emailError.Text = "";
            }
            if (string.IsNullOrEmpty(userInput))
            {
                textError.Text = "You need to tell us something!!!";
            }
            else
            {
                EmailClient emailClient = new EmailClient();
                emailClient.contactedUs(email, userInput);
                Task.Delay(2000);
                textError.Text = "Request sent";
                Task.Delay(2000);
                textError.Text = "";
            }
        }

    }
}