<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
            <tr>
                <td>Enter New Password</td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="228px"></asp:TextBox>
                    <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server"
                         ErrorMessage="- Required Field"
                        ControlToValidate="txtPwd" />
                </td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td>
                    <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password" Width="228px"></asp:TextBox>
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
                </td>
            </tr>
            <tr>
                <td class="text-left" colspan="2">
                    &nbsp;&nbsp;
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblSucess" runat="server" ForeColor="green"></asp:Label>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/customerLogin.aspx">Go Back to Login</asp:HyperLink>
                </td>
            </tr>
        </table>
        <div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

