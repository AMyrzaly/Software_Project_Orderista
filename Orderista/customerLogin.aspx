<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customerLogin.aspx.cs" Inherits="customerLogin" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 310px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="inputText">
        <h2 style="text-align:center"> Hungry? Log in and place your order right now! </h2>
        <h3> </h3>
    </div>

    <div>
        <table style="margin: auto">
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Username &nbsp&nbsp&nbsp&nbsp&nbsp"></asp:Label></td>
                <td class="auto-style1"> <asp:TextBox class="inputText" ID="txtUserName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                <td class="auto-style1"><asp:TextBox class="inputText" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:Button class="actionBtn"  ID="btnLog" runat="server" Text="Login" OnClick="btnLog_Click" /><br /></td>
                <td class="auto-style2">New User? <asp:Button class="actionBtn" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
            </tr>
                <!--
                <td>
                    <asp:HyperLink ID="hyperLinkForgotPassword" runat="server" NavigateUrl="~/EmailVerification.aspx">Forgot Password?</asp:HyperLink>
                </td> -->
                </table>
    </div>
    <center>
        <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect Username/Password" ForeColor="Red"></asp:Label>
        <asp:Label ID="lblPasswordMessage" runat="server" Text="Password field cannot be empty" ForeColor="Red"></asp:Label>
        <asp:Label ID="lblUsernameMessage" runat="server" Text="Username field cannot be empty" ForeColor="Red"></asp:Label>
    </center>

    <br />
    <div style="display: flex; justify-content: space-between; margin: 20px 0;">
        <div style="display: flex; flex-direction: column; justify-content: center">
            <p>Everything is prepared within 45 minutes.</p>
            <p>Fresh and tasty food for a great price</p>
            <p>Fantastic service and unforgetable types of dishes</p>
        </div>
        <div>
            <asp:Image ID="cheif_image" runat="server" Height="400" Width="568" ImageUrl="https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/01/09/15/michelin-chef.jpg?w968h681" />
        </div>
    </div>
    <div>
        <table style="margin: auto">
            <tr>
                <td><asp:Image ID="timLogo" runat="server" Height="200" Width="200" ImageUrl="~/Images/Logo-tim.png" />          </td>
                <td><asp:Image ID="subwayLogo" runat="server" Height="200" Width="200" ImageUrl="~/Images/Logo-subway.png" />    </td>
                <td><asp:Image ID="pizzaLogo" runat="server" Height="200" Width="200" ImageUrl="~/Images/Logo-pizzapizza.png" /> </td>
                <td><asp:Image ID="timLogo2" runat="server" Height="200" Width="200" ImageUrl="~/Images/Logo-tim.png" />         </td>
                <td><asp:Image ID="subwayLogo2" runat="server" Height="200" Width="200" ImageUrl="~/Images/Logo-subway.png" />   </td>
            </tr>
        </table>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <a href="AdminLogin.aspx">Login as Admin</a>
    <a href="/Restaurant/RestaurantLogin.aspx">Login as Restaurant</a>
</asp:Content>
