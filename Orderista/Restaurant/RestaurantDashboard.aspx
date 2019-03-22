<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RestaurantDashboard.aspx.cs" Inherits="Restaurant_RestaurantDashboard" %>

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
            <asp:TemplateField>
     <ItemTemplate>
        <asp:LinkButton ID="lbAccept" CommandArgument='<%# Eval("OrderID") %>' CommandName="AcceptRow" ForeColor="#8C4510" runat="server">Accept</asp:LinkButton>
        <asp:LinkButton ID="lbDecline" CommandArgument='<%# Eval("OrderID") %>' CommandName="DeclineRow" ForeColor="#8C4510" runat="server" CausesValidation="false">Decline</asp:LinkButton>
      </ItemTemplate>
      <EditItemTemplate>
        <asp:LinkButton ID="lbUpdate" CommandArgument='<%# Eval("OrderID") %>' CommandName="UpdateRow" ForeColor="#8C4510" runat="server">Update</asp:LinkButton>
        <asp:LinkButton ID="lbCancel" CommandArgument='<%# Eval("OrderID") %>' CommandName="CancelUpdate" ForeColor="#8C4510" runat="server" CausesValidation="false">Cancel</asp:LinkButton>
      </EditItemTemplate>
        </asp:TemplateField>
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
                    <asp:ListItem>New</asp:ListItem>
                    <asp:ListItem>InProgress</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvEditStatus" runat="server" 
                    ErrorMessage="Status is a required field" Text="*"
                    ControlToValidate="DDLStatus" ForeColor="Red" 
                    InitialValue="New">
                </asp:RequiredFieldValidator>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label4" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
          </Columns>
      </asp:GridView>
      <br />
      <asp:Button ID="btnInProgress" runat="server" Text="Click to check In Progress Orders" OnClick="btnInProgress_Click" />
      <br />
        <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

