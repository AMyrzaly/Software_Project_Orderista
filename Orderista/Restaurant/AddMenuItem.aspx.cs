using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Restaurant_AddMenuItem : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
    SqlCommand comm;
    string RestaurantName;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        string userName = Session["username"].ToString();

        //Select only the Restaurant Name from session variable username
        comm = new SqlCommand("Select Restaurant_Name from Restaurants where Username = @Username", conn);
        comm.Parameters.AddWithValue("@Username", userName);
        try
        {
            conn.Open();
            RestaurantName = comm.ExecuteScalar() as string;
        }
        catch (Exception ex)
        {
            Response.Write("Connection Failed: Check Connection String");
        }
        finally
        {
            conn.Close();
        }
        btnHome.Visible = false;
    }
    protected void btnCreateItem_Click(object sender, EventArgs e)
    {
      //Load the menu table with the user entered values
        comm = new SqlCommand("INSERT INTO Menu_Items VALUES (@ItemName,@ResName,@Price,@InStock,@Visible)", conn);

        //Now recieve from the user enetered values
        comm.Parameters.AddWithValue("@ItemName", txtItemName.Text);
        comm.Parameters.AddWithValue("@ResName", RestaurantName);
        comm.Parameters.AddWithValue("@Price", txtprice.Text);
        comm.Parameters.AddWithValue("@InStock", 1);
        comm.Parameters.AddWithValue("@Visible",1);
        try
        {
            conn.Open();
            comm.ExecuteNonQuery();
            Response.Write("Added Item!"); 
            lblSuccess.Text = "Successfully added Menu Item"; //Confirmation message to the user
            lblSuccess.ForeColor = System.Drawing.Color.Green;
            btnHome.Visible = true;
            btnCancel.Visible = false;
            btnCreateItem.Visible = false;
        }
        catch (Exception ex)
        {
            btnCancel.Visible = false;
            btnCreateItem.Visible = false;
            btnHome.Visible = true;
            lblSuccess.Text = "Menu Item already exists and so unable to added Menu Item"; //Failure message for the user
            lblSuccess.ForeColor = System.Drawing.Color.Red;

        }
        finally
        {
            conn.Close();
        }
    }

    //When user clicks the back to home button redirect to main page
    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Restaurant/RestaurantHome.aspx");
    }

    //When user clicks the cancel button redirect to main page

    protected void btnCancel_Click1(object sender, EventArgs e)
    {
        Response.Redirect("/Restaurant/RestaurantHome.aspx");
    }
}