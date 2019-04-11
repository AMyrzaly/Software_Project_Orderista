<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="InProgressDashboard.aspx.cs" Inherits="Restaurant_InProgressDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="padding: 50px 0 50px; position: relative">

        <div style="position: absolute; right: 20px; top: 50px;">
            <span style="font-weight: bold; color: black; padding-right: 10px;">
                <asp:Label ID="lblUserDetails" runat="server"></asp:Label>
            </span>
            <asp:Button class="backclrBtn btn btn-outline-warning" ID="logOutBtn" runat="server" Text="LogOut" OnClick="logOutBtn_Click" />
        </div>

        <div style="width: 1000px; margin: 0 auto; position: relative; top: 40px;">
            <asp:GridView ID="GridView1" CssClass="table table-bordered table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound">
                <Columns>
                    <asp:CommandField EditText="Change Status to Completed" ShowEditButton="True" />
                    <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                    <asp:TemplateField HeaderText="CentennialEmail" SortExpression="CentennialEmail">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("CentennialEmail") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("CentennialEmail") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DelayTime" SortExpression="DelayTime">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDelayTime" runat="server" Text='<%# Bind("DelayTime") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("DelayTime") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status" SortExpression="Status">
                        <EditItemTemplate>

                            <asp:DropDownList ID="DDlStatus" runat="server"
                                SelectedValue='<%# Bind("Status") %>'>
                                <asp:ListItem>InProgress</asp:ListItem>
                                <asp:ListItem>Completed</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvEditGender" runat="server"
                                ErrorMessage="Status is a required field" Text="*"
                                ControlToValidate="DDlStatus" ForeColor="Red"
                                InitialValue="InProgress">
                            </asp:RequiredFieldValidator>

                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
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
                <asp:Parameter DefaultValue="InProgress" Name="Status" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="CentennialEmail" Type="String" />
                <asp:Parameter Name="DelayTime" Type="Int32" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="OrderID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <div style="text-align: center; margin-top: 20px;">
            <asp:Button ID="btnHome" CssClass="btn btn-primary" runat="server" Text="Back to Home" OnClick="btnHome_Click" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
