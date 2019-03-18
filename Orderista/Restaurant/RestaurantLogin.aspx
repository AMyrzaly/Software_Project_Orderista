<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RestaurantLogin.aspx.cs" Inherits="RestaurantLogin" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <h3 style="text-align:center"> Restaurant Login page </h3>

   <div>
             <table style="margin:auto">
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Username &nbsp&nbsp&nbsp&nbsp"></asp:Label></td>
                    <td><asp:TextBox class="inputText" ID="txtUserName" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                    <td><asp:TextBox class="inputText" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>

                 <tr>
                    <td><br />
                        <asp:Button class="actionBtn" ID="btnLog" runat="server" Text="Login" OnClick="btnLog_Click"/>
                        <asp:Button  class="backclrBtn" ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click"/> 
                        </td>
                    <td></td>
                </tr>
            </table>
            <center>
                     <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect Username/Password" ForeColor="Red"></asp:Label>
                     <asp:Label ID="lblPasswordMessage" runat="server" Text="Password field cannot be empty" ForeColor="Red"></asp:Label>
                     <asp:Label ID="lblUsernameMessage" runat="server" Text="Username field cannot be empty" ForeColor="Red"></asp:Label>
            </center>
        </div>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <a href="../customerLogin.aspx">Login as a Customer</a>
    <a href="../AdminLogin.aspx">Login as Admin</a>
</asp:Content>

