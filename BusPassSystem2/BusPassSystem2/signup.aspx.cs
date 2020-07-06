using PassDLL;
using System;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Runtime.InteropServices;
using System.Web.Services.Description;
using System.Globalization;
using System.Data;
using System.IO;
namespace BusPassSystem2
{
    public partial class WebForm4 : System.Web.UI.Page
    {


        string previousPageName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.UrlReferrer != null)
                {
                    previousPageName = Request.UrlReferrer.Segments[Request.UrlReferrer.Segments.Length - 1];
                    Response.Write(previousPageName);
                }
                Session["prePage"] = previousPageName;
            }
            TextBox10.Text = DateTime.Today.ToShortDateString();
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        
        }


        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox9_TextChanged(object sender, EventArgs e)
        {

        }

        

        protected void Button4_Click(object sender, EventArgs e)
        {
          
        }
      
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Registration reg = new Registration();
            string gender;
            string password = "";
            string name = TextBox1.Text;
            string address = TextBox2.Text;
            string mobilenumber = TextBox3.Text;
            string emailid = TextBox5.Text;
            if (TextBox11.Text == TextBox7.Text)
            {
                password = TextBox11.Text;
            }
            if (RadioButton1.Checked)
            {
                gender = RadioButton1.Text;
            }
            else if (RadioButton2.Checked)
            {
                gender = RadioButton2.Text;
            }
            else
            {
                gender = RadioButton3.Text;
            }
            //DateTime dob = Convert.ToDateTime(TextBox13.Text);
            string dob = TextBox13.Text;
            string adharcardnumber = TextBox8.Text;
            string question = DropDownList1.Text;
            string answer = TextBox9.Text;
            string registrationdate = TextBox10.Text;
            string imgname = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string imgcontenttype = FileUpload1.PostedFile.ContentType;
            byte[] bytes;
            using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
            {
                bytes = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
            }

            /*
             string photo = FileUpload1.FileName;if (FileUpload1.HasFile)
             {
                 string fn1 = Server.MapPath(photo);
                 FileUpload1.SaveAs(fn1);
             }*/

            string pp = Session["prePage"].ToString();
            Response.Write("PP =" + pp);
            if (pp == "home.aspx")
            {

                // Registration reg = new Registration();
                string ch = reg.CheckEmailid(emailid);
               
                if (ch == "false")
                {
                    string msg = reg.CheckAdharcard(adharcardnumber);
                    if (msg == "false")
                    {
                        //Response.Write("home checkmail method called");
                        string res = reg.NewRegistration(name, address, mobilenumber, emailid, password, gender, dob, adharcardnumber, question, answer, registrationdate, imgname, imgcontenttype, bytes);
                        //Response.Write(res);
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", res, true);
                        if (true)
                        {
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox3.Text = "";
                            TextBox5.Text = "";
                            TextBox11.Text = "";
                            TextBox7.Text = "";
                            TextBox13.Text = "";
                            TextBox8.Text = "";
                            TextBox9.Text = "";
                            // DropDownList1.SelectedValue = "";
                            RadioButton1.Checked = false;
                            RadioButton2.Checked = false;
                            RadioButton3.Checked = false;
                        }

                    }
                    else if(msg=="true")
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", "alert('Aadharcard number is already exist.');", true);
                    }
                }
                else if(ch=="true")
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", "alert('Email id already exist.');", true);
                    TextBox5.Text = "";
                    TextBox5.Focus();
                }
            }


            else if (pp == "RoleAdminSignup.aspx")
                {
                    //Response.Write("admin method called");
                    string role = Request.QueryString["role"].ToString();
                    Admin ad = new Admin();
                    //Registration reg1 = new Registration();
                    string chk = reg.CheckEmailid(emailid);
                string msg = reg.CheckAdharcard(adharcardnumber);
                if (chk == "false")
                {
                    
                    if (msg == "false")
                    {
                        //Response.Write("admin checkmail method called");
                        string res1 = ad.AdminNewRegistration(name, address, mobilenumber, emailid, password, gender, dob, adharcardnumber, question, answer, role, registrationdate, imgname, imgcontenttype, bytes);
                        //Response.Write("admin registartion method called");
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", res1, true);
                        if (true)
                        {
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox3.Text = "";
                            TextBox5.Text = "";
                            TextBox11.Text = "";
                            TextBox7.Text = "";
                            TextBox13.Text = "";
                            TextBox8.Text = "";
                            TextBox9.Text = "";
                            //DropDownList1.SelectedValue = "";
                            RadioButton1.Checked = false;
                            RadioButton2.Checked = false;
                            RadioButton3.Checked = false;
                        }

                    }
                    else if (msg == "true")
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", "alert('Aadharcard number is already exist.');", true);
                    }
                }
                else if (chk == "true")
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", "alert('Email id already exist.');", true);
                    TextBox5.Text = "";
                    TextBox5.Focus();
                }
             }
            
            }

            protected void TextBox12_TextChanged(object sender, EventArgs e)
            {

            }

            protected void TextBox13_TextChanged(object sender, EventArgs e)
            {

            }
    }
}
