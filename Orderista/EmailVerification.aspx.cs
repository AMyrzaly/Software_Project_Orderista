using System;
using System.Collections.Generic;
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
        Label2.Text = "Your Email is : " + Request.QueryString["emailadd"].ToString() + ", Kindly check your Mail Inbox for Activation Code ";
        HyperLink1.Visible = false;
    }

    protected void btnVerifyCode_Click(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=LAPTOP-I8AD7C8G\\MSSQLSERVER2017 ;Initial Catalog=Orderista;Integrated Security=True";
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
            activationCode = ds.Tables[0].Rows[0]["Activationcode"].ToString();

            if (activationCode == txtVerificationCode.Text)
            {
                changeStaus();
                Label3.Text = "Your Email has been verified successfully";
                Label3.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label3.Text = "You have entered invalid Code, Kindly check your Mail Inbox";
                Label3.ForeColor = System.Drawing.Color.Red;
            }

        }

        con.Close();
    }

    private void changeStaus()
    {
        con.ConnectionString = "Data Source=LAPTOP-I8AD7C8G\\MSSQLSERVER2017 ;Initial Catalog=Orderista;Integrated Security=True";
        String updateData = "Update CreateAccountCustomer set Status='Verified' where CentennialEmail='" + Request.QueryString["emailadd"] + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updateData;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

    }


    protected void btnVerifySecurityAnswer_Click(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=LAPTOP-I8AD7C8G\\MSSQLSERVER2017 ;Initial Catalog=Orderista;Integrated Security=True";
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
            String securityA;
            securityA = ds.Tables[0].Rows[0]["SecurityA"].ToString();

            if (securityA == txtSecurityA.Text)
            {

                Label3.Text = "Your Security Answer has been verified successfully";
                Label3.ForeColor = System.Drawing.Color.Green;
                HyperLink1.Visible = true;

            }
            else
            {
                Label3.Text = "You have entered Wrong Answer or have selected Wrong Question, Kindly check and try again";
                Label3.ForeColor = System.Drawing.Color.Red;
            }

        }

        con.Close();
    }
}