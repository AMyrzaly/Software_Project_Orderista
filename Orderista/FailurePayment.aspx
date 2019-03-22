<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="FailurePayment.aspx.cs" Inherits="FailurePayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div>
            Sorry Your Transaction has Failed !!!<br />
            <br />
            Your Transaction ID is :
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
     <div>
         <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
     </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
