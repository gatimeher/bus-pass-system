using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PassDLL;
using System.Data;
namespace BusPassSystem2
{
    public partial class PassengerDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email=Request.QueryString["email"].ToString();
            string pwd = Request.QueryString["password"].ToString();
            PassDLL.Login lg = new PassDLL.Login();
            Session["Name"] = lg.GetPassengerName(email,pwd);
            Label1.Text = "welcome " +Session["Name"].ToString();
            DataTable d = lg.GetPassengerdata(email,pwd);
            byte[] bytes = null;
            foreach (DataRow dr in d.Rows)
            {
                bytes = (byte[])dr["Photo"];
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                PassengerImage.ImageUrl = "data:image/jpg;base64," + base64String;
                Label3.Text = dr["Registration_Id"].ToString();
                Label2.Text = dr["Name"].ToString();
            }
            DataTable d2 = lg.GetQRPass(email,pwd);
            foreach (DataRow dr2 in d2.Rows)
            {
               byte[] pass = (byte[])dr2["QR_Code"];
                string base64String = Convert.ToBase64String(pass, 0, pass.Length);
                QRImage.ImageUrl = "data:image/png;base64," + base64String;
                //Label2.Text = dr["Name"].ToString();
            }


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
    
            Response.Redirect("PassengerProfile.aspx?regid=" + Label3.Text);
        }
    }
}