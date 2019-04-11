<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddMenuItem.aspx.cs" Inherits="Restaurant_AddMenuItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding: 50px 0 100px; position: relative">
        <div style="text-align: center">
            <h3 style="text-align: center">Add a Menu Item</h3>
            <asp:Label ID="lblSuccess" runat="server"></asp:Label>
        </div>

        <div style="display: flex; flex-direction: column; width: 400px; margin: 30px auto 0;">
            <div class="form-group">
                <label style="font-weight: bold; color: #000" id="lblItemName">Menu Item Name</label>
                <asp:TextBox CssClass="form-control" ID="txtItemName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqItemName" runat="server"
                    ErrorMessage="Required Field"
                    ForeColor="red"
                    ControlToValidate="txtItemName">
                </asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label style="font-weight: bold; color: #000">Price</label>
                <asp:TextBox CssClass="form-control" type="number" ID="txtprice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqUN" runat="server"
                    ErrorMessage="Required Field"
                    ForeColor="red"
                    ControlToValidate="txtprice">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <div style="text-align: center;">
            <asp:Button ID="btnCreateItem" CssClass="btn btn-primary" runat="server" Text="Add" OnClick="btnCreateItem_Click" />
            <asp:Button ID="btnCancel" CssClass="btn btn-outline-danger" runat="server" Text="Cancel" CausesValidation="false" OnClick="btnCancel_Click1" />
        </div>

        <div style="text-align: center;">
            <asp:Button ID="btnHome" CssClass="btn btn-primary" runat="server" Text="Back to Home" OnClick="btnHome_Click" />
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

