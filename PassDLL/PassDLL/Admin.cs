using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Collections;
using System.Data;
namespace PassDLL
{
   public  class Admin
    {
        public int Registrationid { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string MobileNumber { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Gender { get; set; }
        public string DOB { get; set; }
        public string AadharCardNumber { get; set; }
        public string SecurityQuestion { get; set; }
        public string SecurityAnswer { get; set; }
        public string Role { get; set; }
        public string RegistrationDate { get; set; }
        public byte[] Photo { get; set; }

        string cn;
        SqlConnection con;


        public Admin()
        {
            cn = "data source= DESKTOP-JIQGBAC\\SQLEXPRESS;integrated security=true;database=Bus_Pass_System";
            con = new SqlConnection(cn);
        }
        public string AdminNewRegistration(string name, string address, string mobilenumber, string email, string password, string gender, string dob, string adharcard, string question, string answer,string role, string registartiondate, string imgname, string imgcontenttype, byte[] photo)
        {
            Name = name;
            Address = address;
            MobileNumber = mobilenumber;
            Email = email;
            Password = password;
            Gender = gender;
            DOB = dob;
            AadharCardNumber = adharcard;
            SecurityQuestion = question;
            SecurityAnswer = answer;
            Role = role;
            RegistrationDate = registartiondate;
            Photo = photo;
         
               
            string Result = "";
            try
            {
                string sql = "INSERT INTO Registered_User(Name,Address,Mobile_Number,Email_Id,Password,Gender,Date_of_Birth,AdharCard_Number,Security_Question,Security_Answer,Role,Registration_Date,Photo_name,Photo_contentType,Photo) VALUES (@Name,@Address,@Mobile_Number,@Email_Id,@Password,@Gender,@Date_of_Birth,@AdharCard_Number,@Security_Question,@Security_Answer,@Role,@Registration_Date,@Photo_name,@Photo_contentType,@Photo)";
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Address", address);
                    cmd.Parameters.AddWithValue("@Mobile_Number", mobilenumber);
                    cmd.Parameters.AddWithValue("@Email_Id", email);
                    cmd.Parameters.AddWithValue("@Password", password);
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@Date_of_Birth", dob);
                    cmd.Parameters.AddWithValue("@AdharCard_Number", adharcard);
                    cmd.Parameters.AddWithValue("@Security_Question", question);
                    cmd.Parameters.AddWithValue("@Security_Answer", answer);
                    cmd.Parameters.AddWithValue("@Role", role);
                    cmd.Parameters.AddWithValue("@Registration_Date", registartiondate);
                    cmd.Parameters.AddWithValue("@Photo_name", imgname);
                    cmd.Parameters.AddWithValue("@Photo_contentType", imgcontenttype);
                    cmd.Parameters.AddWithValue("@Photo", photo);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    Result = "alert('Registration successful..!');";

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
        public string CheckBus(string source, string destination, string busnumber)
        {
            string result = "";

            try
            {
                con.Open();
                string qr = "select count(*) from Bus_Detail where Source ='" + source + "' AND Destination = '" + destination + "' AND Bus_Number ='" + busnumber + "'";
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
        public string AddBus(string source, string destination, string bustype, string busnumber)
        {
            string Result = "";

            try
            {
                con.Open();

                string qr = "insert into Bus_Detail (Source,Destination,Bus_Type,Bus_Number)values('" + source + "','" + destination + "','" + bustype + "','" + busnumber + "')";
                SqlCommand cmd = new SqlCommand(qr, con);
                cmd.ExecuteNonQuery();
                //for the page with only one form
                Result = "alert('Bus added successfully..!');";

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
        public string GetBusId(string busnumber)
        {
            string id = "";
            con.Open();
            string qr = "select Bus_Id from Bus_Detail where Bus_Number ='" + busnumber + "'";
            SqlCommand command = new SqlCommand(qr, con);
            //sqldatareader - used to read set of records returned from the sql select query
            SqlDataReader dr = command.ExecuteReader();
            //read method to read records from datareader
            while (dr.Read())
            {

                id = dr["Bus_Id"].ToString();
            }
            con.Close();
            return id;
        }

        public string AddStoppage(int busid, string stoppage, string time)
        {
            string Result = "";

            try
            {
                con.Open();

                string qr = "insert into Bus_Stoppages (Bus_Id,Stoppages,Stoppage_Time)values('" + busid + "','" + stoppage + "','" + time + "')";
                SqlCommand cmd = new SqlCommand(qr, con);
                cmd.ExecuteNonQuery();
                //for the page with only one form
                Result = "alert('stoppage added..!');";

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
        // arraylist is collection class which can add items dynamically 
        public ArrayList GetSource()
        {
            ArrayList al = new ArrayList();
            con.Open();
            string qr = "select Source from Bus_Detail ";
            SqlCommand command = new SqlCommand(qr, con);
            //sqldatareader - used to read set of records returned from the sql select query
            SqlDataReader dr = command.ExecuteReader();
            //read method to read records from datareader
            while (dr.Read())
            {
                al.Add(dr["Source"]);
            }
            con.Close();
            return al;
        }
        public ArrayList GetDestination()
        {
            ArrayList al = new ArrayList();
            con.Open();
            string qr = "select Destination from Bus_Detail ";
            SqlCommand command = new SqlCommand(qr, con);
            //sqldatareader - used to read set of records returned from the sql select query
            SqlDataReader dr = command.ExecuteReader();
            //read method to read records from datareader
            while (dr.Read())
            {
                al.Add(dr["Destination"]);
            }
            con.Close();
            return al;
        }
        public DataTable GetbstdataGrid(string source, string destination)
        {
            
                con.Open();
                string qr = "select bd.Bus_Id,bd.Source,bd.Destination,bd.Bus_Type,bd.Bus_Number,bst.Stoppages,bst.Stoppage_Time FROM Bus_Detail as bd INNER JOIN Bus_Stoppages as bst  ON bd.Bus_Id = bst.Bus_Id WHERE Source ='" + source + "' AND Destination = '" + destination + "'";
                SqlCommand command = new SqlCommand(qr, con);
                SqlDataAdapter sda = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Close();
                return dt;
        }
        public DataTable GetstoppagedataGrid(string source, string destination)
        {

            con.Open();
            string qr = "select bst.Bus_Id, bst.Stoppages,bst.Stoppage_Time FROM Bus_Stoppages as bst left outer join Bus_Detail as bd ON bd.Bus_Id = bst.Bus_Id WHERE Source ='" + source + "' AND Destination = '" + destination + "'";
            SqlCommand command = new SqlCommand(qr, con);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            return dt;
        }
        public DataTable GetStaffdataGrid()
        {

            con.Open();
            string qr = "select ru.Registration_Id,ru.Name,ru.Mobile_Number,ru.Email_Id,ru.Gender,sd.Bus_Id FROM Registered_User as ru INNER JOIN Staff_Details as sd  ON ru.Registration_Id = sd.Registration_Id ";
            SqlCommand command = new SqlCommand(qr, con);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            return dt;


        }
        public string SavePass(int id, string source, string destination, string bustype, string creationDate, string validity, string expirydate, byte[] qrcode)
        {
            string Result;
            try 
            { 
            string sql = "INSERT INTO Pass_User(Registration_Id,Source,Destination,Bus_Type,Pass_Creation_Date,Validity,Expiry_Date,QR_Code) VALUES (@Registration_Id,@Source,@Destination,@Bus_Type,@Pass_Creation_Date,@Validity,@Expiry_Date,@QR_Code)";
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                cmd.Parameters.AddWithValue("@Registration_Id", id);
                cmd.Parameters.AddWithValue("@Source", source);
                cmd.Parameters.AddWithValue("@Destination", destination);
                cmd.Parameters.AddWithValue("@Bus_Type", bustype);
                cmd.Parameters.AddWithValue("@Pass_Creation_Date", creationDate);
                cmd.Parameters.AddWithValue("@Validity",validity);
                cmd.Parameters.AddWithValue("@Expiry_Date", expirydate);
                cmd.Parameters.AddWithValue("@QR_Code", qrcode);
                con.Open();
                cmd.ExecuteNonQuery();
                Result = "alert('Pass saved successfully..!');";

                }
        }
           /* try
            {
                con.Open();

                string qry = "insert into Pass_User(Registration_Id,Source,Destination,Bus_Type,Pass_Creation_Date,Validity,Expiry_Date,QR_Code)values('" + id + "','" + source + "','" + destination + "','" + bustype + "','" + creationDate + "','" + validity + "','" + expirydate + "','" + qrcode + "')";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                //for the page with only one form
                Result = "alert('Pass saved successfully..!');";

            }*/
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
