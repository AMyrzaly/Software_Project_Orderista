<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPasswordPage.aspx.cs" Inherits="ForgotPasswordPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding: 50px 0 100px; position: relative;">
        <div style="display: flex; flex-direction: column; align-items: center; justify-content: center">
            <div style="font-weight: bold; color: #000;">
                <asp:Label ID="Label1" runat="server" Text="Enter your email below to send the Activation Code"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" Width="295px"></asp:TextBox>
            </div>
            <div style="margin-top: 30px;">
                <asp:Button ID="btnForgotPwd" CssClass="btn btn-primary" runat="server" Text="Click Here To Send Activation Code" OnClick="btnForgotPwd_Click" />
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

