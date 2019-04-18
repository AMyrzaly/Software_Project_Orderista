<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="Payment.aspx.cs" Inherits="FailurePayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        
           <div class="auto-style1" style="text-align:center">
            Thank you for placing an order with Orderista. <br />
            Enjoy your Meal !!!!<br />
            <br />
            Your Transaction ID is :
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
     <div style="text-align:center">
      <asp:Button ID="btnLogout" CssClass="btn btn-primary" runat="server" Text="Logout" Width="136px" OnClick="btnLogout_Click" />
  
       
     </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
