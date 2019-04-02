using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmailVerification : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        Label2.Text = "Your Email is : " + Request.QueryString["emailadd"].ToString() + ", Please check your Inbox for the Email Verification Code ";
        HyperLink1.Visible = false;
    }

    private void changeStaus()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
        String updateData = "Update CreateAccountCustomer set Status='Verified' where CentennialEmail='" + Request.QueryString["emailadd"] + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updateData;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

    }


    protected void btnVerifyCode_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
        String myquery = "Select * from CreateAccountCustomer where CentennialEmail='" + Request.QueryString["emailadd"] + "'";
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
            String securityA;
            activationCode = ds.Tables[0].Rows[0]["Activationcode"].ToString();
            securityA = ds.Tables[0].Rows[0]["SecurityA"].ToString();

            if (activationCode == txtVerificationCode.Text && securityA == txtSecurityA.Text)
            {
                changeStaus();
                Label3.Text = "Your Security Answer and Email have been verified successfully";
                Label3.ForeColor = System.Drawing.Color.Green;
                HyperLink1.Visible = true;

            }
            else
            {
                if (activationCode != txtVerificationCode.Text)
                {
                    Label3.Text = "Invalid activation code.";
                    Label3.ForeColor = System.Drawing.Color.Red;
                } 
                else
                {
                    Label3.Text = "Incorrect Security Question";
                    Label3.ForeColor = System.Drawing.Color.Red;
                }
                
            }

        }

        con.Close();

    }
}