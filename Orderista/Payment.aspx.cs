using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FailurePayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        Label1.Text = Request.Form["txnid"];
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        //Clears the page
        Session.Abandon();
        //returns to login page
        Response.Redirect("/customerLogin.aspx");
    }
}