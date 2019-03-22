using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CountdownWindow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            Session["Timer"] = DateTime.Now.AddMinutes(2).ToString();
        }
    }

    protected void timer_Tick(object sen, EventArgs e)
    {
        if (DateTime.Compare(DateTime.Now, DateTime.Parse(Session["Timer"].ToString())) < 0)
        {
            litMsg.Text = "Time Left to Cancel : " + ((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalMinutes)
                .ToString() + " Minutes " + (((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalSeconds) % 60)
                  .ToString() + " Seconds ";

        }
        else
        {
            litMsg.Text = "Time Expired...";

            string total = Request.QueryString["price"].ToString();

             Response.Redirect("BuyNow.aspx?price=" + total);
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
        connection.Open();
        // Delete order when cancelled
        SqlCommand cmd = new SqlCommand("delete from Order_Items where CentennialEmail = @username", connection);
        cmd.Parameters.AddWithValue("@username", Session["username"]);
        cmd.ExecuteNonQuery();

        SqlCommand cmd1 = new SqlCommand("delete from Orders where CentennialEmail = @username", connection);
        cmd1.Parameters.AddWithValue("@username", Session["username"]);
        cmd1.ExecuteNonQuery();

        Response.Redirect("/Orders/OrdersPage.aspx");
    }

    protected void btnProceed_Click(object sender, EventArgs e)
    {
        string total = Request.QueryString["price"].ToString();

         Response.Redirect("BuyNow.aspx?price=" + total);
    }
}