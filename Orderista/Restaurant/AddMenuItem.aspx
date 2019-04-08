<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddMenuItem.aspx.cs" Inherits="Restaurant_AddMenuItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <h2>Add a Menu Item</h2>
        <br />
        <table style="margin: auto; border: 5px solid white">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblItemName" runat="server" Text=" Menu Item Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtItemName" runat="server"></asp:TextBox>

                </td>
                <td>
                    <asp:RegularExpressionValidator ID="regName" runat="server"
                        ControlToValidate="txtItemName"
                        ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                        Text="Enter a valid name" 
                        Forecolor="red" 
                        Display="Dynamic" />
                    <asp:RequiredFieldValidator ID="reqItemName" runat="server"
                        ErrorMessage="Required Field"
                        Forecolor="red" 
                        ControlToValidate="txtItemName">
                    </asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblPrice" runat="server" Text="Price: "></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>

                    </td>
                <td>

                    <asp:RequiredFieldValidator ID="reqUN" runat="server"
                        ErrorMessage="Required Field"
                        Forecolor="red" 
                        ControlToValidate="txtprice">
                    </asp:RequiredFieldValidator>
                  
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnCreateItem" runat="server" Text="Add" OnClick="btnCreateItem_Click"  /></td>
                <td>
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" /></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblSuccess" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnHome" runat="server" Text="Back to Home" OnClick="btnHome_Click" />
                </td>
            </tr>
            </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

