<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="RestaurantHome.aspx.cs" Inherits="Restaurant_RestaurantHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="padding: 50px 0 100px; position: relative">
        <div style="position: absolute; right: 20px; top: 50px;">
            <span style="font-weight: bold; color: black; padding-right: 10px;">
                <asp:Label ID="lblUserDetails" runat="server"></asp:Label>
            </span>
            <asp:Button class="backclrBtn btn btn-outline-warning" ID="logOutBtn" runat="server" Text="LogOut" OnClick="logOutBtn_Click" />
        </div>
        <div>
        
        <div class="icons" style="display: flex; justify-content: space-around; width: 900px; margin: 0 auto;">
            <div style="display: flex; flex-direction: column; justify-content: space-around">
                <asp:ImageButton ID="imgBtnNew" runat="server" ImageUrl="~/Restaurant_Images/New.png" OnClick="btnNew_Click" Height="142px" />
                <span style="text-align: center; color: black; font-weight: bold; padding-top: 20px;">New Orders</span>
            </div>
            <div style="display: flex; flex-direction: column; justify-content: space-around">
                <asp:ImageButton ID="imgBtnInProgress" runat="server" ImageUrl="~/Restaurant_Images/InProgress.png" OnClick="btnInProgress_Click" Height="142px" />
                <span style="text-align: center; color: black; font-weight: bold; padding-top: 20px;">In Progress Orders</span>
            </div>
            <div style="display: flex; flex-direction: column; justify-content: space-around">
                <asp:ImageButton ID="imgBtnCompleted" runat="server" ImageUrl="~/Restaurant_Images/Completed.png" OnClick="btnCompleted_Click" Height="142px" />
                <span style="text-align: center; color: black; font-weight: bold; padding-top: 20px;">Completed Orders</span>
            </div>
            <div style="display: flex; flex-direction: column; justify-content: space-around">
                <asp:ImageButton ID="btnAddMenu" runat="server" ImageUrl="~/Restaurant_Images/AddMenu.png" OnClick="btnAddMenu_Click" Height="142px" />
                <span style="text-align: center; color: black; font-weight: bold; padding-top: 20px;">Add Menu Item</span>
            </div>
            <div style="display: flex; flex-direction: column; justify-content: space-around">
                <asp:ImageButton ID="btnDeleteMenu" runat="server" ImageUrl="~/Restaurant_Images/DeleteMenu.png" OnClick="btnDeleteMenu_Click" Height="142px" />
                <span style="text-align: center; color: black; font-weight: bold; padding-top: 20px;">Delete Menu Item</span>
            </div>
        </div>
    </div>
   </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>


