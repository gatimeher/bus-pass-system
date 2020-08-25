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
    public partial class BusManagement : System.Web.UI.Page
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddBus.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string src = DropDownList1.SelectedValue;
            string des = DropDownList2.SelectedValue;
            Admin ad1 = new Admin();
            DataTable d = ad1.GetbstdataGrid(src, des);
            foreach (DataRow dr in d.Rows)
            {

                Label1.Text = dr["Source"].ToString();
                Label2.Text = dr["Destination"].ToString();
                Label3.Text = dr["Bus_Id"].ToString();
                Label4.Text = dr["Bus_Type"].ToString();
                Label5.Text= dr["Bus_Number"].ToString();
            }
            GridView2.DataSource = ad1.GetstoppagedataGrid(src,des);
            GridView2.DataBind();
            //DropDownList1.Items.Clear();
            // DropDownList2.Items.Clear();
        }

        protected void DropDownList1_SelectedIndexChanged(EventArgs e)
        {
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
        {

        }
        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView2.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblID");
            string stoppage= GridView2.DataKeys[e.RowIndex].Value.ToString();
            Registration reg = new Registration();
           string msg= reg.deleteStoppageGrid(stoppage);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", msg, true);
        }
        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string src = DropDownList1.SelectedValue;
            string des = DropDownList2.SelectedValue;
            Admin ad1 = new Admin();
            GridView2.EditIndex = e.NewEditIndex;
            GridView2.DataSource = ad1.GetstoppagedataGrid(src, des);
            GridView2.DataBind();
           
        }
        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int busid = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)GridView2.Rows[e.RowIndex];
            //string textstoppage =GridView2.Rows[e.RowIndex].ToString();
           // string t = textstoppage.Text;
           // TextBox textime = (TextBox)GridView2.FindControl("Stoppage_Time");
            //TextBox textime = GridView2.Rows[0].FindControl("Stoppage_Time") as TextBox;
            TextBox textstoppage = (TextBox)row.Cells[3].Controls[0];
            TextBox textime = (TextBox)row.Cells[4].Controls[0];          
            GridView2.EditIndex = -1;
            Registration reg = new Registration();
             Response.Write(textstoppage.Text);
            Response.Write(textime.Text);
            Response.Write(busid);
           string result = reg.updateStoppageGrid(textstoppage.Text,textime.Text,busid);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Test", result, true);
            string src = DropDownList1.SelectedValue;
            string des = DropDownList2.SelectedValue;
            Admin ad1 = new Admin();
           GridView2.DataSource = ad1.GetstoppagedataGrid(src, des);
           GridView2.DataBind();
             
        }
        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            string src = DropDownList1.SelectedValue;
            string des = DropDownList2.SelectedValue;
            Admin ad1 = new Admin();
            GridView2.DataSource = ad1.GetstoppagedataGrid(src, des);
            GridView2.DataBind();
        }
        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            string src = DropDownList1.SelectedValue;
            string des = DropDownList2.SelectedValue;
            Admin ad1 = new Admin();
            GridView2.DataSource = ad1.GetstoppagedataGrid(src, des);
            GridView2.DataBind();
        }
      
              
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}