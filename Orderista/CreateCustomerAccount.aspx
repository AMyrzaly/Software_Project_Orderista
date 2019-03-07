<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateCustomerAccount.aspx.cs" Inherits="CreateCustomerAccount" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    </asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     <div>
        <table style="margin: auto">
            <tr>
                <td> 
                    First Name <br />
                    Last Name <br />
                    Centennial Email <br />
                    Phone Number<br />
                    Enter Security Question <br />
                    Enter Security Answer <br />

                </td>

                <td>
                    <!-- First Name TextBox -->
                    <asp:TextBox class="inputText" ID="txtFName" runat="server" Width="300px"/>
                               <asp:RequiredFieldValidator ID="ReqFldValFName" runat="server"
                                        ErrorMessage="Required Field"
                                        ControlToValidate="txtFName" />
                               <asp:RegularExpressionValidator ID="RegExFName" runat="server"
                                        ControlToValidate="txtFName"
                                        ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                                        Text=" Enter a valid name"
                                        ErrorMessage="RegularExpressionValidator" /><br />

                    <!-- Last Name TextBox -->
                    <asp:TextBox class="inputText" ID="txtLName" runat="server" Width="300px"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="ReqFldValLName" runat="server"
                                        ErrorMessage="Required Field"
                                        ControlToValidate="txtLName" />
                              <asp:RegularExpressionValidator ID="RegExLName" runat="server"
                                        ControlToValidate="txtLName"
                                        ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                                        Text=" Enter a valid name"
                                        ErrorMessage="RegularExpressionValidator" /><br />

                    <!-- Centennial Email -->
                    <asp:TextBox class="inputText" ID="txtEmail" runat="server" Width="300px"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="ReqFldValEmail" runat="server"
                                                ErrorMessage="Required Field"
                                                ControlToValidate="txtEmail" />
                                     <asp:RegularExpressionValidator ID="RegExEmail" runat="server"
                                                ControlToValidate="txtEmail"
                                                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                Text=" Enter a valid Email"
                                                ErrorMessage="RegularExpressionValidator" />
                                      <%-- RegEx to be changed on the later iteration for myCentennial Email --%> <br />

                    <!-- Phone Number -->
                    <asp:TextBox class="inputText" ID="txtPhone" runat="server" Width="300px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="ReqFldValPNumber" runat="server"
                                            ErrorMessage="Required Field"
                                            ControlToValidate="txtPhone" />
                                 <asp:RegularExpressionValidator ID="RegExPNumber" runat="server"
                                            ControlToValidate="txtPhone"
                                            ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"
                                            Text=" Enter a valid Phone Number"
                                            ErrorMessage="RegularExpressionValidator" /> <br />


                    <!-- Security Question -->
                    <asp:DropDownList  class="inputText" ID="DropDownList1" runat="server">
                        <asp:ListItem>My Mother&#39;s Maiden Name?</asp:ListItem>
                        <asp:ListItem>My first pet name?</asp:ListItem>
                        <asp:ListItem>My School Name?</asp:ListItem>
                        <asp:ListItem>My Best Friend&#39;s Name?</asp:ListItem>
                        <asp:ListItem>My Favourite Restaurant?</asp:ListItem>
                    </asp:DropDownList> <br />


                    <!-- Security Answer -->
                    <asp:TextBox class="inputText" ID="txtSecurityA" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSecurityA" ErrorMessage="Required Field"></asp:RequiredFieldValidator>  <br />

                </td>
            </tr>
        </table>
     </div>

     <br />
     <hr />
     <br />

     <div>
        <table>
            <tr>
                <td>Password
                    <!-- Password -->
                    <asp:TextBox class="inputText" ID="txtPwd" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                       <asp:RequiredFieldValidator  ID="ReqFldValPassword" runat="server"
                                ErrorMessage="Required Field"
                                ControlToValidate="txtPwd" />
                            <asp:RegularExpressionValidator ID="RegExPassword" runat="server"
                                ControlToValidate="txtPwd"
                                ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"
                                Text=" Password must contain: Minimum 8 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character"
                                ErrorMessage="RegularExpressionValidator" />

                </td>
                <td> Confirm password
                    <!-- Confirm Password -->
                    <asp:TextBox class="inputText" ID="txtConfirmPwd" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="ReqFldValCPassword" runat="server"
                                ErrorMessage="Required Field"
                                ControlToValidate="txtConfirmPwd" />
                            <asp:RegularExpressionValidator ID="RegExCPassword" runat="server"
                                ControlToValidate="txtConfirmPwd"
                                ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"
                                Text=" Password must contain: Minimum 8 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character"
                                ErrorMessage="RegularExpressionValidator" />

                </td>
               
                </tr>
               <tr>
                   <td>
                       <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="CompareValidator" ControlToCompare="txtPwd" ControlToValidate="txtConfirmPwd"></asp:CompareValidator>
                         <asp:Button class="actionBtn" ID="btnCreateCustomerAccount" runat="server" Text="Create Account" OnClick="btnCreateCustomerAccount_Click" />
         
                   </td>
               </tr>

            </table>
     </div>

             
                   
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>