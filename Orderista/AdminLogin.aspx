<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <asp:Label ID="lblTitle" runat="server" Text="Admin Login"></asp:Label>
        <br />
  <%--      Username--%>
        <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <br />
   <%--     Password--%>
        <asp:Label ID="lvlPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ></asp:TextBox>
        <br />
      <%--  Buttons--%>
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /> &nbsp
        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
        <br />
        <%--For Testing--%>
        <asp:Label ID="TestLabel" runat="server" Text=""></asp:Label>
    
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <a href="customerLogin.aspx">Login as a Customer</a>
    <a href="/Restaurant/RestaurantLogin.aspx">Login as Restaurant</a>
</asp:Content>

<%-- Test --%>

