using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RestaurantLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        lblErrorMessage.Visible = false;
        lblUsernameMessage.Visible = false;
        lblPasswordMessage.Visible = false;
    }

    protected void btnLog_Click(object sender, EventArgs e)
    {
        //Establish connection to database
        using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString))
        {
            sqlCon.Open();
            //Get the users username and password from Restaurants table
            string query = "SELECT COUNT(1) FROM Restaurants WHERE username=@Username AND password=@Password";

            //Get the users password reset from Restaurants table
            string query1 = "SELECT PasswordReset FROM Restaurants WHERE Username=@username";

            SqlCommand SqlCmd = new SqlCommand(query, sqlCon); //Execute command 1
            SqlCommand SqlCmd1 = new SqlCommand(query1, sqlCon); //Execute command 2

            SqlCmd1.Parameters.AddWithValue("@username", txtUserName.Text.Trim());
            SqlCmd.Parameters.AddWithValue("@Username", txtUserName.Text.Trim());//parameter values from the database
            SqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());//parameter values from the database

            //Obtaining the password reset field to local variable
            string passwordReset = Convert.ToString(SqlCmd1.ExecuteScalar());
            //Initializing count variable
            int count = Convert.ToInt32(SqlCmd.ExecuteScalar());

            //Checking if the password is reset or no
            if (count == 1)
            {
                //If the password is rest redirect user to login page
                if (passwordReset != "No")
                {
                    Session["username"] = txtUserName.Text.Trim();
                    Response.Redirect("/Restaurant/RestaurantHome.aspx");
                }
                //Else redirect user to password reset page
                else
                {
                    Response.Redirect("/Restaurant/ResetPassword.aspx?usernameRestaurant=" + txtUserName.Text);
                }
            }
            //if the user enters a wrong username
            else if (String.IsNullOrEmpty(txtUserName.Text))
            {
                lblUsernameMessage.Visible = true;
            }
            //if the user enters a wrong password

            else if (String.IsNullOrEmpty(txtPassword.Text))
            {
                lblPasswordMessage.Visible = true;
            }
            else if (count != 1)
            {
                lblErrorMessage.Visible = true;
            }
        }

    }

    //When user clears all the input
    protected void btnClear_Click(object sender, EventArgs e)
    {
        ClearInputs(Page.Controls);
    }
    //Call to clear inputs
    void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            ClearInputs(ctrl.Controls);
        }
    }
}

