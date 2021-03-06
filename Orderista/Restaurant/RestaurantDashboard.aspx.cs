﻿using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Restaurant_RestaurantDashboard : System.Web.UI.Page
{
    string restaurant;
    string email;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        lblUserDetails.Text = "Hello " + Session["username"]; //Greet the user
     

        
        //SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
        //connection.Open();
        //SqlCommand cmd = new SqlCommand("select Restaurant_Name from Restaurants Where Username = @username", connection);
        //cmd.Parameters.AddWithValue("@username", Session["username"]);
        //try
        //{
        //    SqlDataReader reader = cmd.ExecuteReader();
        //    while (reader.Read())
        //    {
        //        restaurant = reader[0].ToString();
        //    }
        //    reader.Close();
        //}
        //catch (Exception ex)
        //{
            
        //    string msg = "Fetch Error: ";
        //    msg += ex.Message;
        //    throw new Exception(msg);
        //    }   
        //finally
        //{
        //    connection.Close();
        //}
    

        //if (!IsPostBack)
        //{
        //    BindGridView();
        //}
    }

    //private void BindGridView()
    //{
    //    DataTable dt = new DataTable();
    //    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
    //    try
    //    {
    //        connection.Open();
    //        SqlCommand cmd = new SqlCommand("SELECT OrderID,CentennialEmail,DelayTime,Status FROM Orders WHERE Status=@status AND RestaurantName = @restaurant");
    //        cmd.Parameters.AddWithValue("@status", "New");
    //        cmd.Parameters.AddWithValue("@restaurant", restaurant);
    //        cmd.Connection = connection;
    //        SqlDataAdapter sqlData = new SqlDataAdapter(cmd);

    //        sqlData.Fill(dt);
    //        if (dt.Rows.Count > 0)
    //        {
    //            GridView1.DataSource = dt;
    //            GridView1.DataBind();
    //        }
    //        else if(dt.Rows.Count == 0)
    //        {
    //            lblEmpty.Text = "No new orders";
    //            GridView1.EmptyDataText = "No new orders";
    //        }
    //    }
    //    catch (SqlException ex)
    //    {
    //        string msg = "Fetch Error: ";
    //        msg += ex.Message;
    //        throw new Exception(msg);
    //    }
    //    finally
    //    {
    //        connection.Close();
    //    }
    //} // BindGridView



    protected void logOutBtn_Click(object sender, EventArgs e)
    {
        //Clears the page
        Session.Abandon();
        Session.Clear();
        //returns to login page
        Response.Cookies.Clear();
        Response.Redirect("RestaurantLogin.aspx");

    }

    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
       

    //    if (e.CommandName == "AcceptRow")
    //    {
    //        int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
    //        GridView1.EditIndex = rowIndex;
    //        BindGridView();
    //    }
    //    else if (e.CommandName == "DeclineRow")
    //    {
    //        int orderId = Convert.ToInt32(e.CommandArgument);

    //        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
    //        SqlCommand cmd = new SqlCommand("select CentennialEmail from Orders Where OrderID = @orderId", connection);
    //        cmd.Parameters.AddWithValue("@orderId", orderId);
    //        try
    //        {
    //            connection.Open();
    //            SqlDataReader reader = cmd.ExecuteReader();
    //            while (reader.Read())
    //            {
    //                email = reader[0].ToString();
    //            }
    //            reader.Close();
    //        }
    //        catch (Exception ex)
    //        {

    //            string msg = "Fetch Error: ";
    //            msg += ex.Message;
    //            throw new Exception(msg);
    //        }
    //        finally
    //        {
    //            connection.Close();
    //        }

    //        sendCodeDecline(email);
    //        BindGridView();

    //    }
    //    else if (e.CommandName == "CancelUpdate")
    //    {
    //        GridView1.EditIndex = -1;
    //        BindGridView();
    //    }
    //    else if (e.CommandName == "UpdateRow")
    //    {
    //        int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;

    //        int orderId = Convert.ToInt32(e.CommandArgument);
    //        string status = ((DropDownList)GridView1.Rows[rowIndex].FindControl("DDLStatus")).SelectedValue;

    //        //Update Code
    //        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
    //        connection.Open();
    //        SqlCommand cmd = new SqlCommand("UPDATE Orders SET Status = @status WHERE OrderID=@orderId", connection);
    //        cmd.Parameters.AddWithValue("@status", status);
    //        cmd.Parameters.AddWithValue("@orderId", orderId);
    //        cmd.ExecuteNonQuery();
    //         try
    //        {
    //                GridView1.EditIndex = -1;
    //                BindGridView();


    //        }
    //        catch (Exception ex)
    //        {

    //            string msg = "Fetch Error: ";
    //            msg += ex.Message;
    //            throw new Exception(msg);
    //        }

    //       if (status == "InProgress")
    //        {
    //            ChangeStatusProgressEmail(orderId);
              
    //        }
    //    }
        
    //}


        //When the user declines the order send message to the customer
    private void ChangeStatusDeclineEmail(int orderId)
    {
        
        //Send Update Status

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
        //Get the email of the customer with the help of Order Id from the Orders table
        SqlCommand cmd = new SqlCommand("select CentennialEmail from Orders Where OrderID = @orderId", connection);
        cmd.Parameters.AddWithValue("@orderId", orderId);
        try
        {
            connection.Open();
            SqlDataReader reader = cmd.ExecuteReader(); //Execute the read operation
            while (reader.Read())
            {
                email = reader[0].ToString();
            }
            reader.Close();
            // sendCodeDecline(email);
        }
        catch (Exception ex)
        {

            string msg = "Fetch Error: ";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            connection.Close();
        }

    }

   
    //Send the status of Declione to customer
    private void sendCodeDecline(string email)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("orderista.services@gmail.com", "Orderista@2019"); //Orderista email address
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Orderista Order Status";
        msg.Body = "Dear User , \n\n\n We regret to inform that we are declining your order  \n\n\nThanks and Regards,\nOrderista Team"; //Status message
        string toAddress = email; //Get the email of the user from the orders table using order id
        msg.To.Add(toAddress);
        string fromAddress = "Orderista <orderista.services@gmail.com>";
        msg.From = new MailAddress(fromAddress);
        try
        {
            smtp.Send(msg); //Send the message to the user
        }
        catch
        {
            throw;
        }
    }

    //If the user accepts the order send the status
    private void sendCodeProgress(string email)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("orderista.services@gmail.com", "Orderista@2019");//Orderista email address
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Orderista Order Status";
        msg.Body = "Dear User , \n\n\n Your Order has been Accepted and is In Progress  \n\n\nThanks and Regards,\nOrderista Team";//Status message
        smtp.EnableSsl = true;
        string toAddress = email; //Get the email of the user from the orders table using order id
        msg.To.Add(toAddress);
        string fromAddress = "Orderista <orderista.services@gmail.com>";
        msg.From = new MailAddress(fromAddress);
        try
        {
            smtp.Send(msg);//Send the message to the user
        }
        catch
        {
            throw;
        }
    }

    //When user clicks to check the orders in progress
    protected void btnInProgress_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Restaurant/InProgressDashboard.aspx");
    }

    //When the user changes the status on that particular row updating function perform the following

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int index = GridView1.EditIndex;
        GridViewRow row = GridView1.Rows[index];


        string status = ((DropDownList)GridView1.Rows[index].FindControl("DDLStatus")).SelectedValue;

        TextBox email = (TextBox)row.FindControl("txtEmail");
        // Get the controls that contain the updated values. In this
        // example, the updated values are contained in the TextBox 
        // controls declared in the edit item templates of each TemplateField 
        // column fields in the GridView control.

        if (status == "InProgress")
            {
            sendCodeProgress(email.Text); //Call to send the progress status
        }
       else if (status == "Decline")
        {
            sendCodeDecline(email.Text); //Call to send the decline status
        }





        // Get the controls that contain the updated values. In this
        // example, the updated values are contained in the TextBox 
        // controls declared in the edit item templates of each TemplateField 
        // column fields in the GridView control.


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

                    TextBox email = (TextBox)e.Row.FindControl("txtEmail");  //Disabling email field for updating
                    email.Enabled = false;

                    TextBox delayTime = (TextBox)e.Row.FindControl("txtDelayTime");  //Disabling delay time field for updating
                    delayTime.Enabled = false;
                    //e.Row.Cells[1].Enabled = false;
                    //e.Row.Cells[2].Enabled = false;
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