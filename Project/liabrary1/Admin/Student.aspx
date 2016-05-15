<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="liabrary1.Admin.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="server">
   
   
    <div>
        <br />
        <br />
      
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Stud_Id" DataSourceID="SqlDataSource1" BorderStyle="Solid" Width="780px">
            <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="true" />
                <asp:BoundField  HeaderText="class_section" SortExpression="class_section" />
                <asp:BoundField    HeaderText="Stud_Id" SortExpression="Stud_Id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField  HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField  HeaderText="student_Name" SortExpression="student_Name" />
                <asp:BoundField HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField  HeaderText="contactNo" SortExpression="contactNo" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:liabraryConnectionString9 %>" ProviderName="<%$ ConnectionStrings:liabraryConnectionString9.ProviderName %>" SelectCommand="SELECT student.* FROM student"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:liabraryConnectionString14 %>" ProviderName="<%$ ConnectionStrings:liabraryConnectionString14.ProviderName %>" SelectCommand="SELECT staff.* FROM staff"></asp:SqlDataSource>
        <br />
        <br />
     </div>
    <div>
    </div>
</asp:Content>
