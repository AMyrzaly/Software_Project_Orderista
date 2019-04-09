<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RestaurantLogin.aspx.cs" Inherits="RestaurantLogin" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="padding: 50px 0 100px;">
        <h3 style="text-align: center; margin-bottom: 30px;">Restaurant Login page</h3>

        <div style="font-weight: bold; text-align: center;">
            <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect Username/Password" ForeColor="Red"></asp:Label>
        </div>

        <div class="login-form">
            <div class="form-group" style="width: 300px; margin: auto; padding-bottom: 1rem">
                <label class="label" for="txtUserName">Username</label>
                <asp:Label ID="lblUsernameMessage" runat="server" Text="Username field cannot be empty" ForeColor="Red"></asp:Label>
                <asp:TextBox class="form-control" ID="txtUserName" runat="server"></asp:TextBox>
            </div>

            <div class="form-group" style="width: 300px; margin: auto; padding-bottom: 1rem">
                <label class="label" for="txtPassword">Password</label>
                <asp:Label ID="lblPasswordMessage" runat="server" Text="Password field cannot be empty" ForeColor="Red"></asp:Label>
                <asp:TextBox class="form-control" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <div class="form-group" style="text-align: center;">
                <asp:Button class="actionBtn btn btn-primary" ID="btnLog" runat="server" Text="Login" OnClick="btnLog_Click" />
                <asp:Button class="backclrBtn btn btn-outline-danger" ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            </div>

        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <a href="../customerLogin.aspx">Login as a Customer</a>
    <a href="../AdminLogin.aspx">Login as Admin</a>
</asp:Content>

