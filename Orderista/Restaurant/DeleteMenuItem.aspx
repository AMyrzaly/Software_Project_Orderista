<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteMenuItem.aspx.cs" Inherits="Restaurant_DeleteMenuItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding: 50px 0 100px;">
        <div style="text-align: center; margin-bottom: 30px;">
            <h3>Delete Menu Item Page</h3>
            <asp:Label ID="lblSuccess" runat="server"></asp:Label>
            <asp:Button ID="btn_Back" CssClass="btn btn-primary" runat="server" Text="Back to Home" OnClick="btn_Back_Click" />
        </div>
        <div style="margin-top: 20px; width: 800px; margin: 0 auto;">
            <asp:GridView ID="GridDeleteMenuItem" CssClass="table table-bordered table-dark" runat="server" Font-Size="Medium" OnRowDeleting="GridDeleteMenuItem_RowDeleting">
                <Columns>
                    <asp:CommandField ButtonType="Button" DeleteText="Delete Menu Item" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

