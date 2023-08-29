using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NordShore.Web_Pages
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        public static string user = EmailClient.userDisplay;
        public static bool visible = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            usernameVisability.Text = EmailClient.userDisplay;
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

        protected void resetAcc_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            // Validate user inputs
            string pass = password.Text.Trim();
            string confirmPass = validatePass.Text.Trim();

            if (string.IsNullOrEmpty(pass))
            {
                validatePassword.Text = "Enter a password";
            }
            else
            {
                validatePassword.Text = "";
            }
            if (pass != confirmPass)
            {
                validateConfirmation.Text = "The passwords entered must match";
            }
            else
            {
                validateConfirmation.Text = "";
            }
            string code = EmailClient.Code;
            if (codeValidate.Text != code)
            {
                validateCode.Text = "You need to enter the correct code";
            }
            else
            {
                validateCode.Text = "";
                // If all inputs are valid, proceed with database operations
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    try
                    {
                        conn.Open();
                        string command = "UPDATE login SET userPass = @userPass WHERE userName = @userName AND userEmail = @userEmail";

                        SqlCommand cmd = new SqlCommand(command, conn);

                        // Replace these values with the actual values you want to insert into the database
                        cmd.Parameters.AddWithValue("@userName", EmailClient.userDisplay);
                        cmd.Parameters.AddWithValue("@userEmail", EmailClient.emailData);
                        string finalPass = Encryption.ConvertToHash(pass);
                        cmd.Parameters.AddWithValue("@userPass", finalPass);

                        cmd.ExecuteNonQuery();
                        Response.Redirect("HomePage.aspx");
                    }
                    catch (Exception ex)
                    {
                        // Handle the exception appropriately (e.g., logging or showing a user-friendly error message)
                        // Avoid using a generic "throw" statement in production code
                        throw ex;
                    }
                }
            }
        }   
    }
}