<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteRestaurant.aspx.cs" Inherits="DeleteRestaurant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
 
        <asp:Label ID="UserAdmin" runat="server" Text=""></asp:Label>
        <h2>Remove Restaurant Page</h2>
        <asp:GridView ID="GridDeleteRestaurant" runat="server" OnRowDeleting="DelRestaurant" Height="229px" Width="507px" Font-Size="Medium">
            <Columns>
                <asp:CommandField ButtonType="Button" DeleteText="Delete Restaurant" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="btn_Back" runat="server" Text="Back to Admin Page" OnClick="btn_Back_Click" />

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

