 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateCustomerAccount.aspx.cs" Inherits="CreateCustomerAccount" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    </asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     <div>
            <div style="display: flex; justify-content: space-between; ">
                <div class="labels" style="display: flex; flex-direction: column; justify-content: space-between; margin-right: 10px"> 
                    <span>First Name</span>
                    <span>Last Name</span>
                    <span>Centennial Email</span>
                    <span>Phone Number</span>
                    <span>Enter Security Question</span>
                    <span>Enter Security Answer</span>
                    <span>Password</span>
                    <span>Confirm Password</span>
                </div>

                <div class="fields" style="display: flex; flex-direction: column; justify-content: space-between; flex: 1">
                    <!-- First Name TextBox -->
                    <div class="field_boxes" style="display: flex">
                    <asp:TextBox class="inputText" ID="txtFName" runat="server" Width="300px"/>
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
                    <asp:TextBox class="inputText" ID="txtLName" runat="server" Width="300px"></asp:TextBox>
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
                    <asp:TextBox class="inputText" ID="txtEmail" runat="server" Width="300px"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="ReqFldValEmail" runat="server"
                                                ErrorMessage="Required Field"
                                                ControlToValidate="txtEmail" />
                                     <asp:RegularExpressionValidator ID="RegExEmail" runat="server"
                                                ControlToValidate="txtEmail"
                                                ValidationExpression="\w+([-+.]\w+)*@(my.centennialcollege.ca)"
                                                Text=" Enter a valid Ecentennial email"
                                                ErrorMessage="RegularExpressionValidator" />
                                      <%-- RegEx to be changed on the later iteration for myCentennial Email --%>
                    </div>

                    <!-- Phone Number -->
                    <div class="field_boxes" style="display: flex">
                    <asp:TextBox class="inputText" ID="txtPhone" runat="server" Width="300px"></asp:TextBox>
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
                    <asp:DropDownList  class="inputText" ID="DropDownList1" runat="server" Width="300px">
                        <asp:ListItem>My Mother&#39;s Maiden Name?</asp:ListItem>
                        <asp:ListItem>My first pet name?</asp:ListItem>
                        <asp:ListItem>My School Name?</asp:ListItem>
                        <asp:ListItem>My Best Friend&#39;s Name?</asp:ListItem>
                        <asp:ListItem>My Favourite Restaurant?</asp:ListItem>
                    </asp:DropDownList>
                    </div>

                    <!-- Security Answer -->
                    <div class="field_boxes" style="display: flex">
                    <asp:TextBox class="inputText" ID="txtSecurityA" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSecurityA" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    </div>
         
        <div class="field_boxes">
                <!-- Password -->
            <asp:TextBox class="inputText_password" ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                   <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server"
                         ErrorMessage="- Required Field"
                        ControlToValidate="txtPwd" />
        </div>
        <div class="field_boxes">
            <!-- Confirm Password -->
            <asp:TextBox class="inputText_password" ID="txtConfirmPwd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqFldValCPassword" runat="server"
                        ErrorMessage="- Required Field"
                        ControlToValidate="txtConfirmPwd" /> 
        </div>
         </div>
     </div>
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
    <div style="display: flex; align-items: center; justify-content: center; flex-direction: column; margin-top: 30px;">
                        <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="Passwords do not match" EnableClientScript="true" ControlToCompare="txtPwd" ControlToValidate="txtConfirmPwd"></asp:CompareValidator>
                        <asp:Button class="actionBtn" ID="btnCreateCustomerAccount" runat="server" Text="Create Account" OnClick="btnCreateCustomerAccount_Click" />
        </div>
 </div>

             
                   
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>