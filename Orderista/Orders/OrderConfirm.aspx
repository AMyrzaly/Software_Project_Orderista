<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="OrderConfirm.aspx.cs" Inherits="Orders_OrderConfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:Label ID="Label1" runat="server" Text="Please confirm your order:"></asp:Label>
        
            <asp:GridView id="OrderSummaryGridView" runat="server"
                      AutoGenerateColumns="false"
                      ShowFooter="false">
            <Columns>
                <asp:BoundField DataField="RestaurantName"
                      HeaderText="Restaurant" ReadOnly="true"/>
                <asp:BoundField DataField="DelayTime"
                      HeaderText="Delivery Time"/>
                <asp:BoundField DataField="Semitotal"
                      HeaderText="Subtotal"/>
                <asp:BoundField DataField="Taxes"
                      HeaderText="Tax"/>
                <asp:BoundField DataField="ServiceCharge"
                      HeaderText="Service Fee"/>
                <asp:BoundField DataField="Total"
                      HeaderText="Total Cost"/>
            </Columns>

            </asp:GridView>
            <br />
            <asp:GridView ID="OrderItemsView" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="MenuItemName" HeaderText="Name" HeaderStyle-Font-Bold="true" />
                    <asp:BoundField DataField="Price" HeaderText="Price" HeaderStyle-Font-Bold="true" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" HeaderStyle-Font-Bold="true" />
                    <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" HeaderStyle-Font-Bold="true" />
                </Columns>
            </asp:GridView>
        <p>
            <asp:Button ID="Btn_Cancel" runat="server" OnClientClick="OnCancelButtonClicked" Text="Cancel" OnClick="OnCancelButtonClicked" />
            <asp:Button ID="Btn_Confirm" runat="server" OnClientClick="OnConfirmButtonClicked" Text="Confirm Order" OnClick="OnConfirmButtonClicked" />
        </p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>