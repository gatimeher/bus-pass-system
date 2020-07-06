using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
namespace PassDLL
{
  public class Login
    {
        public string emailid { get; set; }
        public string password { get; set; }
        string cn;
        SqlConnection con;
        public Login()
        {
            cn = "data source= DESKTOP-JIQGBAC\\SQLEXPRESS;integrated security=true;database=Bus_Pass_System";
            con = new SqlConnection(cn);
        }
        public string Checklogin(string email, string pwd)
        {
            string result = "";
            try
            {
                con.Open();
                string qr = "select count(*) from Registered_User where Email_Id='" + email + "' and Password='" + pwd + "'";
                SqlCommand command = new SqlCommand(qr, con);
                //the query will return a single calculated value
                // so for this use executescalar method of sqlcommand class
                int r = Convert.ToInt32(command.ExecuteScalar());
                if (r == 1)
                {
                    result = "true";
                }
                else
                {
                    result = "false";
                }

            }
            catch (Exception ee)
            {
                result = ee.ToString();
            }
            finally
            {
                con.Close();
            }
            return result;

        }
        public string CheckRole(string email, string pwd)
        {

            string role = "";
            con.Open();
            string qr = "select Role from Registered_User where Email_Id='" + email + "' and Password='" + pwd + "'";
            SqlCommand command = new SqlCommand(qr, con);
            //sqldatareader - used to read set of records returned from the sql select query
            SqlDataReader dr = command.ExecuteReader();
            //read method to read records from datareader
            while (dr.Read())
            {

                role = dr["Role"].ToString();
            }
            con.Close();
            return role;
        }
        public DataTable GetbusData(string busid)
        {
            //string src,des,bustype,busnumber;
            con.Open();
            string qr = "select Source,Destination,Bus_Type,Bus_Number from Bus_Detail where Bus_Id ='" + busid + "'";
            SqlCommand command = new SqlCommand(qr, con);
            //SqlDataReader dr = command.ExecuteReader();
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable ds = new DataTable();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        public string AssignStaff(int Regid,int Busid,DateTime Assigndate,string duration)
        {
            string Result;

            try
            {
                con.Open();

                string qry = "insert into Staff_Details(Registration_Id,Bus_Id,Assigning_Date,Duration)values('" + Regid + "','" + Busid + "','" + Assigndate + "','" + duration+ "')";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                //for the page with only one form
                Result = "alert('Staff Assigned successfully..!');";

            }
            catch (Exception e)
            {
                Result = e.ToString();
            }
            finally
            {
                con.Close();
            }
            return Result;
        }
        public string GetPassengerName(string email,string pwd)
        {
            string name = "";
            con.Open();
            string qr = "select Name from Registered_User where Email_Id='" + email + "' and Password='" + pwd + "'";
            SqlCommand command = new SqlCommand(qr, con);
            //sqldatareader - used to read set of records returned from the sql select query
            SqlDataReader dr = command.ExecuteReader();
            //read method to read records from datareader
            while (dr.Read())
            {

                name = dr["Name"].ToString();
            }
            con.Close();
            return name;
        }
        public DataTable GetPassengerdata(string email, string pwd)
        {
            con.Open();
            string qr = "select ru.Registration_Id,ru.Name,ru.Photo_name,ru.Photo_contentType,ru.Photo from Registered_User as ru where Email_Id='" + email + "' and Password='" + pwd + "'";
            SqlCommand command = new SqlCommand(qr, con);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            return dt;
        }

        public DataTable GetQRPass(string email, string pwd)
        {
            con.Open();
            string qr = "select pu.QR_Code from Pass_User as pu left outer join Registered_User as ru ON pu.Registration_Id = ru.Registration_Id where Email_Id='" + email + "' and Password='" + pwd + "'";
            SqlCommand command = new SqlCommand(qr, con);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            return dt;
        }
        public DataTable GetPassengerProfile(string regid)
        {
            con.Open();
            string qr = "select Registration_Id,Name,Address,Mobile_Number,Email_Id,Gender,Date_of_Birth,AdharCard_Number,Registration_Date,Photo_name,Photo_contentType,Photo from Registered_User where Registration_Id ='" + regid + "'";
            SqlCommand command = new SqlCommand(qr, con);
            //SqlDataReader dr = command.ExecuteReader();
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable ds = new DataTable();
            da.Fill(ds);
            con.Close();
            return ds;
        }

        public DataTable GetStaffProfile(string email,string pwd)
        {
            con.Open();
            string qr = "select Name,Address,Mobile_Number,Email_Id,Gender,Date_of_Birth,AdharCard_Number,Registration_Date,Photo_name,Photo_contentType,Photo from Registered_User where Email_Id='" + email + "' and Password='" + pwd + "'";
            SqlCommand command = new SqlCommand(qr, con);
            //SqlDataReader dr = command.ExecuteReader();
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable ds = new DataTable();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        public string ChangePassword(string newpwd,string pwd)
        {
            string Result;

            try
            {
                con.Open();

                string qry = "update Registered_User set Password=@Password where Password='" + pwd + "' ";
                using (SqlCommand cmd = new SqlCommand(qry, con))
                {
                    cmd.Parameters.AddWithValue("@Password",newpwd);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Result = "alert(' Password change successfully..!');";

                }
                

            }
            catch (Exception e)
            {
                Result = e.ToString();
            }
            finally
            {
                con.Close();
            }
            return Result;

        }

    }
}
