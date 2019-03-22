using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Restaurant_InProgressDashboard : System.Web.UI.Page
{
    string restaurant;
    string email;
    protected void Page_Load(object sender, EventArgs e)
    {

        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        lblUserDetails.Text = "Hello " + Session["username"];
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
        connection.Open();
        SqlCommand cmd = new SqlCommand("select Restaurant_Name from Restaurants Where Username = @username", connection);
        cmd.Parameters.AddWithValue("@username", Session["username"]);
        try
        {
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                restaurant = reader[0].ToString();
            }
            reader.Close();
        }
        catch (Exception ex)
        {

            string msg = "Fetch Error: ";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            connection.Close();
        }


        if (!IsPostBack)
        {
            BindMenuGridView();
        }
    }

    private void BindMenuGridView()
    {
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
        try
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT OrderID,CentennialEmail,DelayTime,Status FROM Orders WHERE Status = @status AND  RestaurantName = @restaurant");
            cmd.Parameters.AddWithValue("@status", "New");
            cmd.Parameters.AddWithValue("@restaurant", restaurant);
            cmd.Connection = connection;
            SqlDataAdapter sqlData = new SqlDataAdapter(cmd);

            sqlData.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        catch (SqlException ex)
        {
            string msg = "Fetch Error: ";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            connection.Close();
        }
    } // BindMenuGridView


    protected void logOutBtn_Click(object sender, EventArgs e)
    {
         //Clears the page
            Session.Abandon();
            Session.Clear();
            //returns to login page
            Response.Cookies.Clear();
            Response.Redirect("RestaurantLogin.aspx");

        
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "CompleteRow")
        {
            int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
            GridView1.EditIndex = rowIndex;
            BindMenuGridView();
        }
        else if (e.CommandName == "CancelUpdate")
        {
            GridView1.EditIndex = -1;
            BindMenuGridView();
        }
        else if (e.CommandName == "UpdateRow")
        {
            int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;

            int orderId = Convert.ToInt32(e.CommandArgument);
            string status = ((DropDownList)GridView1.Rows[rowIndex].FindControl("DDLStatus")).SelectedValue;

            //Update Code
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("UPDATE Orders SET Status = @status WHERE OrderID = @orderId", connection);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("@orderId", orderId);

            string email = ((TextBox)GridView1.Rows[rowIndex].FindControl("txtEmail")).Text;
            sendCodeProgress(email);

            GridView1.EditIndex = -1;
            BindMenuGridView();
        }
    }

    private void sendCodeProgress(string email)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("orderista.services@gmail.com", "Orderista@2019");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Orderista Order Status";
        msg.Body = "Dear User , \n\n\n Your Order has been Completed and Ready for Pickup  \n\n\nThanks and Regards,\nOrderista Team";
        string toAddress = email;
        msg.To.Add(toAddress);
        string fromAddress = "Orderista <orderista.services@gmail.com>";
        msg.From = new MailAddress(fromAddress);
        try
        {
            smtp.Send(msg);
        }
        catch
        {
            throw;
        }
    }

}