using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NordShore.Web_Pages
{
    public partial class Login : System.Web.UI.Page
    {
        public static string userEmpty;
        public static string passEmpty;
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

        protected void loginAccount_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from login where userName = @Username and userPass = @Password", con);

            string pass = password.Text;
            string encryptPass = Encryption.ConvertToHash(pass);

            cmd.Parameters.AddWithValue("@Username", username.Text);
            cmd.Parameters.AddWithValue("@Password", encryptPass);

            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                 errorLabel.Text = "The username or password may be incorrect or the username does not exist";      
            }
        }

        protected void forgotPass_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgottenPassword.aspx");
        }
    }
}