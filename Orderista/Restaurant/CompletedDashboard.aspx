<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="CompletedDashboard.aspx.cs" Inherits="Restaurant_CompletedDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding: 50px 0 100px; position: relative">
        <div style="position: absolute; right: 20px; top: 50px;">
            <span style="font-weight: bold; color: black; padding-right: 10px;">
                <asp:Label ID="lblUserDetails" runat="server"></asp:Label>
            </span>
            <asp:Button class="backclrBtn btn btn-outline-warning" ID="LogOut" runat="server" Text="LogOut" OnClick="logOutBtn_Click" />
        </div>

        <div style="width: 1000px; margin: 0 auto; position: relative; top: 40px;">
            <asp:GridView ID="GridView1" CssClass="table table-bordered table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                    <asp:BoundField DataField="CentennialEmail" HeaderText="CentennialEmail" SortExpression="CentennialEmail" />
                    <asp:BoundField DataField="DelayTime" HeaderText="DelayTime" SortExpression="DelayTime" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OrderistaConnection %>" SelectCommand="SELECT [OrderID], [CentennialEmail], [DelayTime], [Status] FROM [Orders] WHERE ([Status] = @Status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Completed" Name="Status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <div style="text-align: center; margin-top: 20px;">
                <asp:Button ID="btnHome" CssClass="btn btn-primary" runat="server" Text="Back to Home" OnClick="btnHome_Click" />
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
