using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Restaurant_DeleteMenuItem : System.Web.UI.Page
{
    //Establish connection to database
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
    SqlCommand comm;
    SqlDataReader reader;
    SqlDataAdapter adapter;
    string RestaurantName;

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        string userName = Session["username"].ToString(); //Greet the user

        //Get the restaurant name from restaurants table using username from session
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
        BindGrid(); //Call to load the Grid View
    }

    //Now start loading the grid view
    private void BindGrid()
    {
        //Get the menu items from the table with the specified restaurant name
        comm = new SqlCommand("Select * from Menu_Items where RestaurantName = @ResName", conn);
        comm.Parameters.AddWithValue("@ResName", RestaurantName);

        try
        {
            conn.Open();
            //Read the table
            reader = comm.ExecuteReader();
            GridDeleteMenuItem.DataSource = reader; //Load the grid view
            GridDeleteMenuItem.DataBind();
        }
        catch
        {
            Response.Write("ERROR"); //Throw error on failure conncetion
        }
        finally
        {
            conn.Close();
        }
    }

    //When user clicks delete funbction to perform delete operation
    protected void GridDeleteMenuItem_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //Get the selected menu item
        GridViewRow row = (GridViewRow)GridDeleteMenuItem.Rows[e.RowIndex];
        adapter = new SqlDataAdapter(comm);
     
        //Delete the menu items for the specified food name
        string sql = "Delete From Menu_Items Where Name = '" + row.Cells[1].Text + "'";

        comm = new SqlCommand(sql, conn);

        try
        {
            conn.Open();
            adapter.DeleteCommand = new SqlCommand(sql, conn);
            adapter.DeleteCommand.ExecuteNonQuery(); //Execute the delete command
            BindGrid();

          lblSuccess.Text = ("Menu Item deleted"); //Show the success message
            lblSuccess.ForeColor = System.Drawing.Color.Green;
            Page_Load(sender, e);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            lblSuccess.Text = ("Connection Failed and Menu Item deletion Failed"); //Show the failure message
            lblSuccess.ForeColor = System.Drawing.Color.Red;

           
        }
        finally
        {
            conn.Close();
        }
    }

    //When user clicks the back button redirect to home page
    protected void btn_Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Restaurant/RestaurantHome.aspx");
    }
}