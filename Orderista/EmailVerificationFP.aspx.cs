using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class EmailVerificationFP : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        Label2.Text = "Your Email is " + Request.QueryString["emailadd"].ToString() + ", Please check your Mail Inbox for an Activation Code ";
        Label4.Visible = false;
        DropDownList1.Visible = false;
        Label5.Visible = false;
        txtSecurityA.Visible = false;
        btnVerifySecurityAnswer.Visible = false;
        btnPwdReset.Visible = false;
    }

    protected void btnVerifyCode_Click(object sender, EventArgs e)
    {
        String myquery = "Select * from ForgotPassword where CentennialEmail='" + Request.QueryString["emailadd"] + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;

        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            String activationCode;
            activationCode = ds.Tables[0].Rows[0]["activationcode"].ToString();

            if (activationCode == txtVerificationCode.Text)
            {
                changeStaus();
                Label3.Text = "Your Email has been verified successfully";
                Label3.ForeColor = System.Drawing.Color.Green;
                Label4.Visible = true;
                DropDownList1.Visible = true;
                Label5.Visible = true;
                txtSecurityA.Visible = true;
                btnVerifySecurityAnswer.Visible = true;
            }
            else
            {
                Label3.Text = "Invalid Activation Code, Please check your Mail Inbox";
                Label3.ForeColor = System.Drawing.Color.Red;
            }

        }

        con.Close();

    }

    private void changeStaus()
    {
        String updateData = "Update CreateAccountCustomer set Status='Verified' where CentennialEmail='" + Request.QueryString["emailadd"] + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updateData;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

    }

    protected void btnVerifySecurityAnswer_Click(object sender, EventArgs e)
    {
        String myquery = "Select * from CreateAccountCustomer where CentennialEmail='" + Request.QueryString["emailadd"] + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        Label4.Visible = true;
        DropDownList1.Visible = true;
        Label5.Visible = true;
        txtSecurityA.Visible = true;
        btnVerifySecurityAnswer.Visible = true;

        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            String securityA;
            securityA = ds.Tables[0].Rows[0]["SecurityA"].ToString();

            if (securityA == txtSecurityA.Text)
            {

                Label3.Text = "Your Security Answer has been verified successfully";
                Label3.ForeColor = System.Drawing.Color.Green;
                btnPwdReset.Visible = true;


            }
            else
            {
                Label3.Text = "Incorrect Security Question, please try again";
                Label3.ForeColor = System.Drawing.Color.Red;
            }

        }

        con.Close();
    }

    protected void txtPwdReset_Click(object sender, EventArgs e)
    {
        Response.Redirect("ResetPassword.aspx?emailadd=" + Request.QueryString["emailadd"]);
    }
}