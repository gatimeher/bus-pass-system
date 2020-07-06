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
    public partial class StaffManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Admin ad2 = new Admin();
            GridView1.DataSource = ad2.GetStaffdataGrid();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PassDLL.Login lg = new PassDLL.Login();
            DataTable d = lg.GetbusData(TextBox2.Text);
            foreach (DataRow dr in d.Rows)
            {

                TextBox4.Text = dr["Source"].ToString();
                TextBox5.Text = dr["Destination"].ToString();
               TextBox6.Text = dr["Bus_Type"].ToString();
                TextBox7.Text = dr["Bus_Number"].ToString();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int regid = Convert.ToInt32(TextBox1.Text);
            int busid = Convert.ToInt32(TextBox2.Text);
            DateTime assigndate = Convert.ToDateTime(TextBox3.Text);
            string duration = DropDownList1.Text;
            PassDLL.Login lg = new PassDLL.Login();
            string msg = lg.AssignStaff(regid,busid,assigndate,duration);
            //Response.Write(msg);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", msg, true);
            if(true)
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                
            }
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            
        }

        protected void TextBox4_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }
    }
}