<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="SuccessPayment.aspx.cs" Inherits="SuccessPayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

        <div class="auto-style1">
            Thank you for placing an order with Orderista. <br />
            Enjoy your Meal !!!!<br />
            Note your Transaction ID:
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    <div class="auto-style1">
        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
