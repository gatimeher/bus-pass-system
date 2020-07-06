using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using ZXing;
using PassDLL;
using System.Collections;
namespace BusPassSystem2
{
    public partial class PassManagementPage : System.Web.UI.Page
    {
        byte[] bytes=null;
        private void GenerateQRCode(int id, string source, string destination, string bustype, string validity, string creationDate, string expiryDate)
        {
            var writer = new BarcodeWriter();
            writer.Format = BarcodeFormat.QR_CODE;
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(id);
            sb.Append(source);
            sb.Append(destination);
            sb.Append(bustype);
            sb.Append(validity);
            sb.Append(creationDate);
            sb.Append(expiryDate);

            var result = writer.Write(sb.ToString());
            string path = Server.MapPath("~/Images/QR.png");

            var barcodeBitmap = new Bitmap(result);

            using (MemoryStream memory = new MemoryStream())
            {
                using (FileStream fs = new FileStream(path,
                      FileMode.Create, FileAccess.ReadWrite))
                {
                    barcodeBitmap.Save(memory, ImageFormat.Png);
                    bytes = memory.ToArray();
                    // imgQR.ImageUrl = "~/Images/QR.jpg" + Convert.ToBase64String(bytes);
                    fs.Write(bytes, 0, bytes.Length);
                    fs.Close();
                }
            }

            imgQR.Visible = true;
            imgQR.ImageUrl = "~/Images/QR.png";
           
            //byte[] qr;
            //using (BinaryReader br = new BinaryReader(bytes))
            // {
            //   qr = br.ReadBytes(imgQR.PostedFile.ContentLength);
            //}
        
            Button1.Enabled = false;
            Button2.Enabled = false;
         
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // ArrayList Src = new ArrayList();
                Admin ad = new Admin();
                ArrayList Src = ad.GetSource();
                DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
                foreach (string s in Src)
                {
                    DropDownList1.Items.Add(s);
                }

                // ArrayList Des = new ArrayList();
                ArrayList Des = ad.GetDestination();
                DropDownList2.Items.Insert(0, new ListItem("--Select--", "0"));
                foreach (string s in Des)
                {
                    DropDownList2.Items.Add(s);
                }
            }
            TextBox5.Text = DateTime.Today.ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(TextBox1.Text);
            string source = DropDownList1.Text;
            string destination = DropDownList2.Text;
            string bustype = DropDownList3.Text;
            string validity = DropDownList4.Text;
            string creationDate = TextBox5.Text;
            string expiryDate = TextBox2.Text;
            GenerateQRCode(id,source,destination,bustype,validity,creationDate,expiryDate); 
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", "alert('Pass created successfully!..');", true);
            Admin ps = new Admin();
            string msg = ps.SavePass(id, source, destination, bustype, creationDate, validity, expiryDate, bytes);
            Response.Write(msg);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Button1.Enabled = true;
            Button4.Enabled = false;
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PassUserdetails.aspx");
        }
    }
}