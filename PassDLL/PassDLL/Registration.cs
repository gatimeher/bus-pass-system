using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Net.Configuration;

namespace PassDLL
{
    public class Registration
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
        public string RegistrationDate { get; set; }
        public byte[] Photo { get; set; }
     
        string cn;
        SqlConnection con;


        public Registration()
        {
            cn = "data source= DESKTOP-JIQGBAC\\SQLEXPRESS;integrated security=true;database=Bus_Pass_System";
            con = new SqlConnection(cn);
        }

        public string CheckEmailid(string email)
        {
            string result = "";

            try
            {
                con.Open();
                string qr = "select count(*) from Registered_User where Email_Id ='" + email + "'";
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

                /*SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    if (dr.HasRows == true)
                    {
                        result = "exist";
                        break;
                        // MessageBox.Show("EmailId = " + dr[5].ToString() + " Already exist");
                        //txtEmail.Clear();

                    }
                    else if (dr.HasRows == false)
                    {
                        result = "not exist";
                    }
                }*/
               
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
        public string CheckAdharcard(string adharcard)
        {
            string result = "";

            try
            {
                con.Open();
                string qr = "select count(*) from Registered_User where AdharCard_Number ='" + adharcard + "'";
                SqlCommand command = new SqlCommand(qr, con);
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

        public string NewRegistration(string name, string address, string mobilenumber, string email, string password, string gender, string dob, string adharcard, string question, string answer, string registartiondate,string imgname,string imgcontenttype, byte[] photo)
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
            RegistrationDate = registartiondate;
            Photo = photo;
            
            string Result = "";

            try
            {
                //con.Open();
               // "INSERT INTO imagetbl VALUES(@name, @contentType, @photo)";
                string sql = "INSERT INTO Registered_User(Name,Address,Mobile_Number,Email_Id,Password,Gender,Date_of_Birth,AdharCard_Number,Security_Question,Security_Answer,Registration_Date,Photo_name,Photo_contentType,Photo) VALUES (@Name,@Address,@Mobile_Number,@Email_Id,@Password,@Gender,@Date_of_Birth,@AdharCard_Number,@Security_Question,@Security_Answer,@Registration_Date,@Photo_name,@Photo_contentType,@Photo)";
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Address",address);
                    cmd.Parameters.AddWithValue("@Mobile_Number", mobilenumber);
                    cmd.Parameters.AddWithValue("@Email_Id", email);
                    cmd.Parameters.AddWithValue("@Password", password);
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@Date_of_Birth", dob);
                    cmd.Parameters.AddWithValue("@AdharCard_Number", adharcard);
                    cmd.Parameters.AddWithValue("@Security_Question", question);
                    cmd.Parameters.AddWithValue("@Security_Answer",answer);
                    cmd.Parameters.AddWithValue("@Registration_Date",registartiondate);
                    cmd.Parameters.AddWithValue("@Photo_name", imgname);
                    cmd.Parameters.AddWithValue("@Photo_contentType", imgcontenttype);
                    cmd.Parameters.AddWithValue("@Photo",photo);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    Result = "alert('Registration successful..!');"; 
                  
                }
               /* string qr = "insert into Registered_User(Name,Address,Mobile_Number,Email_Id,Password,Gender,Date_of_Birth,AdharCard_Number,Security_Question,Security_Answer,Registration_Date,Photo_name,Photo_contentType,Photo)values('" + name + "','" + address + "','" + mobilenumber + "','" + email + "','" + password + "','" + gender + "','" + dob + "','" + adharcard + "','" + question + "','" + answer + "','" + registartiondate + "','" + imgname + "','" + imgcontenttype + "','" + photo + "')";
                SqlCommand cmd = new SqlCommand(qr, con);
                cmd.ExecuteNonQuery();
                //for the page with only one form
                Result = "alert('Registration successful..!');";*/
                
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

       public string deleteStoppageGrid(string stpg)
        {
            string msg="";
            try
            {
                con.Open();
                string qr = "delete from Bus_Stoppages where Stoppages='" + stpg + "'";
                SqlCommand cmd = new SqlCommand(qr,con);
                cmd.ExecuteNonQuery();
                msg = "alert('deleted successfully..!');";

            }
            catch (Exception e)
            {
                 msg=e.ToString();
            }
            finally
            {
                con.Close();
            }
            return msg;
        }
        public string updateStoppageGrid(string stpg,string time,int busid)
        {
            string result="";
            try
            {
                con.Open();
                string qr = "update Bus_Stoppages set Stoppages = '" + stpg + "', Stoppage_Time='"+ time + "' where Bus_Id=" + busid + "";
                SqlCommand cmd = new SqlCommand(qr, con);
                cmd.ExecuteNonQuery();
                result = "alert('Updated successfully..!');";

            }
            catch (Exception e)
            {
                result = e.ToString();
            }
            finally
            {
                con.Close();
            }
            return result;
        }

        public string UpdatePassengerProfile(string name, string address, string mobilenumber,string email, string regid)
        {
            string result = "";
            try
            {
                //con.Open();
               // string qr = "update Registered_User set Name = '" + name + "', Address ='" + address + "', Mobile_Number = '" + mobilenumber + "', Email_Id ='" + email + "', where Registration_Id='" + regid + "'";
                //string qry= "update Registered_User set (Name,Address,Mobile_Number,Email_Id,Photo_name,Photo_contentType,Photo) VALUES (@Name,@Address,@Mobile_Number,@Email_Id,@Photo_name,@Photo_contentType,@Photo) where Registration_Id='" + regid + "'";
                string qry = "update Registered_User set Name=@Name,Address=@Address,Mobile_Number=@Mobile_Number,Email_Id=@Email_Id where Registration_Id='"+regid+"'";
                using (SqlCommand cmd = new SqlCommand(qry, con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Address", address);
                    cmd.Parameters.AddWithValue("@Mobile_Number", mobilenumber);
                    cmd.Parameters.AddWithValue("@Email_Id", email);                    
                    //cmd.Parameters.AddWithValue("@Photo_name", imgname);
                    //cmd.Parameters.AddWithValue("@Photo_contentType", imgcontenttype);
                   // cmd.Parameters.AddWithValue("@Photo", photo);
                    //cmd.Parameters.AddWithValue("@Registration_Id",regid);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    result = "alert('Updated successfully..!');";

                }
                

            }
            catch (Exception e)
            {
                result = e.ToString();
            }
            finally
            {
                con.Close();
            }
            return result;
        }


    }
}
