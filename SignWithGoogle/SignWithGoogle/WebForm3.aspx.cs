using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignWithGoogle
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string clientid = "33679128728-0puein80bba3g70pq0v324fb0c3g4t89.apps.googleusercontent.com";
            //your client secret  
            string clientsecret = "lweXeNC8mh8HUxHxEDPHyLt0";
            //your redirection url  
            string redirection_url = "https://localhost:44316/WebForm4.aspx";
            string url = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
            Response.Redirect(url);
        }
    }
}