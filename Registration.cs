using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
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
        public DateTime DOB { get; set; }
        public string AadharCardNumber { get; set; }
        public string SecurityQuestion { get; set; }
        public string SecurityAnswer { get; set; }
        public DateTime RegistrationDate { get; set; }
        public string Photo { get; set; }
     
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


        public string NewRegistration(string name, string address, string mobilenumber, string email, string password, string gender, DateTime dob, string adharcard, string question, string answer, DateTime registartiondate, string photo)
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
                con.Open();

                string qr = "insert into Registered_User(Name,Address,Mobile_Number,Email_Id,Password,Gender,Date_of_Birth,AdharCard_Number,Security_Question,Security_Answer,Registration_Date,Photo)values('" + name + "','" + address + "','" + mobilenumber + "','" + email + "','" + password + "','" + gender + "','" + dob + "','" + adharcard + "','" + question + "','" + answer + "','" + registartiondate + "','" + photo + "')";
                SqlCommand cmd = new SqlCommand(qr, con);
                cmd.ExecuteNonQuery();
                //for the page with only one form
                Result = "alert('Registration successful..!');";
                
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
