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
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
    SqlCommand comm;
    SqlDataReader reader;
    SqlDataAdapter adapter;
    string RestaurantName;

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        string userName = Session["username"].ToString();
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
        BindGrid();
    }

    private void BindGrid()
    {
        comm = new SqlCommand("Select * from Menu_Items where RestaurantName = @ResName", conn);
        comm.Parameters.AddWithValue("@ResName", RestaurantName);

        try
        {
            conn.Open();
            reader = comm.ExecuteReader();
            GridDeleteMenuItem.DataSource = reader;
            GridDeleteMenuItem.DataBind();
        }
        catch
        {
            Response.Write("ERROR");
        }
        finally
        {
            conn.Close();
        }
    }

    protected void GridDeleteMenuItem_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //string userName = GridDeleteRestaurnt.Columns[2].
        GridViewRow row = (GridViewRow)GridDeleteMenuItem.Rows[e.RowIndex];
        adapter = new SqlDataAdapter(comm);
        //string connString = "Server=LAPTOP-I8AD7C8G\\MSSQLSERVER2017;Initial Catalog=SwiftServe;Integrated Security=True";
        //conn = new SqlConnection(connString);
        // comm.Parameters.AddWithValue("@res", row.Cells[2].Text);
        string sql = "Delete From Menu_Items Where Name = '" + row.Cells[1].Text + "'";

        comm = new SqlCommand(sql, conn);

        try
        {
            conn.Open();
            adapter.DeleteCommand = new SqlCommand(sql, conn);
            adapter.DeleteCommand.ExecuteNonQuery();
            BindGrid();

          lblSuccess.Text = ("Menu Item deleted");
            lblSuccess.ForeColor = System.Drawing.Color.Green;
            Page_Load(sender, e);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            lblSuccess.Text = ("Connection Failed and Menu Item deletion Failed");
            lblSuccess.ForeColor = System.Drawing.Color.Red;

           
        }
        finally
        {
            conn.Close();
        }
    }
    protected void btn_Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Restaurant/RestaurantHome.aspx");
    }
}