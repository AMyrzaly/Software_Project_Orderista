<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPasswordPage.aspx.cs" Inherits="ForgotPasswordPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Enter your email below to send the Activation Code"></asp:Label>
          
        </div>
        <div>
            <asp:TextBox ID="txtEmail" runat="server" Width="295px"></asp:TextBox>
        </div>
        <div>
              <asp:Button ID="btnForgotPwd" runat="server" Text="Click Here To Send Activation Code" OnClick="btnForgotPwd_Click" />
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

