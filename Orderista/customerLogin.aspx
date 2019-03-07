<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customerLogin.aspx.cs" Inherits="customerLogin" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="inputText">
        <h2 style="text-align:center"> Hungy? Log in and place your order right now! </h2>
        <h3> </h3>
    </div>

    <div>
        <table style="margin: auto">
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Username &nbsp&nbsp&nbsp&nbsp&nbsp"></asp:Label></td>
                <td> <asp:TextBox class="inputText" ID="txtUserName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                <td><asp:TextBox class="inputText" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>

            <tr>
                <td><br/><asp:Button class="actionBtn"  ID="btnLog" runat="server" Text="Login" OnClick="btnLog_Click" /></td>
                <td><br/><asp:Button class="backclrBtn" ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click"/>
                         <asp:Button class="actionBtn" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
            </tr>

            <tr>
                <td><asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect Username/Password" ForeColor="Red"></asp:Label></td>
                <td><asp:Label ID="lblUsernameMessage" runat="server" Text="Incorrect Username" ForeColor="Red"></asp:Label></td>
                <td><asp:Label ID="lblPasswordMessage" runat="server" Text="Incorrect Password" ForeColor="Red"></asp:Label></td>
                </tr>
            <tr>
                <!--
                <td>
                    <asp:HyperLink ID="hyperLinkForgotPassword" runat="server" NavigateUrl="~/EmailVerification.aspx">Forgot Password?</asp:HyperLink>
                </td> -->
            </tr>
        </table>
    </div>

    <br />
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
