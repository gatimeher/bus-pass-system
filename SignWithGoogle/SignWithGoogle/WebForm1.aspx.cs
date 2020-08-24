using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPSnippets.GoogleAPI;
using System.Web.Script.Serialization;

namespace SignWithGoogle
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GoogleConnect.ClientId ="33679128728-0puein80bba3g70pq0v324fb0c3g4t89.apps.googleusercontent.com";
            GoogleConnect.ClientSecret ="lweXeNC8mh8HUxHxEDPHyLt0";
            GoogleConnect.RedirectUri = Request.Url.AbsoluteUri.Split('?')[0];

            if (!string.IsNullOrEmpty(Request.QueryString["code"]))
            {
                string code = Request.QueryString["code"];
                string json = GoogleConnect.Fetch("me", code);
                GoogleProfile profile = new JavaScriptSerializer().Deserialize<GoogleProfile>(json);
                Label1.Text = profile.Id;
                Label2.Text = profile.DisplayName;
                Label3.Text = profile.Emails;
               // Label3.Text = profile.Emails.Find(email => email.Type == "account").Value;


                Image1.ImageUrl = profile.Image.Url;
                ImageButton1.Visible = false;
            }
            if (Request.QueryString["error"] == "access_denied")
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Access denied.')", true);
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
            GoogleConnect.Authorize("profile", "email");
        }
        public class GoogleProfile
        {
            public string Id { get; set; }
            public string DisplayName { get; set; }
            public Image Image { get; set; }
           // public List<Email> Emails { get; set; }
           public string Emails { get; set; }
            public string Gender { get; set; }
            public string ObjectType { get; set; }
        }

        public class Email
        {
            public string Value { get; set; }
            public string Type { get; set; }
        }

        public class Image
        {
            public string Url { get; set; }
        }

    }
}