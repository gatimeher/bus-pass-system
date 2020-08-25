using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusPassSystem2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                TextBox1.Text = RadioButton1.Text;
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton2.Checked)
            {
                TextBox1.Text = RadioButton2.Text;
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx?role="+TextBox1.Text, false);
        }
    }
}