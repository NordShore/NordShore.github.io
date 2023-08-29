using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography.X509Certificates;

namespace NordShore.Web_Pages
{
    public partial class ForgottenPassword : System.Web.UI.Page
    {
        public static string userEmpty;
        public static string passEmpty;

        public static string userCredential;
        public static string emailCredential;
        public static string userDisplay;
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
        protected void getCode_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from login where userName = @Username and userEmail = @Email", con);

            cmd.Parameters.AddWithValue("@Username", username.Text); 
            cmd.Parameters.AddWithValue("@Email", Email.Text);

            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                // Sends email to user with link to reset
                userCredential = sdr["userName"].ToString();
                emailCredential = sdr["userEmail"].ToString();

                // Create an instance of EmailClient and call the btnSendEmail_Click method.
                EmailClient emailClient = new EmailClient();
                emailClient.btnSendEmail_Click(userCredential, emailCredential);

                Response.Redirect("ResetPassword.aspx");
            }
            else
            {
                errorLabel.Text = "The username or Email may be incorrect";
            }
        }
    }
}