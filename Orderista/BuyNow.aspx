<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master"  CodeFile="BuyNow.aspx.cs" Inherits="BuyNow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<%--    <style type="text/css">
        .auto-style1 {
            width: 41%;
            height: 344px;
            background-color: #FFBBDD;
        }
        .auto-style3 {
            background-color: #99FFCC;
        }
        .auto-style4 {
            width: 215px;
            font-size: xx-large;
            background-color: #99FFCC;
        }
        .auto-style5 {
            width: 215px;
            font-size: x-large;
            background-color: #99FFCC;
        }<style>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"><strong>Your Name</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtName" runat="server" Height="33px" Width="333px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqFldValFName" runat="server"
                                        ErrorMessage="Required Field"
                                        ControlToValidate="txtFName"
                                        ForeColor="red"/>
                               <asp:RegularExpressionValidator ID="RegExFName" runat="server"
                                        ControlToValidate="txtFName"
                                        ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                                        Text=" Enter a valid name"
                                        ErrorMessage="RegularExpressionValidator"
                                        ForeColor="red"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Email</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtEmail" runat="server" Height="24px" Width="333px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqFldValEmail" runat="server"
                                                ErrorMessage="Required Field"
                                                ControlToValidate="txtEmail"
                                                ForeColor="red"/>
                                     <asp:RegularExpressionValidator ID="RegExEmail" runat="server"
                                                ControlToValidate="txtEmail"
                                                ValidationExpression="\w+([-+.]\w+)*@(my.centennialcollege.ca)"
                                                Text=" Enter a valid Ecentennial email"
                                                ErrorMessage="RegularExpressionValidator"
                                                ForeColor="red"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Mobile Number</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtmobile" runat="server" Height="25px" Width="330px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqFldValPNumber" runat="server"
                                ErrorMessage="Required Field"
                                ControlToValidate="txtPhone"
                                ForeColor="red"/>
                        <asp:RegularExpressionValidator ID="RegExPNumber" runat="server"
                                ControlToValidate="txtPhone"
                                ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"
                                Text=" Enter a valid Phone Number"
                                ErrorMessage="RegularExpressionValidator"
                                ForeColor="red"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Price</strong></td>
                    <td class="auto-style3">
                        <asp:Label ID="lblPrice" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <input type="hidden" runat="server" id="key" name="key" value="gtKFFx" />
         <input type="hidden" runat="server" id="salt" name="salt" value="eCwWELxi" />
         <input type="hidden" runat="server" id="hash" name="hash" value="" />
         <input type="hidden" runat="server" id="txnid" name="txnid" value="" />
        <asp:Button ID="btnPayNow" runat="server" BackColor="#c0c0c0" Height="39px" Text="PayNow" Width="136px" OnClick="btnPayNow_Click" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>