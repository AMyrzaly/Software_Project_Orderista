<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="inputText">
        <h3>Admin Page </h3>
    </div>
    <div style="position: relative">
        <asp:Label ID="UserAdmin" runat="server" Text=""></asp:Label>
        <asp:Button class="logout_btn" ID="btnLogout" Runat="server" Text="Logout" OnClick="btnLogout_Click" />
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>


