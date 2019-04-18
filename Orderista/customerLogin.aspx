<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customerLogin.aspx.cs" Inherits="customerLogin" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 310px;
        }

        .auto-style2 {
            text-align: center;
        }

        .auto-style3 {
            text-align: center;
            width: 310px;
        }

        .auto-style4 {
            text-align: left;
            width: 310px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="padding: 50px 0 100px;">
        <h2 style="text-align: center; margin-bottom: 10px;">Hungry? Log in and place your order right now! </h2>
        <p style="text-align: center; margin-bottom: 20px;">
            <span style="padding-right: 10px; font-weight: 400; color: black;">Not an Existing User?</span>
            <asp:Button class="actionBtn btn btn-secondary btn-sm" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
        </p>
        <p style="text-align: center;">
                    <asp:HyperLink ID="hypTutorial" runat="server" ForeColor="Blue" NavigateUrl="~/File/UserManuals.pdf" Target="_blank">Need Help?? Website Tutorial</asp:HyperLink>
    
        </p>

        <div class="login-form" style="width: 300px; margin: auto">
            <div class="form-group">
                <asp:Label ID="lblUsernameMessage" runat="server" Text="Username field cannot be empty" ForeColor="Red"></asp:Label>
                <asp:TextBox class="form-control" ID="txtUserName" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label class="label" for="txtUserName">Password</label>
                <asp:Label ID="lblPasswordMessage" runat="server" Text="Password field cannot be empty" ForeColor="Red"></asp:Label>
                <asp:TextBox class="inputText" ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button class="actionBtn btn btn-primary" ID="Button1" runat="server" Text="Login" OnClick="btnLog_Click" />
            </div>

            <div style="font-weight: bold">
                <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect Username/Password" ForeColor="Red"></asp:Label>
            </div>

            <div class="form-group" style="font-weight: bold;">
                <asp:HyperLink ID="hyperLinkForgotPassword" runat="server" NavigateUrl="~/ForgotPasswordPage.aspx">Forgot Password?</asp:HyperLink>
            </div>
        </div>
        <%--        <table style="margin: auto">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Username &nbsp&nbsp&nbsp&nbsp&nbsp"></asp:Label></td>
                <td class="auto-style1">
                    <asp:TextBox class="inputText" ID="txtUserName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                <td class="auto-style1">
                    <asp:TextBox class="inputText" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="text-left">
                    <asp:HyperLink ID="hyperLinkForgotPassword" runat="server" NavigateUrl="~/ForgotPasswordPage.aspx">Forgot Password?</asp:HyperLink>
                </td>
                <td class="auto-style4">
                    <asp:Button class="actionBtn" ID="btnLog" runat="server" Text="Login" OnClick="btnLog_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Not an Existing User?&nbsp </td>
                <td class="auto-style4">
                    <asp:Button class="actionBtn" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
            </tr>
        </table>--%>

        <%--    <br />
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
    </div>--%>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="display: flex; justify-content: space-around; margin-bottom: 30px;">
        <a class="btn btn-sm btn-primary btn-lg active" href="AdminLogin.aspx">Login as Admin</a>
        <a class="btn btn-sm btn-primary btn-lg active" href="/Restaurant/RestaurantLogin.aspx">Login as Restaurant</a>
    </div>
</asp:Content>
