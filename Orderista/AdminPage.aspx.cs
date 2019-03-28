using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class AdminPage : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand comm;
    SqlDataReader reader;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        
        string useradmin = Session["UserAdmin"].ToString();

        UserAdmin.Text = "Welcome, " + useradmin;

        string gridViewTable;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
        if (AdminOrdersRestaurants.SelectedIndex == 0)
        {
            gridViewTable = "RESTAURANTS";

            comm = new SqlCommand("SELECT * FROM " + gridViewTable, conn);
            try
            {
                conn.Open();
                reader = comm.ExecuteReader();
                RestaurantGrid.DataSource = reader;
                RestaurantGrid.DataBind();
                TableName.Text = AdminOrdersRestaurants.SelectedItem.Text;
            }
            catch
            {
                // TableName.Text = "YOU fcked up";
                Response.Write("Connection Failed: Check Connexion String");
            }
            finally
            {
                conn.Close();
            }

            AddRestaurant.Visible = true;
            DeleteRestaurant.Visible = true;
        }
        else
        {
            gridViewTable = "ORDERS";

            comm = new SqlCommand("SELECT OrderID,CentennialEmail,RestaurantName,DelayTime,Status,Total FROM " + gridViewTable, conn);
            try
            {
                conn.Open();
                reader = comm.ExecuteReader();
                RestaurantGrid.DataSource = reader;
                RestaurantGrid.DataBind();
                TableName.Text = AdminOrdersRestaurants.SelectedItem.Text;
            }
            catch
            {
                // TableName.Text = "YOU fcked up";
                Response.Write("Connection Failed: Check Connexion String");
            }
            finally
            {
                conn.Close();
            }

            AddRestaurant.Visible = false;
            DeleteRestaurant.Visible = false;
        }
     
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        //Clears the page
        Session.Abandon();
        Session.Clear();
        //returns to login page
        Response.Cookies.Clear();
        Response.Redirect("AdminLogin.aspx");
    }

    protected void AddRestaurant_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddRestaurant.aspx");
    }

    protected void DeleteRestaurant_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteRestaurant.aspx");
    }

  
}