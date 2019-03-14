<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="CountdownWindow.aspx.cs" Inherits="CountdownWindow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:ScriptManager ID="countDownSp" runat="server"></asp:ScriptManager>
        <asp:Timer ID="timer" runat="server" Interval="1000" onTick="timer_Tick"></asp:Timer>

      <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
          <ContentTemplate>
              <asp:Literal ID="litMsg" runat="server" ></asp:Literal> <br />
              <asp:Button ID="btnProceed" runat="server" Text="Proceed to Payment" OnClick="btnProceed_Click" /><br />
              <asp:Button ID="btnCancel" runat="server" Text="Cancel Order" OnClick="btnCancel_Click" />
          </ContentTemplate>
          <Triggers>
              <asp:AsyncPostBackTrigger ControlID="timer" EventName="tick"/>

          </Triggers>
      </asp:UpdatePanel>

     </asp:Content>

     <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>