using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Restaurant_CompletedDashboard : System.Web.UI.Page
{
    string restaurant;
    string email;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        lblUserDetails.Text = "Hello " + Session["username"]; //Greet the user by taking session username 
       
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

    //Redirect user to main page on clicking back to home button
    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Restaurant/RestaurantHome.aspx");
    }
}