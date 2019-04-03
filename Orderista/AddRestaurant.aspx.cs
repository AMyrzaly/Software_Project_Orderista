using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddRestaurant : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
    SqlCommand comm;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        string useradmin = Session["UserAdmin"].ToString();
        UserAdmin.Text = "Hello, " + useradmin;
    }

    protected void btnCreateRestaurant_Click(object sender, EventArgs e)
    {
        ///Change the connectionString to apply different servers
        //string connString = "Server=LAPTOP-I8AD7C8G\\MSSQLSERVER2017;Initial Catalog=SwiftServe;Integrated Security=True";
        //conn = new SqlConnection(connString);
        comm = new SqlCommand("INSERT INTO Restaurants VALUES (@ResName,@ResUsername,@ResPassword,@ResEmail,@ResContact,@ResetPwd)", conn);
        //    comm.Parameters.AddWithValue("@ResName",(string)txtRestaurantName.Text);
        comm.Parameters.AddWithValue("@ResName", txtRestaurantName.Text);
        comm.Parameters.AddWithValue("@ResUsername", txtRestaurantUsername.Text);
        comm.Parameters.AddWithValue("@ResPassword", txtRestaurantPassword.Text);
        comm.Parameters.AddWithValue("@ResEmail", txtRestaurantEmail.Text);
        comm.Parameters.AddWithValue("@ResContact", txtRestaurantContact.Text);
        comm.Parameters.AddWithValue("@ResetPwd", "No");
        try
        {
            conn.Open();
            comm.ExecuteNonQuery();
            Response.Write("Added Restaurant!");
            Response.Redirect("AdminPage.aspx");

        }
        catch (Exception ex)
        {
            UserAdmin.Text = ex.Message;
            Response.Write("Connection Failed: Check Connection String");
        }
        finally
        {
            conn.Close();
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }
}