<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddRestaurant.aspx.cs" Inherits="AddRestaurant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:Label ID="UserAdmin" runat="server" Text=""></asp:Label>
        <br />
        <h2>Add a New Restaurant</h2>
        <br />

        <table style="margin: auto; border: 5px solid white">
            <tr>
                <td>
                    <asp:Label ID="lblResName" runat="server" Text="Restaurant Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRestaurantName" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regName" runat="server"
                        ControlToValidate="txtRestaurantName"
                        ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                        Text="Enter a valid name" Display="Dynamic" />
                    <asp:RequiredFieldValidator ID="reqResName" runat="server"
                        ErrorMessage="Please complete this Field"
                        ControlToValidate="txtRestaurantName">
                    </asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblResUN" runat="server" Text="Username: "></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtRestaurantUsername" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regUsername" runat="server"
                        ControlToValidate="txtRestaurantUsername"
                        ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                        Text="Enter a valid UserName ->Add UserName Format<-" Display="Dynamic" />
                    <%--  Change regex and add format in error message--%>

                    <asp:RequiredFieldValidator ID="reqUN" runat="server"
                        ErrorMessage="Please complete this Field"
                        ControlToValidate="txtRestaurantUsername">
                    </asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblResPAss" runat="server" Text="Password: "></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtRestaurantPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regPassword" runat="server"
                        ControlToValidate="txtRestaurantPassword"
                        ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"
                        Text="Password requirements:  Minimum 8 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character" Display="Dynamic" />

                    <asp:RequiredFieldValidator ID="reqPW" runat="server"
                        ErrorMessage="Please complete this Field"
                        ControlToValidate="txtRestaurantPassword">
                    </asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblResEmail" runat="server" Text="Email: "></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtRestaurantEmail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server"
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControlToValidate="txtRestaurantEmail"
                        ErrorMessage="Please enter a valid email" Display="Dynamic" />

                    <asp:RequiredFieldValidator ID="ReqEM" runat="server"
                        ErrorMessage="Please complete this Field"
                        ControlToValidate="txtRestaurantEmail">
                    </asp:RequiredFieldValidator></td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblResCon" runat="server" Text="Contact: "></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtRestaurantContact" runat="server"></asp:TextBox>

                    <%--add a validator for contact HERE!--%>


                    <asp:RequiredFieldValidator ID="reqCon" runat="server"
                        ErrorMessage="Please complete this Field"
                        ControlToValidate="txtRestaurantContact">
                    </asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnCreateRestaurant" runat="server" Text="Add" OnClick="btnCreateRestaurant_Click" /></td>
                <td>
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="false" /></td>
            </tr>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

