<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="padding: 50px 0 50px">
        <div style="display: flex; flex-direction: column;" class="new_password_form">
            <div class="form-group" style="display: flex; margin-left: 41px;">
                <label style="width: 180px; line-height: 36px; margin-right: 15px; color: #000; font-weight: bold">Enter New Passord:</label>
                <asp:TextBox ID="txtPwd" runat="server" CssClass="form-control" TextMode="Password" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="- Required Field"
                    ControlToValidate="txtPwd" />
            </div>

            <div class="form-group" style="display: flex; margin-left: 50px;">
                <label style="width: 320px; line-height: 36px; margin-right: 15px; color: #000; font-weight: bold">Confirm Password:</label>
                <asp:TextBox ID="txtConfirmPwd" runat="server" CssClass="form-control" TextMode="Password" Width="220px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtConfirmPwd" ErrorMessage="Passwords Do not Match"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="ReqFldValCPassword" runat="server"
                    ErrorMessage="- Required Field"
                    ControlToValidate="txtConfirmPwd" />
                <asp:RegularExpressionValidator ID="RegExPassword" runat="server"
                    ControlToValidate="txtPwd"
                    ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"
                    Text="Password - Minimum 8 characters, Upper/Lower Case Alphabet, Number/Special Character"
                    ErrorMessage="RegularExpressionValidator" /><br />
                <asp:RegularExpressionValidator ID="RegExCPassword" runat="server"
                    ControlToValidate="txtConfirmPwd"
                    ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"
                    Text="Confirm Password - Minimum 8 characters, Upper/Lower Case Alphabet, Number/Special Character"
                    ErrorMessage="RegularExpressionValidator" />
            </div>

            <div style="text-align: center; margin-top: 10px;">
                <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary" OnClick="btnUpdate_Click" Text="Update" />
            </div>
        </div>

        <div style="text-align: center; margin-top: 20px;">
            <asp:Label ID="lblSucess" runat="server" ForeColor="green"></asp:Label>
        </div>

        <div style="text-align: center; margin-top: 20px;">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/customerLogin.aspx">Go Back to Login</asp:HyperLink>
        </div>
    </div>
    <div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

