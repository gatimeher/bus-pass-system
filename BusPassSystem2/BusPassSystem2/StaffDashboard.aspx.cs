﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace BusPassSystem2
{
    public partial class StaffDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Request.QueryString["email"].ToString();
            string pwd = Request.QueryString["password"].ToString();
            PassDLL.Login lg = new PassDLL.Login();
            DataTable d = lg.GetStaffProfile(email,pwd);
            foreach (DataRow dr in d.Rows)
            {

                Label1.Text = dr["Name"].ToString();
                Label2.Text = dr["Address"].ToString();
                Label3.Text = dr["Mobile_Number"].ToString();
                Label4.Text = dr["Email_Id"].ToString();
                Label5.Text = dr["Gender"].ToString();
                Label6.Text = dr["Date_of_Birth"].ToString();
                Label7.Text = dr["AdharCard_Number"].ToString();
                Label8.Text = dr["Registration_Date"].ToString();
               // byte[] bytes = (byte[])dr["Photo"];
               // string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
              //  Image1.ImageUrl = "data:image/jpg;base64," + base64String;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("QRscanner.html");
        }
    }
}