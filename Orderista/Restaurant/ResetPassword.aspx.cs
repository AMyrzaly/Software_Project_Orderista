using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Restaurant_ResetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        lblUserDetails.Text = "Hello " + Request.QueryString["usernameRestaurant"];
        lblPasswordMessage.Visible = false;
        lblPasswordMatch.Visible = false;


    }

    private void changeStaus()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString))
        {
            String updateData = "Update Restaurants set PasswordReset='Yes' where Username='" + Request.QueryString["usernameRestaurant"] + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updateData;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

    }


    protected void btnReset_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(txtPassword.Text))
        {
            lblPasswordMessage.Visible = true;
            lblPasswordMessage.Text = "Password field cannot be empty";
        }
        else
        {
            using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString))
            {
                sqlCon.Open();
                changeStaus();
                String updateData = "Update Restaurants set Password=@password where Username='" + Request.QueryString["usernameRestaurant"] + "'";
                SqlCommand cmd = new SqlCommand(updateData, sqlCon);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                cmd.ExecuteNonQuery();
            }
            lblSuccess.Text = "Your password has been reset successfully";

            Response.Redirect("/Restaurant/RestaurantLogin.aspx");
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        ClearInputs(Page.Controls);
    }

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