using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodManagementSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {

                
                    donorreg.Visible = true;
                    donor.Visible = false;
                    signup.Visible = true;

                }
                else if (Session["role"].Equals("user"))
                {

                    donorreg.Visible = false;
                    donor.Visible = true;
                    signup.Visible = false;


                }
                else if (Session["role"].Equals("admin"))
                {

                    donorreg.Visible = false;
                    donor.Visible = false;
                    signup.Visible = false;
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fullName = name.Text.Trim();
            string email1 = email.Text.Trim();
            string phone1 = phone.Text.Trim();
       
            string message1 = message.Text.Trim();

            try
            {
                // Create a MailMessage object
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("souuvickghosh222@gmail.com"); // Replace with your email
                mail.To.Add("yurhighness19@gmail.com");
                mail.Subject = "query";
                mail.Body = $"<p><b>Full Name:</b> {fullName}</p>" +
                            $"<p><b>Email:</b> {email}</p>" +
                            $"<p><b>Phone:</b> {phone}</p>" +
                            $"<p><b>Message:</b><br />{message}</p>";
                mail.IsBodyHtml = true;

                // Configure SMTP client
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587); // Gmail SMTP server
                smtp.Credentials = new System.Net.NetworkCredential("souuvickghosh222@gmail.com", ""); // Replace with your email and password
                smtp.EnableSsl = true;

                // Send the email
                smtp.Send(mail);

                // Display success message
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Message sent successfully!');", true);
            }
            catch (Exception ex)
            {
                // Handle errors
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Error: {ex.Message}');", true);
            }

        }
    }
}