<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateCustomerAccount.aspx.cs" Inherits="CreateCustomerAccount" MasterPageFile="~/MasterPage.master"%>

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
           <td>
               First Name
           </td>
           <td>
               
               <asp:TextBox ID="txtFName" runat="server" Width="166px"></asp:TextBox>
               <asp:RequiredFieldValidator ID="ReqFldValFName" runat="server"
                        ErrorMessage="Required Field"
                        ControlToValidate="txtFName" />
                    <asp:RegularExpressionValidator ID="RegExFName" runat="server"
                        ControlToValidate="txtFName"
                        ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                        Text=" Enter a valid name"
                        ErrorMessage="RegularExpressionValidator" />

           </td>
       </tr>
       <tr>
           <td>
               Last Name
           </td>
           <td>
               
               <asp:TextBox ID="txtLName" runat="server" Width="166px"></asp:TextBox>
               <asp:RequiredFieldValidator ID="ReqFldValLName" runat="server"
                        ErrorMessage="Required Field"
                        ControlToValidate="txtLName" />
                    <asp:RegularExpressionValidator ID="RegExLName" runat="server"
                        ControlToValidate="txtLName"
                        ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                        Text=" Enter a valid name"
                        ErrorMessage="RegularExpressionValidator" />

           </td>
       </tr>
       <tr>
           <td>
               Centennial Email
           </td>
           <td>
               
               <asp:TextBox ID="txtEmail" runat="server" Width="166px"></asp:TextBox>
               <asp:RequiredFieldValidator ID="ReqFldValEmail" runat="server"
                        ErrorMessage="Required Field"
                        ControlToValidate="txtEmail" />
                    <asp:RegularExpressionValidator ID="RegExEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Text=" Enter a valid Email"
                        ErrorMessage="RegularExpressionValidator" />
                    <%-- RegEx to be changed on the later iteration for myCentennial Email --%>

           </td>
       </tr>
       <tr>
           <td class="auto-style1">
              Phone Number
           </td>
           <td class="auto-style1">
               
               <asp:TextBox ID="txtPhone" runat="server" Width="166px"></asp:TextBox>
               <asp:RequiredFieldValidator ID="ReqFldValPNumber" runat="server"
                        ErrorMessage="Required Field"
                        ControlToValidate="txtPhone" />
                    <asp:RegularExpressionValidator ID="RegExPNumber" runat="server"
                        ControlToValidate="txtPhone"
                        ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"
                        Text=" Enter a valid Phone Number"
                        ErrorMessage="RegularExpressionValidator" />

           </td>
       </tr>
            <tr>
                <td>
                    Enter Security Question?
                </td>
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
                <td>
                    Enter Security Answer
                </td>
                <td>
                    <asp:TextBox ID="txtSecurityA" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSecurityA" ErrorMessage="Required Field"></asp:RequiredFieldValidator>                
                </td>
            </tr>
       <tr>
           <td>
               Password
           </td>
           <td>
               
               <asp:TextBox ID="txtPwd" runat="server" Width="166px" TextMode="Password"></asp:TextBox>
               <asp:RequiredFieldValidator ID="ReqFldValPassword" runat="server"
                        ErrorMessage="Required Field"
                        ControlToValidate="txtPwd" />
                    <asp:RegularExpressionValidator ID="RegExPassword" runat="server"
                        ControlToValidate="txtPwd"
                        ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"
                        Text=" Password must contain: Minimum 8 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character"
                        ErrorMessage="RegularExpressionValidator" />

           </td>
           <td>
               <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="CompareValidator" ControlToCompare="txtPwd" ControlToValidate="txtConfirmPwd"></asp:CompareValidator>
           </td>
       </tr>
       <tr>
           <td>
               Confirm Password
           </td>
           <td>
               
               <asp:TextBox ID="txtConfirmPwd" runat="server" Width="166px" TextMode="Password"></asp:TextBox>
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
                    <asp:Button ID="btnCreateCustomerAccount" runat="server" Text="Create Account" OnClick="btnCreateCustomerAccount_Click" />
                </td>
            </tr>
   </table>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>