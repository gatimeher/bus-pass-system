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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GoogleConnect.ClientId = "33679128728-0puein80bba3g70pq0v324fb0c3g4t89.apps.googleusercontent.com";
           // GoogleConnect.ClientId = "33679128728";
            GoogleConnect.ClientSecret = "lweXeNC8mh8HUxHxEDPHyLt0";
            GoogleConnect.RedirectUri = Request.Url.AbsoluteUri.Split('?')[0];

            if (!this.IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["code"]))
                {
                    string code = Request.QueryString["code"];
                    string json = GoogleConnect.Fetch("me", code);
                    GoogleProfile profile = new JavaScriptSerializer().Deserialize<GoogleProfile>(json);
                    lblId.Text = profile.Id;
                    lblName.Text = profile.Name;
                    lblEmail.Text = profile.Email;
                    lblVerified.Text = profile.Verified_Email;
                    ProfileImage.ImageUrl = profile.Picture;
                    pnlProfile.Visible = true;
                   // btnLogin.Enabled = false;
                }
                if (Request.QueryString["error"] == "access_denied")
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Access denied.')", true);
                }
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            GoogleConnect.Clear(Request.QueryString["code"]);
        }
        public class GoogleProfile
        {
            public string Id { get; set; }
            public string Name { get; set; }
            public string Picture { get; set; }
            public string Email { get; set; }
            public string Verified_Email { get; set; }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            GoogleConnect.Authorize("profile", "email");
        }
    }
}