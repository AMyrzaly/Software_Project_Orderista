<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="CompletedDashboard.aspx.cs" Inherits="Restaurant_CompletedDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Label ID="lblUserDetails" runat="server"></asp:Label>
        <br />
      <asp:Button class="backclrBtn" ID="logOutBtn" runat="server" Text="LogOut" OnClick="logOutBtn_Click" />
        <br />
      <br />

      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" >
          <Columns>
              <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
              <asp:BoundField DataField="CentennialEmail" HeaderText="CentennialEmail" SortExpression="CentennialEmail" />
              <asp:BoundField DataField="DelayTime" HeaderText="DelayTime" SortExpression="DelayTime" />
              <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
          </Columns>
      </asp:GridView>
      <br />
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OrderistaConnection %>" SelectCommand="SELECT [OrderID], [CentennialEmail], [DelayTime], [Status] FROM [Orders] WHERE ([Status] = @Status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Completed" Name="Status" Type="String" />
            </SelectParameters>
      </asp:SqlDataSource>
   
        <asp:Button ID="btnHome" runat="server" Text="Back to Home" OnClick="btnHome_Click" />
      <br />
   
        <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
