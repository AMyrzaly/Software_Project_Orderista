<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding: 50px 0 100px; position: relative;">
        <div class="inputText" style="text-align: center">
            <h3>Admin Dashboard</h3>
        </div>
        <div>
            <div style="position: absolute; right: 20px; top: 50px;">
                <span style="font-weight: bold; color: black; padding-right: 10px;">
                    <asp:Label ID="UserAdmin" runat="server" Text=""></asp:Label>
                </span>
                <asp:Button class="logout_btn btn btn-outline-warning" ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
            </div>
            <div style="text-align:center">
                      <asp:HyperLink ID="hypTutorial" runat="server" ForeColor="Blue" NavigateUrl="~/File/AdminManual.pdf" Target="_blank">Need Help?? Website Tutorial</asp:HyperLink>
    
            </div>
            <asp:RadioButtonList ID="AdminOrdersRestaurants" CssClass="admin_restaurant_selection" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" Width="325px">
                <asp:ListItem Selected="True" Value="Restaurants">Restaurants</asp:ListItem>
                <asp:ListItem Value="Orders">Orders</asp:ListItem>
            </asp:RadioButtonList>

            <%-- Data Table--%>
            <div style="width: 800px; margin: auto;">
                <div style="font-weight: bold; color: black; font-size: 20px !important;">
                    <asp:Label ID="TableName" runat="server" Text=""></asp:Label>
                </div>
                <asp:GridView CssClass="table table-bordered table-dark" ID="RestaurantGrid" runat="server">
                </asp:GridView>
            </div>

            <div style="text-align: center; margin-top: 10px;">
                <asp:Button ID="AddRestaurant" runat="server" CssClass="btn btn-primary" Text="Add Restaurant" OnClick="AddRestaurant_Click" />
                <asp:Button ID="DeleteRestaurant" runat="server" CssClass="btn btn-outline-danger" Text="Delete Restaurant" OnClick="DeleteRestaurant_Click" />
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>


