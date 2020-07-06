using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using PassDLL;
namespace BusPassSystem2
{
    public partial class UpdatePassengerProfile : System.Web.UI.Page
    {
        string Regid="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Regid = Request.QueryString["regid"].ToString();
                PassDLL.Login lg = new PassDLL.Login();
                DataTable d = lg.GetPassengerProfile(Regid);
                foreach (DataRow dr in d.Rows)
                {

                    TextBox1.Text = dr["Name"].ToString();
                    TextBox2.Text = dr["Address"].ToString();
                    TextBox3.Text = dr["Mobile_Number"].ToString();
                    TextBox4.Text = dr["Email_Id"].ToString();

                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PassengerProfile.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string name = TextBox1.Text;
            string address = TextBox2.Text;
            string mobilenumber = TextBox3.Text;
            string email = TextBox4.Text;
            string imgname = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string imgcontenttype = FileUpload1.PostedFile.ContentType;
            byte[] bytes;
            using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
            {
                bytes = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
            }
            Registration reg = new Registration();
            string msg = reg.UpdatePassengerProfile(name,address,mobilenumber,email,Regid);
            //Response.Write(msg);
            Response.Write(address);
            Response.Write(name);
            Response.Write(mobilenumber);
            Response.Write(email);
            //Response.Write(imgname);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", msg, true);
          
        }

    }
}