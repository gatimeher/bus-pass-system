using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PassDLL;
namespace BusPassSystem2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Request.Form.Get("t1");
            string password = Request.Form.Get("t2");
            if (email == "admin" && password == "admin")
            {
               //Response.Write("successfull");

                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                PassDLL.Login log = new PassDLL.Login();
                string chk = log.Checklogin(email, password);
                if (chk == "true")
                {
                    string role = log.CheckRole(email, password);
                    if (role == "Staff")
                    {
                        Response.Redirect("StaffDashboard.aspx?email=" + email + "&password=" + password);
                    }
                    else
                    {
                        Response.Redirect("PassengerDashboard.aspx?email=" + email + "&password=" + password);
                    }
                }
                else
                {
                    //Response.Redirect("login.aspx");
                    // Response.Write("invalid credentials , try again");
                    // string msg = "invalid credentials , try again...";
                     ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", "login.aspx;", true);
                    //Request.Form.Clear();

                }
            }




        }
    }
}