using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NordShore.Web_Pages
{
    public partial class SignUp : System.Web.UI.Page
    {
        public static bool visible = false;
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

        protected void createAccount_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            bool validInputs = true;

            // Validate user inputs
            string user = username.Text.Trim();
            string pass = password.Text.Trim();
            string confirmPass = validatePass.Text.Trim();
            string email = Email.Text.Trim();
            bool symbol = CheckForSymbol(email);

            if (string.IsNullOrEmpty(user))
            {
                validInputs = false;
                validateUser.Text = "Enter a Username";
            }
            else
            {
                validateUser.Text = "";
            }

            if (string.IsNullOrEmpty(pass))
            {
                validInputs = false;
                validatePassword.Text = "Enter a password";
            }
            else
            {
                validatePassword.Text = "";
            }

            if (string.IsNullOrEmpty(email))
            {
                validInputs = false;
                validateEmail.Text = "Enter your Email";
            }
            else
            {
                validateEmail.Text = "";
            }

            if (pass != confirmPass)
            {
                validInputs = false;
                validateConfirmation.Text = "The passwords entered must match";
            }
            else
            {
                validateConfirmation.Text = "";
            }

            if (!symbol)
            {
                validInputs = false;
                validateSymbol.Text = "The email entered is invalid";
            }
            else
            {
                validateSymbol.Text = "";
            }

            if (!validInputs)
            {
                // If any validation check fails, exit the function
                return;
            }

            // If all inputs are valid, proceed with database operations
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();

                    // Check for an available userID
                    int userIdentification = 1;
                    while (true)
                    {
                        SqlCommand search = new SqlCommand("SELECT COUNT(*) FROM login WHERE userID = @userID", conn);
                        search.Parameters.AddWithValue("@userID", userIdentification);
                        int count = (int)search.ExecuteScalar();
                        if (count > 0)
                        {
                            userIdentification += 1;
                        }
                        else
                        {
                            break;
                        }
                    }

                    // Insert the user data into the database
                    string command = "INSERT INTO login(userName, userPass, userEmail, joinUpdate, userID) " +
                                     "VALUES(@userName, @userPass, @userEmail, @update, @userID)";
                    SqlCommand cmd = new SqlCommand(command, conn);

                    string finalPass = Encryption.ConvertToHash(pass);
                    string update = "V1.0.0";

                    cmd.Parameters.AddWithValue("@userName", user);
                    cmd.Parameters.AddWithValue("@userPass", finalPass);
                    cmd.Parameters.AddWithValue("@userEmail", email);
                    cmd.Parameters.AddWithValue("@update", update);
                    cmd.Parameters.AddWithValue("@userID", userIdentification);

                    cmd.ExecuteNonQuery();

                    EmailClient emailClient = new EmailClient();
                    emailClient.signedUp(user, email);
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


        protected bool CheckForSymbol(string input)
        {
            return input.Contains("@");
        }

        protected void learnMore_Click(object sender, EventArgs e)
        {
            additionalInfo.Text = "When you create an account with us, you will automatically recieve monthly emails of our progress. So that it is worth while to you, you will also recieve discounts which can be applied on our shops. Addiionally, you will also get a chance to recieve early access to new products and any new apps that are created.";
        }
    }
}