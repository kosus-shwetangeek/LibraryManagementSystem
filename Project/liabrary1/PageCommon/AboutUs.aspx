<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="liabrary1.PageCommon.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="server">
   
    <b>singad  liabrary provide online issuing and returning of book.This facility save time.</b>
     <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
        <asp:Timer Id="Timer1" runat="server" Interval="10000" OnTick="Timer1_Tick"></asp:Timer>
          <asp:Image ID="Image1" height="199px" Width="294px" runat="server" />
</asp:Content>
