<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="Restaurant_ResetPassword" MasterPageFile="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3 style="text-align:center"> Restaurant Reset Password</h3>

    
    <asp:Label ID="lblUserDetails" runat="server"></asp:Label>
        <br />
    
   <div>
             <table style="margin:auto">
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Enter New Password"></asp:Label></td>
                    <td><asp:TextBox class="inputText" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
     
                </tr>
                 <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Confirm Password"></asp:Label></td>
                    <td><asp:TextBox class="inputText" ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>

                 <tr>
                    <td><br />
                        <asp:Button class="actionBtn" ID="btnReset" runat="server" Text="Rest Password" OnClick="btnReset_Click" />
                        <asp:Button  class="backclrBtn" ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click"/> 
                        </td>
                    <td></td>
                </tr>
            </table>
            <center>
                     <asp:Label ID="lblPasswordMessage" runat="server" Text="Password field cannot be empty" ForeColor="Red"></asp:Label> <br />
                 <asp:Label ID="lblPasswordMatch" runat="server" Text="Passwords do not match" ForeColor="Red"></asp:Label>  <br />
                  <asp:Label ID="lblSuccess" runat="server"  ForeColor="Green"></asp:Label>
      
            </center>
        </div>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>


