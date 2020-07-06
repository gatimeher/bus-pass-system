using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
namespace PassDLL
{
    class staff
    {
        string cn;
        SqlConnection con;


        public staff()
        {
            cn = "data source= DESKTOP-JIQGBAC\\SQLEXPRESS;integrated security=true;database=Bus_Pass_System";
            con = new SqlConnection(cn);
        }
        public DataTable GetStaffdataGrid()
        {

            con.Open();
            string qr = "select ru.Registration_Id,ru.Name,ru.Mobile_Number,ru.Email_Id,ru.Gender,sd.Bus_Id FROM Registered_User as ru INNER JOIN Staff_Details as sd  ON ru.Registration_Id = sd.Registration_Id ";
            SqlCommand command = new SqlCommand(qr, con);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;


        }
    }
}
