<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeBehind="issue_record.aspx.cs" Inherits="liabrary1.Admin.issue_record" %>
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
            DataSourceID="SqlDataSource1" DataKeyNames="issue_Id" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Height="133px" Width="932px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="true" />
                
                <asp:TemplateField HeaderText="issue_Id" InsertVisible="true" SortExpression="issue_Id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("issue_Id") %>'></asp:Label>

                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("issue_Id") %>'></asp:Label>
                    </ItemTemplate>
                    
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Accession_No" SortExpression="Accession_No">
                    <EditItemTemplate>
                        <asp:TextBox ID="Acession" runat="server" Text='<%# Bind("Accession_No") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Accession_No") %>'></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Book_Name" SortExpression="Book_Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="bookname" runat="server" Text='<%# Bind("Book_Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Book_Name") %>'></asp:Label>
                    </ItemTemplate>
                     
                </asp:TemplateField>
                <asp:TemplateField HeaderText="issue_date" SortExpression="issue_date">
                    <EditItemTemplate>
                        <asp:TextBox ID="issuedt" runat="server" Text='<%# Bind("issue_date") %>'></asp:TextBox>
                       
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("issue_date") %>'></asp:Label>
                    </ItemTemplate>
                  
 
</asp:TemplateField> 

                <asp:TemplateField HeaderText="return_date" SortExpression="return_date">
                    <EditItemTemplate>
                        
                        <asp:TextBox ID="returndt" runat="server" Text='<%# Bind("return_date") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("return_date") %>'></asp:Label>
                    </ItemTemplate>
                   
                </asp:TemplateField>
                <asp:TemplateField HeaderText="member_Id" SortExpression="member_Id">
                    <EditItemTemplate>
                        <asp:TextBox ID="memberid" runat="server" Text='<%# Bind("member_Id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("member_Id") %>'></asp:Label>
                    </ItemTemplate>
                  
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
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
