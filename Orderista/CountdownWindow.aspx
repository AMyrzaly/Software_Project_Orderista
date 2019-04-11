<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="CountdownWindow.aspx.cs" Inherits="CountdownWindow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding: 50px 0 100px; position: relative;">
        <asp:ScriptManager ID="countDownSp" runat="server"></asp:ScriptManager>
        <asp:Timer ID="timer" runat="server" Interval="1000" OnTick="timer_Tick"></asp:Timer>

        <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div style="width: 400px; margin: 0 auto; display: flex; flex-direction: column; justify-content: center; align-items: center">
                    <div style="width: 100%; text-align: center; color: black; font-weight: bold">
                        <asp:Literal ID="litMsg" runat="server"></asp:Literal>
                    </div>
                    <div style="margin-top: 25px; width: 100%; display: flex; justify-content: space-around; align-items: center">
                        <asp:Button ID="btnProceed" CssClass="actionBtn btn btn-primary" runat="server" Text="Proceed to Payment" OnClick="btnProceed_Click" />&nbsp&nbsp
                        <asp:Button ID="btnCancel" CssClass="actionBtn btn btn-outline-danger" runat="server" Text="Cancel Order" OnClick="btnCancel_Click" />
                    </div>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="timer" EventName="tick" />

            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
