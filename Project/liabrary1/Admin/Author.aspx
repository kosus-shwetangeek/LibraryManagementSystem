<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="liabrary1.Admin.Author" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

     
<asp:Content ID="Content3" ContentPlaceHolderID="content1" runat="server">
    <div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
    ConnectionString="<%$ ConnectionStrings:liabraryConnectionString4 %>"
    SelectCommand="SELECT Author_Id,  auth_FirstName, auth_MiddleName, auth_LastName,Gender FROM author"
    DeleteCommand="DELETE FROM author
         WHERE  (Author_Id= @Author_Id)"
    InsertCommand="INSERT INTO author(Author_Id, auth_FirstName, auth_MiddleName, auth_LastName, Gender) VALUES (@Author_Id, @auth_FirstName, @auth_MiddleName, @auth_LastName ,@Gender)"
    UpdateCommand="UPDATEauthor SET Author_Id=@Author_Id, auth_FirstName=@auth_FirstName, auth_MiddleName=@auth_MiddleName,auth_LastName=@auth_LastName,Gender=@Gender  WHERE (Author_Id= @Author_Id)"
         ProviderName="<%$ ConnectionStrings:liabraryConnectionString4.ProviderName %>">

        <DeleteParameters>
            <asp:Parameter Name="issue_id" />
            <asp:Parameter Name="auth_FirstName" />
            <asp:Parameter Name="auth_MiddleName" />
            <asp:Parameter Name="auth_LastName" />
           <asp:Parameter Name="Gender" />
           
        </DeleteParameters>
        <InsertParameters>
           
            <asp:Parameter Name="issue_id" />
            <asp:Parameter Name="auth_FirstName" />
            <asp:Parameter Name="auth_MiddleName" />
            <asp:Parameter Name="auth_LastName" />
             <asp:Parameter Name="Gender" />
          
        </InsertParameters>
        <UpdateParameters>
             <asp:Parameter Name="issue_id" />
            <asp:Parameter Name="auth_FirstName" />
            <asp:Parameter Name="auth_MiddleName" />
            <asp:Parameter Name="auth_LastName" />
             <asp:Parameter Name="Gender" />
            
        </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Author_Id" DataSourceID="SqlDataSource1" Width="535px">
             <Columns>
                   <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="true" />
                 <asp:BoundField DataField="Author_Id" HeaderText="Author_Id" InsertVisible="False" ReadOnly="True" SortExpression="Author_Id" />
                 <asp:BoundField DataField="auth_FirstName" HeaderText="auth_FirstName" SortExpression="auth_FirstName" />
                 <asp:BoundField DataField="auth_MiddleName" HeaderText="auth_MiddleName" SortExpression="auth_MiddleName" />
                 <asp:BoundField DataField="auth_LastName" HeaderText="auth_LastName" SortExpression="auth_LastName" />
                 <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
             </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:liabraryConnectionString28 %>" ProviderName="<%$ ConnectionStrings:liabraryConnectionString28.ProviderName %>" SelectCommand="SELECT author.* FROM author"></asp:SqlDataSource>
        <br />
       
        <br />
        <br />
     </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Insert"  Width="72px" OnClick="Button1_Click" />
    </div>

</asp:Content>
