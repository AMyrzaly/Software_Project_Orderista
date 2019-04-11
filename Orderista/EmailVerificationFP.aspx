<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EmailVerificationFP.aspx.cs" Inherits="EmailVerificationFP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 198px;
        }

        .auto-style2 {
            width: 302px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding: 50px 0 50px;">
        <div style="display: flex; flex-direction: column;">
            <div style="color: #000; text-align: center">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </div>
            <div style="text-align: center; margin-top: 20px; margin-bottom: 20px; display: flex; flex-direction: column; align-items: center; color: #000 !important">
                <asp:Label ID="Label1" runat="server" Text="Activation Code: "></asp:Label>
                <asp:TextBox ID="txtVerificationCode" Width="300" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div style="text-align: center">
                <asp:Button ID="btnVerifyCode" CssClass="btn btn-primary" runat="server" Text="Verify" OnClick="btnVerifyCode_Click" />
            </div>
        </div>

        <p style="text-align: center; margin-top: 30px;">
            <asp:Label ID="Label3" runat="server" ForeColor="green"></asp:Label>
        </p>

        <div style="display: flex; flex-direction: column; width: 300px; margin: 0 auto;">
            <div style="text-align: center; width: 300px; margin-bottom: 20px; color: #000;">
                <asp:Label ID="Label4" runat="server" Text="Security Question: "></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                    <asp:ListItem>My Mother&#39;s Maiden Name?</asp:ListItem>
                    <asp:ListItem>My first pet name?</asp:ListItem>
                    <asp:ListItem>My School Name?</asp:ListItem>
                    <asp:ListItem>My Best Friend&#39;s Name?</asp:ListItem>
                    <asp:ListItem>My Favourite Restaurant?</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div style="text-align: center; width: 300px; margin-bottom: 20px; color: #000;">
                <asp:Label ID="Label5" runat="server" Text="Answer: "></asp:Label>
                 <asp:TextBox ID="txtSecurityA" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div style="text-align: center">
                <asp:Button ID="btnVerifySecurityAnswer" CssClass="btn btn-primary" runat="server" Text="Verify" OnClick="btnVerifySecurityAnswer_Click" />
            </div>
        </div>

        <div style="text-align: center; width: 200px; margin: 0 auto; margin-top: 20px;">
            <asp:Button ID="btnPwdReset" CssClass="btn btn-outline-primary" runat="server" OnClick="txtPwdReset_Click" Text="Reset Password" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

