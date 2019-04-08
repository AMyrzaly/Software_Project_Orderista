<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteMenuItem.aspx.cs" Inherits="Restaurant_DeleteMenuItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div>
       <h2>Delete Menu Item Page</h2>
        <asp:GridView ID="GridDeleteMenuItem" runat="server"  Height="229px" Width="507px" Font-Size="Medium" OnRowDeleting="GridDeleteMenuItem_RowDeleting">
            <Columns>
                <asp:CommandField ButtonType="Button" DeleteText="Delete Menu Item" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <br />
          <asp:Label ID="lblSuccess" runat="server" ></asp:Label>
          <br />
        <asp:Button ID="btn_Back" runat="server" Text="Back to Home" OnClick="btn_Back_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

