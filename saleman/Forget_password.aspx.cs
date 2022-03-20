using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data.Common;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Web.Razor.Text;

namespace saleman
{
    public partial class Forget_password : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
        SqlCommand cmd = new SqlCommand();

        protected void Loginbutton_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Forgetbutton_Click(object sender, EventArgs e)
        {
            String password="";
            String username = "";
            String myquery = "Select * from [users] where email = '" + email.Text + "'";
            cmd.CommandText = myquery;
            cmd.Connection = con;
            con.Open();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read()){
                Label1.Visible = true;
                Label1.Enabled = true;
                Label1.Text = "the password send to your email";
                password = dr["password"].ToString();
                username = dr["username"].ToString();
                Email_Send(email.Text, password, username);
            }
            else
            {
                Label1.Enabled = true;
                Label1.Text = "Your Username is Not Valid or Email Not Registered";
            }
            con.Close();
        }

        public void Email_Send(string email,string password,string username)
        {
            string Toemail = email;
            string password_user = password;
            String Emailbody = "Dear " + username + ", Your Password is  " + password_user + "\n\n\nThanks & Regards\nSaleman Hub Team";
            MailMessage Passrequestedemail = new MailMessage("osamaazbarga@gmail.com", Toemail);
            Passrequestedemail.Body = Emailbody;
            Passrequestedemail.IsBodyHtml = true;

            Passrequestedemail.Subject = "Resetting Password";
            SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
            SMTP.Credentials = new NetworkCredential()
            {
                UserName = "osamaazbarga@gmail.com",
                Password = "315454199"
            };
            SMTP.EnableSsl = true;
            SMTP.Send(Passrequestedemail);
            //SMTP.UseDefaultCredentials = false;
        }

    }
}