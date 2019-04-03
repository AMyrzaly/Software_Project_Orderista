<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddRestaurant.aspx.cs" Inherits="AddRestaurant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 64px;
        }
        .auto-style2 {
            width: 191px;
        }
        .auto-style3 {
            height: 64px;
            width: 191px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:Label ID="UserAdmin" runat="server" Text=""></asp:Label>
        <br />
        <h2>Add a New Restaurant</h2>
        <br />
        <table style="margin: auto; border: 5px solid white">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblResName" runat="server" Text="Restaurant Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRestaurantName" runat="server"></asp:TextBox>

                </td>
                <td>
                    <asp:RegularExpressionValidator ID="regName" runat="server"
                        ControlToValidate="txtRestaurantName"
                        ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                        Text="Enter a valid name" 
                        Forecolor="red" 
                        Display="Dynamic" />
                    <asp:RequiredFieldValidator ID="reqResName" runat="server"
                        ErrorMessage="Required Field"
                        Forecolor="red" 
                        ControlToValidate="txtRestaurantName">
                    </asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblResUN" runat="server" Text="Username: "></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtRestaurantUsername" runat="server"></asp:TextBox>

                    </td>
                <td>

                    <asp:RequiredFieldValidator ID="reqUN" runat="server"
                        ErrorMessage="Required Field"
                        Forecolor="red" 
                        ControlToValidate="txtRestaurantUsername">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regUsername" runat="server"
                        ControlToValidate="txtRestaurantUsername"
                        ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                        Text="Enter a valid UserName" 
                        Forecolor="red" Display="Dynamic" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblResPAss" runat="server" Text="Password: "></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtRestaurantPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                <td>

                    <asp:RequiredFieldValidator ID="reqPW" runat="server"
                        ErrorMessage="Required Field"
                        Forecolor="red" 
                        ControlToValidate="txtRestaurantPassword">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regPassword" runat="server"
                        ControlToValidate="txtRestaurantPassword"
                        ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"
                        Text="Password requirements:  Minimum 8 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character" Display="Dynamic" 
                        Forecolor="red" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblResEmail" runat="server" Text="Email: "></asp:Label></td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtRestaurantEmail" runat="server"></asp:TextBox>
                    </td>

                <td class="auto-style1">

                    <asp:RequiredFieldValidator ID="ReqEM" runat="server"
                        ErrorMessage="Required Field"
                        Forecolor="red" 
                        ControlToValidate="txtRestaurantEmail">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server"
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControlToValidate="txtRestaurantEmail"
                        ErrorMessage="Enter a valid email address" Display="Dynamic"
                        Forecolor="red" />
                    </td>

            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblResCon" runat="server" Text="Contact: "></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtRestaurantContact" runat="server"></asp:TextBox>               

                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="ReqFldValPNumber" runat="server"
                        ErrorMessage="Required Field"
                        Forecolor="red" 
                        ControlToValidate="txtRestaurantContact">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegExPNumber" runat="server"
                                ControlToValidate="txtRestaurantContact"
                                ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"
                                Text=" Enter a valid Phone Number"
                                Forecolor="red" 
                                ErrorMessage="RegularExpressionValidator" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnCreateRestaurant" runat="server" Text="Add" OnClick="btnCreateRestaurant_Click" /></td>
                <td>
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="false" /></td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

