using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace PassDLL
{
    class QRPass
    {
        string cn;
        SqlConnection con;
        public QRPass()
        {
            cn = "data source= DESKTOP-JIQGBAC\\SQLEXPRESS;integrated security=true;database=Bus_Pass_System";
            con = new SqlConnection(cn);
        }
        public string SavePass(int id, string source, string destination, string bustype, DateTime creationDate, string validity, DateTime expirydate, string qr)
        {
            string Result;

            try
            {
                con.Open();

                string qry = "insert into Pass_User(Registration_Id,Source,Destination,Bus_Type,Pass_Creation_Date,Validity,Expiry_Date,QR_Code)values('" + id + "','" + source + "','" + destination + "','" + bustype + "','" + creationDate + "','" + validity + "','" + expirydate + "','" + qr + "')";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                //for the page with only one form
                Result = "alert('Pass saved successfully..!');";

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
