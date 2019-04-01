<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="OrdersPage.aspx.cs" Inherits="Orders_OrdersPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
     <div>
         <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click1" />
     </div>
        <!-- experimental new database-populated radio buttons -->
        <div style="text-align: center">
            <h3 style="font-weight: bold">Restaurant Selection</h3>
            <asp:RadioButtonList CssClass="restaurant_selection" ID="RBL_Restaurant" runat="server" OnSelectedIndexChanged="RestaurantButton_SelectedIndexChanged" AutoPostBack="True"></asp:RadioButtonList>
        </div>
        <div style="text-align: center; margin-top: 20px;">
            <h3 style="font-weight: bold">Menu</h3>
            <!-- when/if we add menu images, they'll go in here somewhere -->
            <asp:GridView CssClass="table table-bordered" id="MenuGridView" runat="server"
                      AutoGenerateColumns="false"
                      ShowFooter="true">
            <Columns>
                <asp:BoundField DataField="RestaurantName"
                      HeaderText="Restaurant" ReadOnly="true"/>
                <asp:BoundField DataField="Name"
                      HeaderText="Food" ReadOnly="true"/>
                <asp:BoundField DataField="Price"
                      HeaderText="Price"/>
                <asp:TemplateField HeaderText="Qty">
                   <ItemTemplate>
                       <asp:DropDownList ID="QtyList" runat="server">
                           <asp:ListItem Text="0" Value="0" Selected="True"></asp:ListItem>
                           <asp:ListItem Text="1" Value="1"></asp:ListItem>
                           <asp:ListItem Text="2" Value="2"></asp:ListItem>
                           <asp:ListItem Text="3" Value="3"></asp:ListItem>
                           <asp:ListItem Text="4" Value="4"></asp:ListItem>
                           <asp:ListItem Text="5" Value="5"></asp:ListItem>
                           <asp:ListItem Text="6" Value="6"></asp:ListItem>
                           <asp:ListItem Text="7" Value="7"></asp:ListItem>
                           <asp:ListItem Text="8" Value="8"></asp:ListItem>
                           <asp:ListItem Text="9" Value="9"></asp:ListItem>
                           <asp:ListItem Text="10" Value="10"></asp:ListItem>
                        <%--   <asp:ListItem Text="11" Value="11"></asp:ListItem>
                           <asp:ListItem Text="12" Value="12"></asp:ListItem>
                           <asp:ListItem Text="13" Value="13"></asp:ListItem>
                           <asp:ListItem Text="14" Value="14"></asp:ListItem>
                           <asp:ListItem Text="15" Value="15"></asp:ListItem>
                           <asp:ListItem Text="16" Value="16"></asp:ListItem>
                           <asp:ListItem Text="17" Value="17"></asp:ListItem>
                           <asp:ListItem Text="18" Value="18"></asp:ListItem>
                           <asp:ListItem Text="19" Value="19"></asp:ListItem>
                           <asp:ListItem Text="20" Value="20"></asp:ListItem>
                           <asp:ListItem Text="21" Value="21"></asp:ListItem>
                           <asp:ListItem Text="22" Value="22"></asp:ListItem>
                           <asp:ListItem Text="23" Value="23"></asp:ListItem>
                           <asp:ListItem Text="24" Value="24"></asp:ListItem>
                           <asp:ListItem Text="25" Value="25"></asp:ListItem>
                           <asp:ListItem Text="26" Value="26"></asp:ListItem>
                           <asp:ListItem Text="27" Value="27"></asp:ListItem>
                           <asp:ListItem Text="28" Value="28"></asp:ListItem>
                           <asp:ListItem Text="29" Value="29"></asp:ListItem>
                           <asp:ListItem Text="30" Value="30"></asp:ListItem>
                           <asp:ListItem Text="31" Value="31"></asp:ListItem>
                           <asp:ListItem Text="32" Value="32"></asp:ListItem>
                           <asp:ListItem Text="33" Value="33"></asp:ListItem>
                           <asp:ListItem Text="34" Value="34"></asp:ListItem>
                           <asp:ListItem Text="35" Value="35"></asp:ListItem>
                           <asp:ListItem Text="36" Value="36"></asp:ListItem>--%>
                       </asp:DropDownList>
                   </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            </asp:GridView>
        </div>
        <br />
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

     <div style="display: flex; justify-content: space-around">
        <asp:Timer ID="TimerTime" runat="server" Interval="1000" OnTick="TimerTime_Tick">
        </asp:Timer>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <label>Current time:</label>

            <asp:Label ID="lblDateToday" runat="server"></asp:Label>
                <asp:Label ID="lblTime" runat="server"></asp:Label>
        </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="TimerTime" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
       
        <div id="ReadyTime">
        Ready to pick up in the next&nbsp;
        <asp:DropDownList ID="DelayDropDownList" runat="server" OnSelectedIndexChanged="DelayDropDownList_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Text="Select" Value="0" ></asp:ListItem>
            <asp:ListItem Text="20:00" Value="20" ></asp:ListItem>
            <asp:ListItem Text="25:00" Value="25"></asp:ListItem>
            <asp:ListItem Text="30:00" Value="30"></asp:ListItem>
            <asp:ListItem Text="35:00" Value="35"></asp:ListItem>
            <asp:ListItem Text="40:00" Value="40"></asp:ListItem>
            <asp:ListItem Text="45:00" Value="45"></asp:ListItem>
            <asp:ListItem Text="50:00" Value="50"></asp:ListItem>
            <asp:ListItem Text="55:00" Value="55"></asp:ListItem>
            <asp:ListItem Text="60:00" Value="60"></asp:ListItem>
        </asp:DropDownList>
       &nbsp;minutes.<br />

        Your order will be ready at <asp:Label ID="lblPickUptime" runat="server" Text=""></asp:Label>
        </div>
    </div>
     <asp:Button CssClass="order_button mx-auto btn btn-dark" ID="PlaceOrder" runat="server" OnClientClick="OnOrderButtonClicked" Text="Place Order" OnClick="OnOrderButtonClicked" />
     <asp:Label ID="lblMsg" runat="server" ></asp:Label>

        <div>
            Order History
            <br />
            <br />
            <asp:GridView id="OrderGridView" runat="server"
                      AutoGenerateColumns="False"
                      AutoGenerateRows="false">
            <Columns>
                <asp:BoundField DataField="OrderID"
                      HeaderText="Order ID" ReadOnly="true"/>
                <asp:BoundField DataField="RestaurantName"
                      HeaderText="Restaurant" ReadOnly="true"/>
                <asp:BoundField DataField="CreationTime"
                      HeaderText="Date & Time"/>
                <asp:BoundField DataField="Subtotal"
                      HeaderText="Subtotal"/>
                <asp:BoundField DataField="Tax"
                      HeaderText="Tax"/>
                <asp:BoundField DataField="ServiceFee"
                      HeaderText="Service Fee"/>
                <asp:BoundField DataField="Total"
                      HeaderText="Total Cost"/>
                <asp:BoundField DataField="Status"
                      HeaderText="Status"/>
            </Columns>

            </asp:GridView>
            <br />
            <!--<u>Selected Order:</u> -->
            <br />
            <!-- change of plans, I said DetailsView a lot, but it looks like this needed to be a GridView b/c it has more than one entry -->
            <asp:GridView ID="OrderItemDetailsView" runat="server" AutoGenerateRows="false">
                <Columns>
                    <asp:BoundField DataField="MenuItemName" HeaderText="Name" HeaderStyle-Font-Bold="true" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" HeaderStyle-Font-Bold="true" />
                    <asp:BoundField DataField="Price" HeaderText="Price" HeaderStyle-Font-Bold="true" />
                    <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" HeaderStyle-Font-Bold="true" />
                </Columns>
            </asp:GridView>
        </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
