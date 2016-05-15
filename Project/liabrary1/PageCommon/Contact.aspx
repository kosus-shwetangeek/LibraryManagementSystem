<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="liabrary1.PageCommon.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="server">
    <p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        <b>Address:-</b>
        <b>Near Sinhgad NBN college,pune</b>

    </p>
<p>
  
    <p><b>Contact NO:-</b>
&nbsp;<b>1234567891 </b>
    </p>
    <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
        <asp:Timer Id="Timer1" runat="server" Interval="10000" OnTick="Timer1_Tick"></asp:Timer>
          <asp:Image ID="Image1" height="199px" Width="294px" runat="server" />
   

</asp:Content>
