<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RestaurantLogin.aspx.cs" Inherits="RestaurantLogin" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <div>
             <table style="margin:auto;border:5px solid white">
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
                    <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                    <td><asp:Label ID="lblUsernameMessage" runat="server" Text="Incorrect Username" ForeColor="Red"></asp:Label></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                    <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td><asp:Label ID="lblPasswordMessage" runat="server" Text="Incorrect Password" ForeColor="Red"></asp:Label></td>
                </tr>
                 <tr>
                    <td><asp:Button ID="btnClear" runat="server" Text="clear" OnClick="btnClear_Click"/></td>
                    <td><asp:Button ID="btnLog" runat="server" Text="Login" OnClick="btnLog_Click"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect Username/Password" ForeColor="Red"></asp:Label></td>
                    
                </tr>
               

            </table>
        </div>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <a href="../customerLogin.aspx">Login as a Customer</a>
    <a href=../AdminLogin.aspx">Login as Admin</a>
</asp:Content>

