<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddRestaurant.aspx.cs" Inherits="AddRestaurant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding: 50px 0 100px; position: relative;">
        <div class="inputText" style="margin-bottom: 20px;">
            <h2 style="padding-left: 50px;">Add a New Restaurant</h2>
        </div>

        <div style="position: absolute; right: 20px; top: 50px;">
            <span style="font-weight: bold; color: black; padding-right: 10px;">
                <asp:Label ID="UserAdmin" runat="server" Text=""></asp:Label>
            </span>
        </div>

        <div class="add_restaurant_form" style="display: flex; flex-direction: column; margin-left: 50px;">
            <div style="display: flex; align-items: center;" class="form-group">
                <label>Restaurant Name</label>
                <asp:TextBox CssClass="form-control" ID="txtRestaurantName" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="regName" runat="server"
                    ControlToValidate="txtRestaurantName"
                    ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                    Text="Enter a valid name"
                    ForeColor="red"
                    Display="Dynamic" />
                <asp:RequiredFieldValidator ID="reqResName" runat="server"
                    ErrorMessage="Required Field"
                    ForeColor="red"
                    ControlToValidate="txtRestaurantName">
                </asp:RequiredFieldValidator>
            </div>

            <div style="display: flex; align-items: center;" class="form-group">
                <label>Username</label>
                <asp:TextBox CssClass="form-control" ID="txtRestaurantUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqUN" runat="server"
                    ErrorMessage="Required Field"
                    ForeColor="red"
                    ControlToValidate="txtRestaurantUsername">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regUsername" runat="server"
                    ControlToValidate="txtRestaurantUsername"
                    ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                    Text="Enter a valid UserName"
                    ForeColor="red" Display="Dynamic" />
            </div>

            <div style="display: flex; align-items: center;" class="form-group">
                <label>Password</label>
                <asp:TextBox CssClass="form-control" ID="txtRestaurantPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqPW" runat="server"
                    ErrorMessage="Required Field"
                    ForeColor="red"
                    ControlToValidate="txtRestaurantPassword">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regPassword" runat="server"
                    ControlToValidate="txtRestaurantPassword"
                    ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"
                    Text="Minimum 8 characters, Upper/Lower Case Alphabet, Number/Special Character" Display="Dynamic"
                    ForeColor="red" />
            </div>

            <div style="display: flex; align-items: center;" class="form-group">
                <label>Email</label>
                <asp:TextBox CssClass="form-control" ID="txtRestaurantEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqEM" runat="server"
                    ErrorMessage="Required Field"
                    ForeColor="red"
                    ControlToValidate="txtRestaurantEmail">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server"
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtRestaurantEmail"
                    ErrorMessage="Enter a valid email address" Display="Dynamic"
                    ForeColor="red" />
            </div>

            <div style="display: flex; align-items: center;" class="form-group">
                <label>Contact</label>
                <asp:TextBox CssClass="form-control" type="number" ID="txtRestaurantContact" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqFldValPNumber" runat="server"
                    ErrorMessage="Required Field"
                    ForeColor="red"
                    ControlToValidate="txtRestaurantContact">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegExPNumber" runat="server"
                    ControlToValidate="txtRestaurantContact"
                    ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"
                    Text=" Enter a valid Phone Number"
                    ForeColor="red"
                    ErrorMessage="RegularExpressionValidator" />
            </div>
        </div>

        <div style="margin-left: 50px;">
            <asp:Button ID="btnCreateRestaurant" CssClass="btn btn-primary" runat="server" Text="Add" OnClick="btnCreateRestaurant_Click" />
            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-outline-danger" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="false" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

