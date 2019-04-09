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
        lblUserDetails.Text = "Hello " + Session["username"]; //Greet the user

    }

    //When user clicks logout
    protected void logOutBtn_Click(object sender, EventArgs e)
    {
        //Clears the page
        Session.Abandon();
        Session.Clear();
        //returns to login page
        Response.Cookies.Clear();
        Response.Redirect("RestaurantLogin.aspx");

    }

    //When user clicks to ckeck new orders redirect to the page
    protected void btnNew_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Restaurant/RestaurantDashboard.aspx");
    }

    //When user clicks to ckeck In Progress orders redirect to the page

    protected void btnInProgress_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Restaurant/InProgressDashboard.aspx");
    }

    //When user clicks to ckeck Completed orders redirect to the page

    protected void btnCompleted_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Restaurant/CompletedDashboard.aspx");
    }

    //When user clicks to add men items redirect to the page

    protected void btnAddMenu_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("/Restaurant/AddMenuItem.aspx");
    }

    //When user clicks to delete men items redirect to the page

    protected void btnDeleteMenu_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("/Restaurant/DeleteMenuItem.aspx");
    }
}