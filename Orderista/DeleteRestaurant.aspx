<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteRestaurant.aspx.cs" Inherits="DeleteRestaurant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding: 50px 0 100px; position: relative; text-align: center;">
        <div class="inputText" style="text-align: center">
            <h3>Delete Restaurant Page</h3>
        </div>
        <div style="position: absolute; right: 20px; top: 50px;">
            <span style="font-weight: bold; color: black; padding-right: 10px;">
                <asp:Label ID="UserAdmin" runat="server" Text=""></asp:Label>
            </span>
        </div>
        <div style="margin: auto" class="delete_restaurant">
            <asp:GridView ID="GridDeleteRestaurant" CssClass="table table-bordered table-dark" runat="server" OnRowDeleting="DelRestaurant" Height="229px" Width="507px" Font-Size="Medium">
                <Columns>
                    <asp:CommandField ButtonType="Button" DeleteText="Delete Restaurant" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:Button ID="btn_Back" runat="server" class="btn btn-primary" Text="Back to Admin Dashboard" OnClick="btn_Back_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

