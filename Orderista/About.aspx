<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        p {
            font-size: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <div>
            <b id="docs-internal-guid-71a122b5-7fff-9fb0-cb77-948cd0382861" style="font-weight:normal;">
            <p>
             If you want to skip the long lines for food on campus and don’t want to drive far for the food, use Orderista. We’ll have the food that you want ready for pickup in under 45 minutes.</p>
            <p>Orderista is an online food ordering service that caters to Centennial College Campuses. As Centennial College students ourselves, we know the struggle of getting food while on a tight schedule.
                    </br>
                    Login and place an order today.</span> </p>
                <p>
                    <asp:HyperLink ID="hyperLinkForgotPassword" runat="server" NavigateUrl="#">Website Tutorial</asp:HyperLink>
                </p>
            </b>
            <meta charset="utf-8" />
            <br />
            <div>
                <table style="margin: auto" align="center">
                    <tr>
                        <td>
                            <asp:Image ID="sPoutineLogo" runat="server" Height="150" ImageUrl="~/Images/sPoutine.jpg" Width="200" />
                        </td>
                        <td>
                            &nbsp<asp:Image ID="timLogo" runat="server" Height="150" ImageUrl="~/Images/Logo-tim.png" Width="150" />
                        </td>
                        <td>
                             &nbsp<asp:Image ID="subwayLogo" runat="server" Height="150" ImageUrl="~/Images/Logo-subway.png" Width="150" />
                        </td>
                        <td>
                             &nbsp<asp:Image ID="EBurgerLogo" runat="server" Height="150" ImageUrl="~/Images/epicBurger.jpg" Width="200" />
                        </td>
                        <td>
                             &nbsp<asp:Image ID="pizzaLogo" runat="server" Height="150" ImageUrl="~/Images/Logo-pizzapizza.png" Width="150" />
                        </td>
                    </tr>
                </table>
            </div>
            <br class="Apple-interchange-newline" />
            <p>
                &nbsp;</p>
        </div>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
