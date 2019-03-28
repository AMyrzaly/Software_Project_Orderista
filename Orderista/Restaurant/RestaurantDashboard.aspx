<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RestaurantDashboard.aspx.cs" Inherits="Restaurant_RestaurantDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Label ID="lblUserDetails" runat="server"></asp:Label>
        <br />
      <asp:Button class="backclrBtn" ID="logOutBtn" runat="server" Text="LogOut" OnClick="logOutBtn_Click" />
        <br />
      <br />

      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating"  OnRowDataBound="GridView1_RowDataBound" >
          <Columns>
              <asp:CommandField  EditText="Accept/Decline" ShowEditButton="True" />

              <asp:TemplateField HeaderText="OrderID" InsertVisible="False" SortExpression="OrderID">
                  <EditItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("OrderID") %>'></asp:Label>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label3" runat="server" Text='<%# Bind("OrderID") %>'></asp:Label>
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
                      <asp:TextBox ID="txtDelayTime" runat="server" Text='<%# Bind("DelayTime") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label4" runat="server" Text='<%# Bind("DelayTime") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Status" SortExpression="Status">
                  <EditItemTemplate>
                     <asp:DropDownList ID="DDlStatus" runat="server" 
                    SelectedValue='<%# Bind("Status") %>'>
                    <asp:ListItem>New</asp:ListItem>
                    <asp:ListItem>InProgress</asp:ListItem>
                     <asp:ListItem>Decline</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvEditGender" runat="server" 
                    ErrorMessage="Status is a required field" Text="*"
                    ControlToValidate="DDlStatus" ForeColor="Red" 
                    InitialValue="New">
                </asp:RequiredFieldValidator>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
          </Columns>
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OrderistaConnection %>" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @OrderID" InsertCommand="INSERT INTO [Orders] ([CentennialEmail], [DelayTime], [Status]) VALUES (@CentennialEmail, @DelayTime, @Status)" SelectCommand="SELECT [OrderID], [CentennialEmail], [DelayTime], [Status] FROM [Orders] WHERE ([Status] = @Status)" UpdateCommand="UPDATE [Orders] SET [CentennialEmail] = @CentennialEmail, [DelayTime] = @DelayTime, [Status] = @Status WHERE [OrderID] = @OrderID">
          <DeleteParameters>
              <asp:Parameter Name="OrderID" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="CentennialEmail" Type="String" />
              <asp:Parameter Name="DelayTime" Type="Int32" />
              <asp:Parameter Name="Status" Type="String" />
          </InsertParameters>
          <SelectParameters>
              <asp:Parameter DefaultValue="New" Name="Status" Type="String" />
          </SelectParameters>
          <UpdateParameters>
              <asp:Parameter Name="CentennialEmail" Type="String" />
              <asp:Parameter Name="DelayTime" Type="Int32" />
              <asp:Parameter Name="Status" Type="String" />
              <asp:Parameter Name="OrderID" Type="Int32" />
          </UpdateParameters>
      </asp:SqlDataSource>
      <br />
      <asp:Label ID="lblEmpty" runat="server" ></asp:Label>
      <br />
    <table>
        <tr>
            <td>
                   <asp:Button ID="btnHome" runat="server" Text="Back to Home" OnClick="btnHome_Click" />
   
            </td>
           
        </tr>
       
    </table>
      <br />
        <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

