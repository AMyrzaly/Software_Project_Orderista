<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="BuyNow.aspx.cs" Inherits="BuyNow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding: 50px 0 100px; position: relative;">

        <div style="display: flex; flex-direction: column; margin-left: 50px;">
            <div class="form-group" style="display: flex;">
                <label style="font-weight: bold; width: 140px; margin-right: 15px; margin-bottom: 0; line-height: 36px; color: #000" id="Label1">Your Name:</label>
                <asp:TextBox ID="txtName" CssClass="form-control" runat="server" Width="333px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rvName" runat="server" ErrorMessage="Name is Required" ControlToValidate="txtName" Text=" * Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group" style="display: flex;">
                <label style="font-weight: bold; width: 140px; margin-right: 15px; line-height: 36px; color: #000" id="Label2">Email:</label>
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" Width="333px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rvEmail" runat="server" ErrorMessage="Email is Required" ControlToValidate="txtEmail" Text=" * Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group" style="display: flex;">
                <label style="font-weight: bold; width: 140px; margin-right: 15px; line-height: 36px; color: #000" id="Label3">Mobile Number:</label>
                <asp:TextBox ID="txtmobile" type="number" CssClass="form-control" runat="server" Width="330px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rvMobile" runat="server" ErrorMessage="Mobile Number is Required" ControlToValidate="txtmobile" Text=" * Mobile Number is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group" style="display: flex">
                <label style="font-weight: bold; width: 140px; margin-right: 15px; color: #000" id="Label4">Price:</label>
                <span style="font-weight: bold; color: #000">
                    <asp:Label ID="lblPrice" runat="server"></asp:Label>$
                </span>
            <asp:Button ID="btnPayNow" CssClass="btn btn-primary" runat="server" Text="PayNow" Width="136px" OnClick="btnPayNow_Click" />
        </div>
    </div>
    <input type="hidden" runat="server" id="key" name="key" value="gtKFFx" />
    <input type="hidden" runat="server" id="salt" name="salt" value="eCwWELxi" />
    <input type="hidden" runat="server" id="hash" name="hash" value="" />
    <input type="hidden" runat="server" id="txnid" name="txnid" value="" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
