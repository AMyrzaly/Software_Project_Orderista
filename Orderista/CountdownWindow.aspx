<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="CountdownWindow.aspx.cs" Inherits="CountdownWindow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:ScriptManager ID="countDownSp" runat="server"></asp:ScriptManager>
        <asp:Timer ID="timer" runat="server" Interval="1000" onTick="timer_Tick"></asp:Timer>

      <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
          <ContentTemplate>
              <asp:Literal ID="litMsg" runat="server" ></asp:Literal> <br />
              <div style="margin-top: 15px">
                    <asp:Button ID="btnProceed" CssClass="actionBtn" runat="server" Text="Proceed to Payment" OnClick="btnProceed_Click" />
                    <asp:Button ID="btnCancel" CssClass="actionBtn" runat="server" Text="Cancel Order" OnClick="btnCancel_Click" />
              </div>
          </ContentTemplate>
          <Triggers>
              <asp:AsyncPostBackTrigger ControlID="timer" EventName="tick"/>

          </Triggers>
      </asp:UpdatePanel>

     </asp:Content>

     <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>