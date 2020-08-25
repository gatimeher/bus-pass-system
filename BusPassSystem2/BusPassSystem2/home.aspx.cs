using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PassDLL;
using System.Collections;
using System.Data;
namespace BusPassSystem2
{
    public partial class home : System.Web.UI.Page
    {
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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string src = DropDownList1.SelectedValue;
            string des = DropDownList2.SelectedValue;
            Admin ad1 = new Admin();
           // DataTable d = ad1.GetbstdataGrid(src, des);
           
            GridView1.DataSource = ad1.GetstoppagedataGrid(src, des);
            GridView1.DataBind();
        }
    }
}