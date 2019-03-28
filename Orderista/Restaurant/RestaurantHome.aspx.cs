using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Restaurant_RestaurantHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        lblUserDetails.Text = "Hello " + Session["username"];

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

    protected void btnNew_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Restaurant/RestaurantDashboard.aspx");
    }

    protected void btnInProgress_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Restaurant/InProgressDashboard.aspx");
    }

    protected void btnCompleted_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Restaurant/CompletedDashboard.aspx");
    }
}