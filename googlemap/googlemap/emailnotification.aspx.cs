using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace googlemap
{
    public partial class emailnotification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           /* try
            {
                MailMessage message = new MailMessage(TextBox4.Text, TextBox1.Text, TextBox2.Text, TextBox3.Text);
                SmtpClient emailClient = new SmtpClient("smtp.gmail.com", 587);
                emailClient.Send(message);
                Label1.Text = "Message Sent";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }*/
            var client = new SmtpClient("smtp.gmail.com", 587)
            {
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential("nikniv16@gmail.com", "8862040246"),
                EnableSsl = true
            };
            try
            {
                   //client.Send("nikniv16@gmail.com", "akshataa2sk@gmail.com", "test", "testbody");

                client.Send("nikniv16@gmail.com", TextBox1.Text, "Registration confirmation", "you are registered successfully..");
                Label1.Text = "mail sent successfully";

            }
            catch (Exception ee)
            {
                Label1.Text = (ee.ToString());
            }

        }
    }
}