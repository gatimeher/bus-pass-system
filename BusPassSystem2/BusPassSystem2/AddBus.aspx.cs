using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PassDLL;
namespace BusPassSystem2
{
    public partial class AddBus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            string bustype = "";
            string source = TextBox1.Text;
            string destination = TextBox2.Text;

            if (RadioButton1.Checked)
            {
                bustype = RadioButton1.Text;
            }
            else if (RadioButton2.Checked)
            {
                bustype = RadioButton2.Text;
            }
            string busnumber = TextBox3.Text;

            Admin ad = new Admin();
            string chk = ad.CheckBus(source, destination, busnumber);
            if (chk == "false")
            {
                string res = ad.AddBus(source, destination, bustype, busnumber);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", res, true);

                string id = ad.GetBusId(busnumber);
                TextBox6.Text = id;
                TextBox4.Enabled = true;
                TextBox5.Enabled = true;
                Button2.Enabled = true;
                Button3.Enabled = true;

            }
           
            else if (chk == "true")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", "alert('Bus Number for this source and destination is already exist..');", true);
                if (true)
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    RadioButton1.Checked = false;
                    RadioButton2.Checked = false;
                    TextBox3.Text = "";
                }
            }
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            int busid=Convert.ToInt32(TextBox6.Text);
            string stoppage=TextBox4.Text;
            string time=TextBox5.Text;
            
            Admin ad = new Admin();
            string res = ad.AddStoppage(busid,stoppage,time);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", res, true);
            if(true)
            {
                TextBox4.Text = "";
                TextBox5.Text = "";
            }

            //Response.Write(res);
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", "alert('Bus stoppages added Successfully ..');", true);
            if (true)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
                TextBox3.Text = "";
                TextBox6.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("BusManagement.aspx");
        }
    }
}