<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="CompletedDashboard.aspx.cs" Inherits="Restaurant_CompletedDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Label ID="lblUserDetails" runat="server"></asp:Label>
        <br />
      <asp:Button class="backclrBtn" ID="logOutBtn" runat="server" Text="LogOut" OnClick="logOutBtn_Click" />
        <br />
      <br />

      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" OnRowCommand="GridView1_RowCommand">
          <Columns>
              <asp:TemplateField HeaderText="OrderID" InsertVisible="False" SortExpression="OrderID">
                  <EditItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("OrderID") %>'></asp:Label>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("OrderID") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="CentennialEmail" SortExpression="CentennialEmail">
                  <EditItemTemplate>
                      <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("CentennialEmail") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label2" runat="server" Text='<%# Bind("CentennialEmail") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="DelayTime" SortExpression="DelayTime">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DelayTime") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label3" runat="server" Text='<%# Bind("DelayTime") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Status" SortExpression="Status">
                  <EditItemTemplate>
                         <asp:DropDownList ID="DDLStatus" runat="server"  SelectedValue='<%# Bind("Status") %>'>
                    <asp:ListItem>InProgress</asp:ListItem>
                    <asp:ListItem>Completed</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvEditStatus" runat="server" 
                    ErrorMessage="Status is a required field" Text="*"
                    ControlToValidate="DDLStatus" ForeColor="Red" 
                    InitialValue="InProgress">
                </asp:RequiredFieldValidator>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label4" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
          </Columns>
      </asp:GridView>
      <br />
      <asp:Button ID="btnCompleted" runat="server" Text="Click here to check Completed Orders" OnClick="btnCompleted_Click" />
      <br />
        <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
