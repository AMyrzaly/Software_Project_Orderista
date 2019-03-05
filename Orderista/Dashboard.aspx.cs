using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        con.ConnectionString = "Data Source=LAPTOP-I8AD7C8G\\MSSQLSERVER2017 ;Initial Catalog=Orderista;Integrated Security=True";
        con.Open();
        if (Session["username"] == null)
            Response.Redirect("customerLogin.aspx");
        //displays the user id email
        lblUserDetails.Text = "Hello " + Session["username"];
        //Response.Redirect("/Orders/OrdersPage.aspx");
        //Response.Redirect("OrdersPage.aspx");
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        //Clears the page
        Session.Abandon();
        //returns to login page
        Response.Redirect("customerLogin.aspx");
    }
}