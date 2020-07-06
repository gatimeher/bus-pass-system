using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PassDLL;
namespace BusPassSystem2
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string password = Request.Form.Get("t1");
            string newpassword = Request.Form.Get("t2");
            string confirmpassword = Request.Form.Get("t3");
            PassDLL.Login lg = new PassDLL.Login();
            string msg = lg.ChangePassword(newpassword,password);
            Response.Write(msg);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", msg, true);
        
        }

    }
}