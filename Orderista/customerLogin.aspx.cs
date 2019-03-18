using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class customerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        lblErrorMessage.Visible = false;
        lblUsernameMessage.Visible = false;
        lblPasswordMessage.Visible = false;
    }

    protected void btnLog_Click(object sender, EventArgs e)
    {
        //connection string to the database****DESKTOP-R6TVRP1(My computer server name); "student_login" is the database name****
        using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString))
        {
            sqlCon.Open();
            string query = "SELECT COUNT(1) FROM tbl_CustomerLogin WHERE username=@Username AND password=@Password";
            string query1 = "SELECT Status FROM CreateAccountCustomer WHERE CentennialEmail=@CentennialEmail";
            SqlCommand SqlCmd = new SqlCommand(query, sqlCon);
            SqlCommand SqlCmd1 = new SqlCommand(query1, sqlCon);
            SqlCmd1.Parameters.AddWithValue("@CentennialEmail", txtUserName.Text.Trim());
            SqlCmd.Parameters.AddWithValue("@Username", txtUserName.Text.Trim());//parameter values from the database
            SqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());//parameter values from the database
            string status = Convert.ToString(SqlCmd1.ExecuteScalar());
            int count = Convert.ToInt32(SqlCmd.ExecuteScalar());
            if (count == 1)
            {
                if (status != "Unverified")
                {
                    Session["username"] = txtUserName.Text.Trim();
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    Response.Redirect("EmailVerification.aspx?emailadd=" + txtUserName.Text);
                }
            }
            //if the user enters a wrong username
            else if (String.IsNullOrEmpty(txtUserName.Text))
            {
                lblUsernameMessage.Visible = true;
            }
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

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateCustomerAccount.aspx");
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

