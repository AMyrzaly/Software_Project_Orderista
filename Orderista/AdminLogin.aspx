<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="padding: 50px 0 100px;">
        <h2 style="text-align: center; margin-bottom: 30px;">Enter your credentials to login as Admin!</h2>

        <div class="login-form" style="width: 300px; margin: auto">
            <div class="form-group">
                <label class="label" for="txtUserName">Username</label>
                <asp:Label ID="lblUsernameMessage" runat="server" Text="Username field cannot be empty" ForeColor="Red"></asp:Label>
                <asp:TextBox class="form-control" ID="txtUsername" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label class="label" for="txtUserName">Password</label>
                <asp:Label ID="lblPasswordMessage" runat="server" Text="Password field cannot be empty" ForeColor="Red"></asp:Label>
                <asp:TextBox class="inputText" ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button class="actionBtn btn btn-primary" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                <asp:Button class="backclrBtn btn btn-outline-danger" ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            </div>

        </div>

        <div style="font-weight: bold; text-align: center;">
            <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect Username/Password" ForeColor="Red"></asp:Label>
        </div>
        <div style="font-weight: bold; text-align: center; display: none;">
            <asp:Label ID="TestLabel" runat="server" Text="" ForeColor=""></asp:Label>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="display: flex; justify-content: space-around; margin-bottom: 30px;">
        <a class="btn btn-sm btn-primary btn-lg active" href="customerLogin.aspx">Login as a Customer</a>
        <a class="btn btn-sm btn-primary btn-lg active" href="/Restaurant/RestaurantLogin.aspx">Login as Restaurant</a>
    </div>
</asp:Content>
