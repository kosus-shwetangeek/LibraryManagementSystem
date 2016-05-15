﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="liabrary1.PageCommon.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="Server">
    <div id="content" >
        
        <div class="search">
            <br />
            <center><p><b> Search Books </b> </p> </center>
            <table style="width: 100%">
            <tr>
                <td colspan="3">Search On The Basis Of</td>
            </tr>
            <tr>
                <td>Book Name :
                    <asp:TextBox ID="txtBookname" runat="server" placeholder="Book Name"></asp:TextBox></td>
                <td>Author Name :
                    <asp:TextBox ID="txtAuthorname" runat="server" placeholder="Author Name"></asp:TextBox></td>
                <td>Category :
                    <asp:DropDownList ID="dlCategory" runat="server" CssClass="ddstyle">
                        <asp:ListItem>-Select-</asp:ListItem>
                        <asp:ListItem>Hindi </asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Maths</asp:ListItem>
                        <asp:ListItem>Chemistry</asp:ListItem>
                        <asp:ListItem>Physic</asp:ListItem>
                        <asp:ListItem>Magzine</asp:ListItem>
                        <asp:ListItem>Novel</asp:ListItem>
                        <asp:ListItem>Computer</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                    <center><asp:ImageButton ID="imgSearchbooks" runat="server" ImageUrl="~/Images/search.png" OnClick="imgSearchbooks_Click"></asp:ImageButton></center>
                </td>
            </tr>
           
        </table>
            
        </div>
         <asp:Panel ID="Panel1" runat="server" Visible="false">
                     <asp:Label ID="lblmsg" runat="server" Text="Please Enter BookName or AuthorName or Select the category"></asp:Label>
            </asp:Panel>
        
    </div>
</asp:Content>
