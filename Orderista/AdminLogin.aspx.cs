﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        lblErrorMessage.Visible = false;
        lblUsernameMessage.Visible = false;
        lblPasswordMessage.Visible = false;
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {

       // SqlConnection conn;
        SqlCommand comm;
        SqlDataAdapter adapter;
        DataSet ds = new DataSet();

        string username = txtUsername.Text;
        string password = txtPassword.Text;

        Session["UserAdmin"] = username;

        ///Change the connectionString to apply different servers
        //string connString = "Server=DESKTOP-MCNBK1I\\SQLEXPRESS ;Initial Catalog=Orderista;Integrated Security=True";
        //conn = new SqlConnection(connString);

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);

        comm = new SqlCommand("SELECT * FROM Admins where Username = @user and Password = @pass ;");
        comm.Parameters.AddWithValue("@user", username);
        comm.Parameters.AddWithValue("@pass", password);
        comm.Connection = conn;
        try
        {

            conn.Open();
            TestLabel.Text = "Connected";
            adapter = new SqlDataAdapter(comm);
            adapter.Fill(ds);

            bool loginSuccessful = ((ds.Tables.Count > 0) && (ds.Tables[0].Rows.Count > 0));

            if (loginSuccessful)
            {

                TestLabel.Text = "Login Successfully";
                Response.Redirect("AdminPage.aspx");
            }
            else if (String.IsNullOrEmpty(txtUsername.Text))
            {
                lblUsernameMessage.Visible = true;
            }
            else if (String.IsNullOrEmpty(txtPassword.Text))
            {
                lblPasswordMessage.Visible = true;
            }
            else
            {
                lblErrorMessage.Visible = true;
            }


        }
        catch
        {
            TestLabel.Text = "SQl Connection Failed";
        }
        finally
        {
            conn.Close();
        }


    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtPassword.Text = "";
        txtUsername.Text = "";
        TestLabel.Text = "";
    }
}