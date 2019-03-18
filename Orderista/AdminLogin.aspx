<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="inputText">
        <h3 style="text-align:center"> Log in as Admin </h3>
    </div>

    <div>
        <table style="margin:auto">
                    <tr>
                        <td> <%--      Username--%>
                         <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label> 
                         <asp:TextBox class="inputText" ID="txtUsername" runat="server"></asp:TextBox> </td>
                    </tr>

                    <tr>
                        <td><%--     Password--%>
                            <asp:Label ID="lvlPassword" runat="server" Text="Password&nbsp"></asp:Label>
                            <asp:TextBox class="inputText" ID="txtPassword" runat="server" TextMode="Password" ></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td><%--  Buttons--%>
                            </br><asp:Button class="actionBtn"  ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /> &nbsp
                            <asp:Button class="backclrBtn" ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />  </td>
  
                    </tr>
        </table>
    </div>

    <center>
        <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect Username/Password" ForeColor="Red"></asp:Label>
        <asp:Label ID="lblPasswordMessage" runat="server" Text="Password field cannot be empty" ForeColor="Red"></asp:Label>
        <asp:Label ID="lblUsernameMessage" runat="server" Text="Username field cannot be empty" ForeColor="Red"></asp:Label>
        <br />
        <asp:Label ID="TestLabel" runat="server" Text="" ForeColor=""></asp:Label>
    </center>

    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <a href="customerLogin.aspx">Login as a Customer</a>
    <a href="/Restaurant/RestaurantLogin.aspx">Login as Restaurant</a>
</asp:Content>