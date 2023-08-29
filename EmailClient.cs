using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using NordShore.Web_Pages;
using System.Security.Cryptography.X509Certificates;
using System.Web.UI;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;

namespace NordShore
{
    public class EmailClient
    {
        public static string emailData; 
        public static string userDisplay;
        public static string Code;
        string smtpServer = "smtp.office365.com";
        int smtpPort = 587;
        string senderEmail = "business.nordshore@outlook.com";
        string senderPassword = "Cheese23";

        protected void SendEmail(string subject, string body, string email)
        {
            try
            {
                using (SmtpClient smtpClient = new SmtpClient(smtpServer, smtpPort))
                {
                    smtpClient.EnableSsl = true;
                    smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtpClient.UseDefaultCredentials = false;
                    smtpClient.Credentials = new NetworkCredential(senderEmail, senderPassword);

                    using (MailMessage mailMessage = new MailMessage())
                    {
                        mailMessage.From = new MailAddress(senderEmail);
                        mailMessage.To.Add(new MailAddress(email));
                        mailMessage.Subject = subject;
                        mailMessage.Body = body;
                        mailMessage.IsBodyHtml = false; // Set to true if you are using HTML in the email body.

                        smtpClient.Send(mailMessage);
                    }
                }
            }
            catch (Exception ex)
            {
            }
        }
        //initialises email - for forgotten password 
        public void btnSendEmail_Click(string user, string emailName)
        {
            string formattedNumber = generator();
            userDisplay = user;
            //Email contents
            string subject = "Password Reset";
            string body = "Hello there " + user + ". As we test begin testing out our \"Reset Password\", we have decided to use text-based emails until we have worked out any potential troubleshooting so please bear with us regarding design looks. The code to reset your account is " + formattedNumber + ". Please give us feedback on how we can improve the service and enjoy your day.";
            emailData = emailName;

            SendEmail(subject, body, emailData);
        }

        //initialises email - for monthly emails 
        public void monthEmail()
        {
            DateTime currentDate = DateTime.Now;

            if (currentDate.Day == 1)
            {
             
            //Sending the Email to each user
            //looping until theres no more accounts
            bool loop = true;
            int loopValue = 8;
                while (loop == true)
                {
                    //establishes connection to server
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from login where id=" + loopValue + " userName = @Username and userEmail = @Email", con);

                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        string email = sdr["userEmail"].ToString();
                        string userCredentials = sdr["userName"].ToString();
                        if (email == "DELETED" || userCredentials == "DELETED")
                        {
                            loopValue += 1;
                        }
                        else
                        {
                            //Email contents
                            string subject = "NordShore Monthly Email";
                            string body = "Hello there " + userCredentials + ". This is the monthly newsletter which you will recieve from us at NordShore, I bet your asking what are the changes, and what are the plans for the future at NordShore. The email below will iterate all the steps which we will be taking to make your experience as fufilling as possible.";

                            SendEmail(subject, body, email);
                            loopValue += 1;
                        }
                    }
                    else
                    {
                        loop = false;
                    }
                }
            }
        }
        //initialises email - for account sign up 
        public void signedUp(string user, string emailName)
        {
            //Email contents
            string subject = "Account Created";
            string body = "Hello there " + user + ". Welcome to the NordShore community, as we grow and develop our services this account will become more and more versitile to you. In the meantime, why not enjoy a discount on us \"n3WaccounT\". Remember, by having an account with us you will recieve more and more rewards. Have a great Day!!! NordShore";
            string email = emailName;

            SendEmail(subject, body, email);
        }

        public static string generator()
        {
            // Random number generator using pseudorandom numbers
            Random randomNumber = new Random();
            int code = randomNumber.Next(1000000); // generates a random number between 0 and 999999
            Code = code.ToString("D6"); // formats the number with leading zeroes
            return Code;
        }

        //initialises email - for contact us
        public void contactedUs(string emailName, string content)
        {
            //Email contents
            string subject = "Request from @" + emailName;
            string body = "This email is from @" + emailName + ". There request is as follows: " + content + ".";
            string email = senderEmail;

            SendEmail(subject, body, email);
        }
    }
}