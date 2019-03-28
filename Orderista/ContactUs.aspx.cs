using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        MailMessage mailMessage = new MailMessage();
        mailMessage.From = new MailAddress("orderista.services@gmail.com");
        mailMessage.To.Add("orderista.services@gmail.com");
        mailMessage.Subject = txtFirstName.Text + " - " + txtSubject.Text;
        mailMessage.Body = "<b>Name: </b>" + txtFirstName.Text + " " + txtLastName.Text + "<br/>"
            + "<b>Email: </b>" + txtEmail.Text + "<br/>"
            + "<b>Phone Number: </b>" + txtPhoneNumber.Text + "<br/>"
            + "<b>Comments: </b>" + txtComments.Text;
        mailMessage.IsBodyHtml = true;

        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
        smtpClient.EnableSsl = true;
        smtpClient.Credentials = new System.Net.NetworkCredential("orderista.services@gmail.com", "Orderista@2019");
        smtpClient.Send(mailMessage);

        ClearInputs(Page.Controls);
        Label.Text = "Submitted successfully";
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        ClearInputs(Page.Controls);
    }
    void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            ClearInputs(ctrl.Controls);
        }
    }
}
