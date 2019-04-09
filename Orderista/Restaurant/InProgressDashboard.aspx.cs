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

public partial class Restaurant_InProgressDashboard : System.Web.UI.Page
{
    string restaurant;
    string email;
    int orderId;
    protected void Page_Load(object sender, EventArgs e)
    {

        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        lblUserDetails.Text = "Hello " + Session["username"]; //Greet the user
       
        
    }

   
    protected void logOutBtn_Click(object sender, EventArgs e)
    {
         //Clears the page
            Session.Abandon();
            Session.Clear();
            //returns to login page
            Response.Cookies.Clear();
            Response.Redirect("RestaurantLogin.aspx");

        
    }

    //Send the message to the user that the order is completed
    private void sendCodeCompleted(string email)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("orderista.services@gmail.com", "Orderista@2019"); //Email information of Orderista
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Orderista Order Status";
        msg.Body = "Dear User , \n\n\n Your Order has been Completed and Ready for Pickup  \n\n\nThanks and Regards,\nOrderista Team"; //The status message to the user
        string toAddress = email; //Get the user entered email address 
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

    //When user sets the status as completed and clicks the button redirect to Completed dashboard
    protected void btnCompleted_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Restaurant/CompletedDashboard.aspx");
    }

    //When the user changes the status on that particular row updating function perform the following
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int index = GridView1.EditIndex;
        GridViewRow row = GridView1.Rows[index];

        TextBox email = (TextBox)row.FindControl("txtEmail");
        // Get the controls that contain the updated values. In this
        // example, the updated values are contained in the TextBox 
        // controls declared in the edit item templates of each TemplateField 
        // column fields in the GridView control.

        sendCodeCompleted(email.Text);
    }

    //Once user has completed updating and then load the grid view again with the updated data
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.DataItem != null)
            {
                if ((e.Row.RowState & DataControlRowState.Edit) > 0)
                {
                    TextBox email = (TextBox)e.Row.FindControl("txtEmail"); //Disabling email field for updating
                    email.Enabled = false;

                    TextBox delayTime = (TextBox)e.Row.FindControl("txtDelayTime"); //Disabling delay field for updating
                    delayTime.Enabled = false;

                }
            }
        }
    }

    //When user clicks back to home button redirect to main page
    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Restaurant/RestaurantHome.aspx");
    }
}