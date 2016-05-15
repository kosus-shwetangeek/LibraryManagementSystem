<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="liabrary1.Admin.Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="server">
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
    ConnectionString="<%$ ConnectionStrings:liabraryConnectionString4 %>"
    SelectCommand="SELECT issue_Id, Accession_No, Book_Name, issue_date, return_date, member_Id FROM issue_record"
    DeleteCommand="DELETE FROM issue_record
         WHERE  (issue_id = @issue_id)"
    InsertCommand="INSERT INTO issue_record(issue_Id, Accession_No, Book_Name, issue_date, return_date, member_Id) VALUES (@issue_Id, @Accession_No, @Book_Name, @issue_date, @return_date, @member_Id)"
    UpdateCommand="UPDATE issue_record SET issue_Id=@issue_Id, Accession_No=@Accession_No, Book_Name=@Book_Name, issue_date=@issue_date, return_date=@return_date, member_Id=@member_Id WHERE (issue_Id = @issue_id)"
         ProviderName="<%$ ConnectionStrings:liabraryConnectionString4.ProviderName %>">

        <DeleteParameters>
            <asp:Parameter Name="issue_id" />
            <asp:Parameter Name="Accession_No" />
            <asp:Parameter Name="Book_Name" />
            <asp:Parameter Name="issue_date" />
           <asp:Parameter Name="return_date" />
            <asp:Parameter Name="member_Id" />
        </DeleteParameters>
        <InsertParameters>
           
            <asp:Parameter Name="issue_id" />
            <asp:Parameter Name="Accession_No" />
            <asp:Parameter Name="Book_Name" />
            <asp:Parameter Name="issue_date" />
             <asp:Parameter Name="return_date" />
            <asp:Parameter Name="member_Id" />
        </InsertParameters>
        <UpdateParameters>
             <asp:Parameter Name="issue_id" />
            <asp:Parameter Name="Accession_No" />
            <asp:Parameter Name="Book_Name" />
            <asp:Parameter Name="issue_date" />
             <asp:Parameter Name="return_date" />
            <asp:Parameter Name="member_Id" />
        </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
            DataSourceID="SqlDataSource2" DataKeyNames="Staff_Id" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Height="133px" Width="932px" >
            <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="true" />
                <asp:BoundField DataField="Staff_Id" HeaderText="Staff_Id" InsertVisible="False" ReadOnly="True" SortExpression="Staff_Id" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                <asp:BoundField DataField="middle_name" HeaderText="middle_name" SortExpression="middle_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                <asp:BoundField DataField="designation" HeaderText="designation" SortExpression="designation" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:liabraryConnectionString19 %>" ProviderName="<%$ ConnectionStrings:liabraryConnectionString19.ProviderName %>" SelectCommand="SELECT staff.* FROM staff"></asp:SqlDataSource>
        <br />
       <%-- <br />
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">INSERT
            </asp:LinkButton>--%>
        <br />
        <br />
     </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" Width="72px" />
    </div>

    </asp:Content>

