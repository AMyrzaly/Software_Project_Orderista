<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 209px;
        }
        .auto-style2 {
            width: 419px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <table>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="ReqFldValFName" runat="server"
                        ErrorMessage="Required Field"
                        Forecolor="red"
                        ControlToValidate="txtFirstName" />
                    <asp:RegularExpressionValidator ID="RegExFName" runat="server"
                        ControlToValidate="txtFirstName"
                        ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                        Text=" Enter a valid First name"
                        Forecolor="red"
                        ErrorMessage="RegularExpressionValidator" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="ReqFldValLName" runat="server"
                        ErrorMessage="Required Field"
                        Forecolor="red"
                        ControlToValidate="txtLastName" />
                    <asp:RegularExpressionValidator ID="RegExLName" runat="server"
                        ControlToValidate="txtLastName"
                        ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                        Text=" Enter a valid Last name"
                        Forecolor="red"
                        ErrorMessage="RegularExpressionValidator" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Phone Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">                  
                    <asp:RequiredFieldValidator ID="ReqFldValPNumber" runat="server"
                        ErrorMessage="Required Field"
                        Forecolor="red"
                        ControlToValidate="txtPhoneNumber" />
                    <asp:RegularExpressionValidator ID="RegExPNumber" runat="server"
                        ControlToValidate="txtPhoneNumber"
                        ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"
                        Text=" Enter a valid Phone Number"
                        Forecolor="red"
                        ErrorMessage="RegularExpressionValidator" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="ReqFldValEmail" runat="server"
                        ErrorMessage="Required Field"
                        Forecolor="red"
                        ControlToValidate="txtEmail" />
                    <asp:RegularExpressionValidator ID="RegExEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Text=" Enter a valid email address"
                        Forecolor="red"
                        ErrorMessage="RegularExpressionValidator" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Subject"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtSubject" runat="server" ErrorMessage="Required Field" Forecolor="red" /></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="Comments"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtComments" runat="server" Rows="6" TextMode="MultiLine"
                        placeholder="Please feel free to let us know of any comments or concerns" Width="400px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtComments" runat="server" ErrorMessage="Required Field" Forecolor="red" /></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click"  />
                </td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;<asp:Label ID="Label" runat="server" Text="" ForeColor="green"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
