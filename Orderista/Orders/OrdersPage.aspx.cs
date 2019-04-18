using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Orders_OrdersPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TimeSpan start = TimeSpan.Parse("08:00"); // 8 AM - changed for development purposes
        TimeSpan end = TimeSpan.Parse("21:00");   // 9 PM
        TimeSpan now = DateTime.Now.TimeOfDay;

        //Checking for condition if start time is less than end time
        if (start <= end)
        {
            // start and stop times are in the same day, if so show the menu
            if (now >= start && now <= end)
            {

                if (!IsPostBack)
                {
                    // placing orders
                    // bind the list of restaurants to RBL_Restaurant
                    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("select DISTINCT Restaurant_Name from Restaurants", connection);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    connection.Close();
                    RBL_Restaurant.DataSource = ds;
                    RBL_Restaurant.DataTextField = "Restaurant_Name";

                    RBL_Restaurant.DataBind();

                    // placing orders
                    // set default restaurant selection on first load
                    string default_restaurant = "";
                    // default_restaurant = "Main Cafeteria"; // default with original radio buttons
                    // determine default using the new radio button list
                    if (RBL_Restaurant.Items.Count > 0)
                    {
                        RBL_Restaurant.SelectedIndex = 0;
                        default_restaurant = RBL_Restaurant.SelectedValue;
                    }

                    BindOrderGridView(); // order history
                    BindMenuGridView(default_restaurant); // placing orders
                }
            }
            //If start and end or not the specified time show message
            else
            {
                // current time is between start and stop
                lblMsg.Text = "Sorry !!!! Orders can only be placed during restaurant business hours between 8:00 AM and 9:00 PM";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                DelayDropDownList.Enabled = false;
                PlaceOrder.Enabled = false;
            }
        }
       
        
    }

    private string GetConnectionString()
    {
        return System.Configuration.ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString;
    }

    // placing orders
    // this populates the menu for the selected restaurant
    #region Bind Menu GridView
    private void BindMenuGridView(string restaurant)
    {
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
        try
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT RestaurantName, Name, Price FROM Menu_Items WHERE Visible = 1 AND InStock = 1 AND RestaurantName = @restaurant");
            cmd.Parameters.AddWithValue("@restaurant", restaurant);
            cmd.Connection = connection;
            SqlDataAdapter sqlData = new SqlDataAdapter(cmd);

            sqlData.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                MenuGridView.DataSource = dt;
                MenuGridView.DataBind();
            }
        }
        catch (SqlException ex)
        {
            string msg = "Fetch Error: ";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            connection.Close();
        }
    } // BindMenuGridView
    #endregion

    // order history
    #region Bind Order GridView
    private void BindOrderGridView()
    {
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
        try
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT Orders.OrderID, Min(Order_Items.RestaurantName) AS RestaurantName, MIN(CreationTime) AS CreationTime, "
                + "MIN(Semitotal) AS Subtotal, Min(Taxes) AS Tax, MIN(ServiceCharge) AS ServiceFee, MIN(Total) AS Total, MIN(Orders.Status) AS Status "
                + "FROM Orders, Order_Items WHERE Orders.CentennialEmail = @username "
                + "AND Orders.OrderID = Order_Items.OrderID GROUP BY Orders.OrderID");
            cmd.Parameters.AddWithValue("@username", Session["username"]);
            cmd.Connection = connection;
            SqlDataAdapter sqlData = new SqlDataAdapter(cmd);

            sqlData.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                OrderGridView.DataSource = dt;
                OrderGridView.DataBind();
            }
        }
        catch (SqlException ex)
        {
            string msg = "Fetch Error: ";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            connection.Close();
        }
    }
    #endregion

    // order history
    // this updates the food list gridview to show the food items that are part of the selected row in the order history
    protected void OnSelectedIndexChanged(Object sender, EventArgs e)
    {
        int orderID = Convert.ToInt32(OrderGridView.SelectedRow.Cells[0].Text);

        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OrderistaConnectionString"].ConnectionString);
        try
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT MenuItemName, Quantity, Price, Subtotal FROM Order_Items WHERE OrderID = @orderID");
            cmd.Parameters.AddWithValue("@orderID", orderID);
            cmd.Connection = connection;
            SqlDataAdapter sqlData = new SqlDataAdapter(cmd);

            //Populate the grid view 
            sqlData.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                OrderItemDetailsView.DataSource = dt;
                OrderItemDetailsView.DataBind();
            }
        }
        catch (SqlException ex)
        {
            string msg = "Fetch Error: ";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            connection.Close();
        }
    } // OnSelectedIndexChanged

    // placing orders
    // this updates the restaurant selection
    // used by the old hard-coded radio buttons
    /*
    protected void RadioButton_CheckedChanged(object sender, EventArgs e)
    {
        string restaurant;

        if (RB_EpicBurger.Checked == true)
        {
            restaurant = "Epic Burger";
        }
        else if (RB_Cafe.Checked == true)
        {
            restaurant = "Main Cafeteria";
        }
        else if (RB_PizzaPizza.Checked == true)
        {
            restaurant = "Pizza Pizza";
        }
        else if (RB_Poutinerie.Checked == true)
        {
            restaurant = "Smokes Poutinerie";
        }
        else if (RB_Subway.Checked == true)
        {
            restaurant = "Subway";
        }
        else if (RB_Timmies.Checked == true)
        {
            restaurant = "Tim Hortons";
        }
        else
        {
            restaurant = "Main Cafeteria";
        }

        // update the menu
        BindMenuGridView(restaurant);
    } // RadioButton_CheckedChanged
    */

    // placing orders
    // this updates restaurant selection
    // used by the new database-populated radio button list

        //When user selects the Restaurants check and bind the grid view with that particular menu
    protected void RestaurantButton_SelectedIndexChanged(object sender, EventArgs e)
    {
        string restaurant = RBL_Restaurant.SelectedValue;

        BindMenuGridView(restaurant);
    }

    // placing orders
    // this submits the order details to the OrderConfirm page
    protected void OnOrderButtonClicked(Object sender, EventArgs e)
    {
        string parameters = ""; // for the request URL
        int paramIndex = 1;
        int time = Convert.ToInt32(DelayDropDownList.Items[DelayDropDownList.SelectedIndex].Value);


        foreach (GridViewRow row in MenuGridView.Rows)
            {
                // find the selection from the quantity drop-down list
                DropDownList Qty = (DropDownList)row.FindControl("QtyList");
                int qty = Convert.ToInt32(Qty.Items[Qty.SelectedIndex].Value);
          
            // we want all the items with non-zero quantities
            if (qty > 0)
                {
                    // &food1=fish&qty1=1&food2=chips&qty2=1
                    parameters += "&food" + paramIndex + "=" + HttpUtility.UrlEncode(row.Cells[1].Text) + "&qty" + paramIndex + "=" + qty;
                    paramIndex++;
                }
            }

            // do we have any items to purchase at all?
            if (parameters.Length > 0 )
            {
                // first parameters in the list are restaurant name and delay time, followed by our list of ingredient-quantity pairs
                parameters = "?restaurant=" + HttpUtility.UrlEncode(MenuGridView.Rows[0].Cells[0].Text)
                           + "&delay=" + HttpUtility.UrlEncode(DelayDropDownList.Items[DelayDropDownList.SelectedIndex].Value)
                           + parameters;
                if(time>0)
                {

                    string request = "/Orders/OrderConfirm.aspx" + parameters;
                    // go to order confirm page
                    Response.Redirect(request);
                }          
                else
                {
                    lblMsg.Text = "No time selected. Please select a time to pickup your order.";
                    lblMsg.ForeColor = System.Drawing.Color.Red;

                }
            }
            else
            {
                // TODO hey front-end people, do we want an error message if there's nothing in the order, or just do nothing?
                // TODO add empty text area thingy to put error message in
                lblMsg.Text = "No menu items selected in order.  Please select quantities to order from the drop-down lists.";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }

         

     


    } // OnOrderButtonClicked


    //Start the two minute window
    protected void TimerTime_Tick(object sender, EventArgs e)
    {
        lblTime.Text = DateTime.Now.ToString("hh:mm:ss");
    }

    //Checking when the user selected the pickup of the food
    protected void DelayDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
                int selectedTime = 0;
                int.TryParse(DelayDropDownList.SelectedValue, out selectedTime);
                DateTime pickupTime = DateTime.Now.AddMinutes(selectedTime);
                lblPickUptime.Text = pickupTime.ToString("hh:mm");
           
    }



    protected void btnLogout_Click1(object sender, EventArgs e)
    {
        //Clears the page
        Session.Abandon();
        //returns to login page
        Response.Redirect("/customerLogin.aspx");
    }
}