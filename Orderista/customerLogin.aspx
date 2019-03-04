<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customerLogin.aspx.cs" Inherits="customerLogin" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table style="margin: auto; border: 5px solid white">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                 </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" /></td>
                <td>
                    <asp:Button ID="btnLog" runat="server" Text="Login" OnClick="btnLog_Click" /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect Username/Password" ForeColor="Red"></asp:Label></td>
                <td>
                    <asp:Label ID="lblUsernameMessage" runat="server" Text="Incorrect Username" ForeColor="Red"></asp:Label></td>
                <td>
                    <asp:Label ID="lblPasswordMessage" runat="server" Text="Incorrect Password" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl3" runat="server" Text="Not an existing user"></asp:Label></td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
            </tr>
            <tr>
                <!--
                <td>
                    <asp:HyperLink ID="hyperLinkForgotPassword" runat="server" NavigateUrl="~/EmailVerification.aspx">Forgot Password?</asp:HyperLink>
                </td> -->


                
            </tr>

        </table>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <a href="AdminLogin.aspx">Login as Admin</a>
    <a href="/Restaurant/RestaurantLogin.aspx">Login as Restaurant</a>
</asp:Content>


<!-- Testing --> 