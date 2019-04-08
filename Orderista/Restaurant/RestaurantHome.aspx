<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="RestaurantHome.aspx.cs" Inherits="Restaurant_RestaurantHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Label ID="lblUserDetails" runat="server"></asp:Label>
        <br />
      <asp:Button class="backclrBtn" ID="logOutBtn" runat="server" Text="LogOut" OnClick="logOutBtn_Click" />
        <br />
      <br />
    <div>
        <table>
            <tr>
                <td colspan="3">
                    <asp:ImageButton ID="imgBtnNew" runat="server" ImageUrl="~/Restaurant_Images/New.png"  OnClick="btnNew_Click" Height="142px"/>
       
                </td>
                <td colspan="3">
                    <asp:ImageButton ID="imgBtnInProgress" runat="server" ImageUrl="~/Restaurant_Images/InProgress.png" OnClick="btnInProgress_Click"/>
                </td>
                <td colspan="3">
                    <asp:ImageButton ID="imgBtnCompleted" runat="server" ImageUrl="~/Restaurant_Images/Completed.png" OnClick="btnCompleted_Click" />
                </td>
            </tr>
              <tr>
                <td colspan="3">
                    <asp:Label ID="lblNew" runat="server" Text="New Orders"></asp:Label>
                </td>
                  <td colspan="3">
                          <asp:Label ID="lblInProgress" runat="server" Text="In Progress Orders"></asp:Label>
                
                  </td>
                  <td colspan="3">
                          <asp:Label ID="lblCompleted" runat="server" Text="Completed Orders"></asp:Label>
                
                  </td>
            </tr>
              <tr>
                <td colspan ="3">
                  <asp:ImageButton ID="btnAddMenu" runat="server" ImageUrl="~/Restaurant_Images/AddMenu.png" OnClick="btnAddMenu_Click" />
                           
                </td>
                  <td colspan="3">
                      <asp:ImageButton ID="btnDeleteMenu" runat="server" ImageUrl="~/Restaurant_Images/DeleteMenu.png" />
                  </td>
            </tr>
             <tr>
                <td colspan="3">
                    <asp:Label ID="lblAdd" runat="server" Text="Add Menu Item"></asp:Label>
                </td>
                  <td colspan="3">
                          <asp:Label ID="lblDelete" runat="server" Text="Delete Menu Item"></asp:Label>
                
                  </td>
                 </tr>
        </table>
    </div>

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>


