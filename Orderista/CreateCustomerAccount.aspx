<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateCustomerAccount.aspx.cs" Inherits="CreateCustomerAccount" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div style="padding: 50px 0 100px;">
        <h3 style="text-align: center; margin-bottom: 30px;">Enter your information to proceed</h3>

        <div style="display: flex; justify-content: space-between; width: 1000px; margin: 0 auto" class="register_info_add">
            <div class="labels" style="display: flex; flex-direction: column; justify-content: space-between; margin-right: 10px; color: #000">
                <span><b>First Name</b></span>
                <span><b>Last Name</b></span>
                <span><b>Centennial Email</b></span>
                <span><b>Phone Number</b></span>
                <span><b>Enter Security Question</b></span>
                <span><b>Enter Security Answer</b></span>
                <span><b>Password</b></span>
                <span><b>Confirm Password</b></span>
            </div>

            <div class="fields" style="display: flex; flex-direction: column; justify-content: space-between; flex: 1">
                <!-- First Name TextBox -->
                <div class="field_boxes" style="display: flex">
                    <asp:TextBox class="inputText form-control" ID="txtFName" runat="server" Width="300px" />
                    <asp:RequiredFieldValidator ID="ReqFldValFName" runat="server"
                        ErrorMessage="Required Field"
                        ControlToValidate="txtFName" />
                    <asp:RegularExpressionValidator ID="RegExFName" runat="server"
                        ControlToValidate="txtFName"
                        ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                        Text=" Enter a valid name"
                        ErrorMessage="RegularExpressionValidator" />
                </div>

                <!-- Last Name TextBox -->
                <div class="field_boxes" style="display: flex">
                    <asp:TextBox class="inputText form-control" ID="txtLName" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqFldValLName" runat="server"
                        ErrorMessage="Required Field"
                        ControlToValidate="txtLName" />
                    <asp:RegularExpressionValidator ID="RegExLName" runat="server"
                        ControlToValidate="txtLName"
                        ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                        Text=" Enter a valid name"
                        ErrorMessage="RegularExpressionValidator" />
                </div>

                <!-- Centennial Email -->
                <div class="field_boxes" style="display: flex">
                    <asp:TextBox class="inputText form-control" ID="txtEmail" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqFldValEmail" runat="server"
                        ErrorMessage="Required Field"
                        ControlToValidate="txtEmail" />
                    <asp:RegularExpressionValidator ID="RegExEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ValidationExpression="\w+([-+.]\w+)*@(my.centennialcollege.ca)"
                        Text=" Enter a valid Centennial email address"
                        ErrorMessage="RegularExpressionValidator" />
                </div>

                <!-- Phone Number -->
                <div class="field_boxes" style="display: flex">
                    <asp:TextBox class="inputText form-control" ID="txtPhone" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqFldValPNumber" runat="server"
                        ErrorMessage="Required Field"
                        ControlToValidate="txtPhone" />
                    <asp:RegularExpressionValidator ID="RegExPNumber" runat="server"
                        ControlToValidate="txtPhone"
                        ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"
                        Text=" Enter a valid Phone Number"
                        ErrorMessage="RegularExpressionValidator" />
                </div>


                <!-- Security Question -->
                <div class="field_boxes" style="display: flex">
                    <asp:DropDownList class="inputText form-control" ID="DropDownList1" runat="server" Width="300px">
                        <asp:ListItem>My Mother&#39;s Maiden Name?</asp:ListItem>
                        <asp:ListItem>My first pet name?</asp:ListItem>
                        <asp:ListItem>My School Name?</asp:ListItem>
                        <asp:ListItem>My Best Friend&#39;s Name?</asp:ListItem>
                        <asp:ListItem>My Favourite Restaurant?</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <!-- Security Answer -->
                <div class="field_boxes" style="display: flex">
                    <asp:TextBox class="inputText form-control" ID="txtSecurityA" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSecurityA" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </div>

                <div class="field_boxes">
                    <!-- Password -->
                    <asp:TextBox class="inputText_password form-control" ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="Required Field"
                        ControlToValidate="txtPwd" />
                </div>
                <div class="field_boxes">
                    <!-- Confirm Password -->
                    <asp:TextBox class="inputText_password form-control" ID="txtConfirmPwd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqFldValCPassword" runat="server"
                        ErrorMessage="Required Field"
                        ControlToValidate="txtConfirmPwd" />
                </div>
            </div>
        </div>

        <div style="text-align: center; color: red; font-weight: bold;">
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
            <div>
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </div>
            <div style="display: flex; align-items: center; justify-content: center; flex-direction: column; margin-top: 30px;">
                <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="Passwords do not match" EnableClientScript="true" ControlToCompare="txtPwd" ControlToValidate="txtConfirmPwd"></asp:CompareValidator>
                <asp:Button class="actionBtn btn btn-primary" ID="btnCreateCustomerAccount" runat="server" Text="Create Account" OnClick="btnCreateCustomerAccount_Click" />
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
