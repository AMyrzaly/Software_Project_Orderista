<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmailVerification.aspx.cs" Inherits="EmailVerification" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="padding: 50px 0 100px;">
        <div style="text-align: center">
            <div style="color: black">
                <asp:label id="Label2" runat="server" text="Label"></asp:label>
            </div>
        </div>

        <div style="display: flex; justify-content: space-between; flex: 1; width: 800px; margin: 30px auto 20px;">
            <div class="form-group">
                <label for="txtVerificationCode">Your Activation Code</label>
                <asp:textbox class="form-control" id="txtVerificationCode" runat="server"></asp:textbox>
            </div>
            <div class="form-group" style="display: flex; flex-direction: column; justify-content: flex-start">
                <label style="0 5px 0" for="DropDownList1">Security Question</label>
                <asp:dropdownlist id="DropDownList1" class="form-control" runat="server">
                    <asp:ListItem>My Mother&#39;s Maiden Name?</asp:ListItem>
                    <asp:ListItem>My first pet name?</asp:ListItem>
                    <asp:ListItem>My School Name?</asp:ListItem>
                    <asp:ListItem>My Best Friend&#39;s Name?</asp:ListItem>
                    <asp:ListItem>My Favourite Restaurant?</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="form-group">
                <label for="txtSecurityA">Security Question Answer</label>
                <asp:textbox class="form-control" id="txtSecurityA" runat="server"></asp:textbox>
            </div>
        </div>
        <div style="text-align: center;">
            <div class="form-group" style="margin: auto">
                <asp:button class="actionBtn btn btn-primary" id="btnVerifyCode" runat="server" text="Verify" onclick="btnVerifyCode_Click" />
            </div>
            <div style="font-weight: bold">
                <asp:label id="Label3" runat="server" forecolor="green"></asp:label>
                <asp:hyperlink id="HyperLink1" runat="server" navigateurl="~/customerLogin.aspx">Go Back to Login</asp:hyperlink>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
