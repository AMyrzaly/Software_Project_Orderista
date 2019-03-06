using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateCustomerAccount : System.Web.UI.Page
{

    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    static String activationCode;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        con.ConnectionString = "Data Source=LAPTOP-I8AD7C8G\\MSSQLSERVER2017 ;Initial Catalog=Orderista;Integrated Security=True";
        con.Open();
    }

    protected void btnCreateCustomerAccount_Click(object sender, EventArgs e)
    {
        Random random = new Random();
        activationCode = random.Next(1001, 9999).ToString();
        SqlCommand cmd = new SqlCommand("insert into tbl_CustomerLogin" + "(Username,Password)values(@Username,@Password)", con);
        cmd.Parameters.AddWithValue("@Username", txtEmail.Text);
        cmd.Parameters.AddWithValue("@Password", txtPwd.Text);
        cmd.ExecuteNonQuery();
        SqlCommand cmd1 = new SqlCommand("insert into CreateAccountCustomer" + "(Firstname,Lastname,CentennialEmail,Phonenumber,Status,Activationcode,SecurityA)values(@Firstname,@Lastname,@CentennialEmail,@Phonenumber,@Status,@Activationcode,@SecurityA)", con);
        cmd1.Parameters.AddWithValue("@Firstname", txtFName.Text);
        cmd1.Parameters.AddWithValue("@Lastname", txtLName.Text);
        cmd1.Parameters.AddWithValue("@CentennialEmail", txtEmail.Text);
      //  cmd1.Parameters.AddWithValue("@Address", txtAddress.Text);
        cmd1.Parameters.AddWithValue("@Phonenumber", txtPhone.Text);
        cmd1.Parameters.AddWithValue("@Status", "Unverified");
        cmd1.Parameters.AddWithValue("@Activationcode", activationCode);
        cmd1.Parameters.AddWithValue("@SecurityA", txtSecurityA.Text);
        cmd1.ExecuteNonQuery();
        sendCode(); //use for email code
        Response.Redirect("EmailVerification.aspx?emailadd=" + txtEmail.Text);

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
        msg.Body = "Dear " + txtFName.Text + ", \n\n\nYour Activation Code is " + activationCode + "\n\n\nThanks and Regards,\nOrderista Team";
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