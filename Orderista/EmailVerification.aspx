<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmailVerification.aspx.cs" Inherits="EmailVerification"  MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 48px;
        }
    </style>
    </asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table>
            <tr>
                <td colspan="2"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Your Activation Code"></asp:Label></td>
                <td><asp:TextBox ID="txtVerificationCode" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td><asp:Label ID="Label4" runat="server" Text="Security Question"></asp:Label></td>
                <td>
                   
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>My Mother&#39;s Maiden Name?</asp:ListItem>
                        <asp:ListItem>My first pet name?</asp:ListItem>
                        <asp:ListItem>My School Name?</asp:ListItem>
                        <asp:ListItem>My Best Friend&#39;s Name?</asp:ListItem>
                        <asp:ListItem>My Favourite Restaurant?</asp:ListItem>
                    </asp:DropDownList>
                   
                </td> 
            </tr>
            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Your Security Answer: "></asp:Label></td>
                <td><asp:TextBox ID="txtSecurityA" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button class="actionBtn" ID="btnVerifyCode" runat="server" Text="Verify" OnClick="btnVerifyCode_Click"  /></td>
            </tr>

            <tr>
                <td><asp:Label ID="Label3" runat="server" ForeColor="green"></asp:Label></td>
                <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/customerLogin.aspx">Go Back to Login</asp:HyperLink> <br /></td>
            </tr>
        </table>
      </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>
