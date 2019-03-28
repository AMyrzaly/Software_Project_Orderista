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
                <td>
                             <asp:Button ID="btnNew" runat="server" Text="New Orders" OnClick="btnNew_Click" />
       
                </td>
            </tr>
              <tr>
                <td>
                            <asp:Button ID="btnInProgress" runat="server" Text="In Progress Orders" OnClick="btnInProgress_Click" />
        
                </td>
            </tr>
              <tr>
                <td>
                            <asp:Button ID="btnCompleted" runat="server" Text="Completed Orders" OnClick="btnCompleted_Click" />
        
                </td>
            </tr>
        </table>
    </div>

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>


