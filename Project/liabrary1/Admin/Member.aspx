<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="liabrary1.Admin.Member" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="server">
   <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
    ConnectionString="<%$ ConnectionStrings:liabraryConnectionString4 %>"
    SelectCommand="SELECT Sr, Member_Id, Type, issue_date, return_date, member_Id FROM member"
    DeleteCommand="DELETE FROM member
         WHERE  (Member_Id = @Member_Id)"
    InsertCommand="INSERT INTO member(Sr, Member_Id, Type,Ref_Id) VALUES (@Sr, @Member_Id, @Type, @Ref_Id)"
    UpdateCommand="UPDATE member SET Sr=@Sr, Member_Id=@Member_Id, Type=@Type, Ref_Id=@Ref_Id) where Member_Id=@Member_Id"
         ProviderName="<%$ ConnectionStrings:liabraryConnectionString4.ProviderName %>">

        <DeleteParameters>
            <asp:Parameter Name="Sr" />
            <asp:Parameter Name="Member_Id" />
            <asp:Parameter Name="Type" />
            <asp:Parameter Name="Ref_Id" />
           
        </DeleteParameters>
        <InsertParameters>
           
            <asp:Parameter Name="Sr" />
            <asp:Parameter Name="Member_Id" />
            <asp:Parameter Name="Type" />
            <asp:Parameter Name="Ref_Id" />
            
        </InsertParameters>
        <UpdateParameters>
             <asp:Parameter Name="Sr" />
            <asp:Parameter Name="Member_Id" />
            <asp:Parameter Name="Type" />
            <asp:Parameter Name="Ref_Id" />
            
        </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
       <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
            DataSourceID="SqlDataSource3" DataKeyNames="Member_Id" Height="133px" Width="932px">
            <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="true" />
                 <asp:TemplateField HeaderText="Sr" InsertVisible="true" SortExpression="Sr">
                    <EditItemTemplate>
                        <asp:Label ID="Sr" runat="server" Text='<%# Eval("Sr") %>'></asp:Label>

                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Sr" runat="server" Text='<%# Bind("Sr") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Member_Id" InsertVisible="true" SortExpression="Member_Id">
                    <EditItemTemplate>
                        <asp:Label ID="Member_Id" runat="server" Text='<%# Eval("Member_Id") %>'></asp:Label>

                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Member_Id" runat="server" Text='<%# Bind("Member_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Type" InsertVisible="true" SortExpression="Type">
                    <EditItemTemplate>
                        <asp:Label ID="Type" runat="server" Text='<%# Eval("Type") %>'></asp:Label>

                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Type" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ref_Id" InsertVisible="true" SortExpression="Ref_Id">
                    <EditItemTemplate>
                        <asp:Label ID="Ref_Id" runat="server" Text='<%# Eval("Ref_Id") %>'></asp:Label>

                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Ref_Id" runat="server" Text='<%# Bind("Ref_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:liabraryConnectionString20 %>" ProviderName="<%$ ConnectionStrings:liabraryConnectionString20.ProviderName %>" SelectCommand="SELECT member.* FROM member"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:liabraryConnectionString10 %>" ProviderName="<%$ ConnectionStrings:liabraryConnectionString10.ProviderName %>" SelectCommand="SELECT member.* FROM member"></asp:SqlDataSource>
        <br />
      
        <br />
        <br />
     </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" Width="72px" />
    </div>

</asp:Content>
