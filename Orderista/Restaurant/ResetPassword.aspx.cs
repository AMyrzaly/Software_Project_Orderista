using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Restaurant_ResetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        lblUserDetails.Text = "Hello " + Request.QueryString["usernameRestaurant"]; //Greet the user
        lblPasswordMessage.Visible = false;
        lblPasswordMatch.Visible = false;


    }

    private void changeStaus()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString))
        {
            //When the user has reset the password change the field to Yes in Restaurants table
            String updateData = "Update Restaurants set PasswordReset='Yes' where Username='" + Request.QueryString["usernameRestaurant"] + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updateData; //Read the updated data
            cmd.Connection = con;
            cmd.ExecuteNonQuery(); //Execute the command
        }

    }

    //When the user enters the new password and clicks to reset
    protected void btnReset_Click(object sender, EventArgs e)
    {
        //Check if the text field of password is empty
        if (String.IsNullOrEmpty(txtPassword.Text))
        {
            lblPasswordMessage.Visible = true;
            lblPasswordMessage.Text = "Password field cannot be empty";
        }
        else
        {
            //Establish the connection to database
            using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString))
            {
                sqlCon.Open();
                //Call to the function to update
                changeStaus(); 
                //Update the password with new password
                String updateData = "Update Restaurants set Password=@password where Username='" + Request.QueryString["usernameRestaurant"] + "'"; 
                SqlCommand cmd = new SqlCommand(updateData, sqlCon);
                //Get the user entered value from textbox
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                //Execute the command
                cmd.ExecuteNonQuery(); 
            }
            lblSuccess.Text = "Your password has been reset successfully"; //Confirmation to user

            Response.Redirect("/Restaurant/RestaurantLogin.aspx"); //Then redirect user to login
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        ClearInputs(Page.Controls); //Clear all the inputs
    }

    //Call to clear all the text fields
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