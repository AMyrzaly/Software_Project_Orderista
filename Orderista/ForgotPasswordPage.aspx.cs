using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgotPasswordPage : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
    static String activationCode;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        con.Open();
    }


    protected void btnForgotPwd_Click(object sender, EventArgs e)
    {
        Random random = new Random();
        activationCode = random.Next(1001, 9999).ToString();
        SqlCommand cmd1 = new SqlCommand("insert into ForgotPassword" + "(CentennialEmail,Activationcode)values(@CentennialEmail,@activationcode)", con);
        cmd1.Parameters.AddWithValue("@CentennialEmail", txtEmail.Text);
        cmd1.Parameters.AddWithValue("@activationcode", activationCode);
        cmd1.ExecuteNonQuery();
        sendCode();
        Response.Redirect("EmailVerificationFP.aspx?emailadd=" + txtEmail.Text);
    }

    private void sendCode()
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("orderista.services@gmail.com", "Orderista@2019");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Orderista Email Verification Code";
        msg.Body = "Dear Customer, " + "\n\n Please enter the following Activation Code to reset your password.\n " + activationCode + "\n\n\nThanks and Regards\nOrderista Team";
        string toAddress = txtEmail.Text;
        msg.To.Add(toAddress);
        string fromAddress = "Orderista <orderista.services@gmail.com>";
        msg.From = new MailAddress(fromAddress);
        try
        {
            smtp.Send(msg);
        }
        catch
        {
            throw;
        }
    }
}