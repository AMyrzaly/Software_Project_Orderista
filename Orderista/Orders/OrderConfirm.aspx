<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="OrderConfirm.aspx.cs" Inherits="Orders_OrderConfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="padding: 50px 0 100px;" class="order_confirm">
        <h3 style="text-align: center; margin-bottom: 30px;">Please, confirm your order</h3>

        <h4 style="text-align: center;">Order's Summary</h4>
        <asp:GridView ID="OrderSummaryGridView" runat="server"
            CssClass="table table-bordered table-dark restaurant_table"
            AutoGenerateColumns="false"
            ShowFooter="false">
            <Columns>
                <asp:BoundField DataField="RestaurantName"
                    HeaderText="Restaurant" ReadOnly="true" />
                <asp:BoundField DataField="DelayTime"
                    HeaderText="Delivery Time" />
                <asp:BoundField DataField="Semitotal"
                    HeaderText="Subtotal" />
                <asp:BoundField DataField="Taxes"
                    HeaderText="Tax" />
                <asp:BoundField DataField="ServiceCharge"
                    HeaderText="Service Fee" />
                <asp:BoundField DataField="Total"
                    HeaderText="Total Cost" />
            </Columns>

        </asp:GridView>
        <br />
        <h4 style="text-align: center;">Order's Items</h4>
        <asp:GridView CssClass="table table-bordered table-dark food_table" ID="OrderItemsView" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="MenuItemName" HeaderText="Name" HeaderStyle-Font-Bold="true" />
                <asp:BoundField DataField="Price" HeaderText="Price" HeaderStyle-Font-Bold="true" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" HeaderStyle-Font-Bold="true" />
                <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" HeaderStyle-Font-Bold="true" />
            </Columns>
        </asp:GridView>
        <div style="text-align: center; margin-top: 30px;">
            <asp:Button ID="Btn_Cancel" class="btn btn-outline-danger" runat="server" OnClientClick="OnCancelButtonClicked" Text="Cancel" OnClick="OnCancelButtonClicked" />
            <asp:Button ID="Btn_Confirm" class="btn btn-primary" runat="server" OnClientClick="OnConfirmButtonClicked" Text="Confirm Order" OnClick="OnConfirmButtonClicked" />
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
