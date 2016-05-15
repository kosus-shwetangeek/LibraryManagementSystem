<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeBehind="Publisher.aspx.cs" Inherits="liabrary1.Admin.Publisher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="server">
      
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
            DataSourceID="SqlDataSource1" DataKeyNames="Publication_ID" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Height="133px" Width="932px" >
            <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="true" />
                <asp:BoundField DataField="Publication_ID" HeaderText="Publication_ID" ReadOnly="True" SortExpression="Publication_ID" />
                <asp:BoundField DataField="Publisher_Name" HeaderText="Publisher_Name" SortExpression="Publisher_Name" />
                <asp:BoundField DataField="Publication_Country" HeaderText="Publication_Country" SortExpression="Publication_Country" />
            </Columns>
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:liabraryConnectionString31 %>" ProviderName="<%$ ConnectionStrings:liabraryConnectionString31.ProviderName %>" SelectCommand="SELECT publication.* FROM publication"></asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
    <br />
    </asp:Content>
