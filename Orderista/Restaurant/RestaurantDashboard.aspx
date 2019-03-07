<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RestaurantDashboard.aspx.cs" Inherits="Restaurant_RestaurantDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Label ID="lblUserDetails" runat="server"></asp:Label>
        <br />
      <asp:Button class="backclrBtn" ID="logOutBtn" runat="server" Text="LogOut" OnClick="logOutBtn_Click" />
        <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

