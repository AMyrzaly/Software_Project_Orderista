using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class ResetPassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        con.Open();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string email = Request.QueryString["emailadd"];
        SqlDataAdapter da = new SqlDataAdapter("update tbl_CustomerLogin set Password='" + txtPwd.Text + "'where Username='" + email + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        lblSucess.Text = "Password Reset Successfully";

    }
}