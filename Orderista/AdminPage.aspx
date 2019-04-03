<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="inputText">
        <h3>Admin Dashboard </h3>
    </div>
    <div style="position: relative">
        <asp:Label ID="UserAdmin" runat="server" Text=""></asp:Label>
        <asp:Button class="logout_btn" ID="btnLogout" Runat="server" Text="Logout" OnClick="btnLogout_Click" />
        <asp:RadioButtonList ID="AdminOrdersRestaurants" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" Width="325px">
            <asp:ListItem Selected="True" Value="Restaurants">Restaurants</asp:ListItem>
            <asp:ListItem Value="Orders">Orders</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="TableName" runat="server" Text=""></asp:Label>

       <%-- Data Table--%>
        <asp:GridView ID="RestaurantGrid" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="AddRestaurant" runat="server" Text="Add Restaurant" OnClick="AddRestaurant_Click" />&nbsp&nbsp
        <asp:Button ID="DeleteRestaurant" runat="server" Text="Delete Restaurant" OnClick="DeleteRestaurant_Click" />

    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>


