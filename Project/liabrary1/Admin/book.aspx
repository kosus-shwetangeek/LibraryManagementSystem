<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeBehind="book.aspx.cs" Inherits="liabrary1.Admin.book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="server">

     <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
    ConnectionString="<%$ ConnectionStrings:liabraryConnectionString4 %>"
    SelectCommand="SELECT Accession_No,ISBN, Book_Titile, Publication,Pages, Edition, Price,Rank,Shelf,Book_Status FROM book"
    DeleteCommand="DELETE FROM book WHERE (Accession_No = @Accession_No)"
    InsertCommand="INSERT INTO book(Accession_No,ISBN, Book_Titile, Publication, Pages,Edition,Price,Rank,Shelf,Book_Status) VALUES (@ Accession_No, @ISBN, @Book_Titile, @Publication, @Pages,@Edition,@Price,@Rank,@Shelf,@Book_Status)"
    UpdateCommand="UPDATE book SET  Accession_No=@Accession_No, ISBN=@ISBN, Book_Titile=@Book_Titile, Publication=@Publication, Pages=@Pages,Edition=@Edition,Price=@Price ,Rank=@Rank,Shelf=@Shelf,Book_Status=@Book_Status "
         ProviderName="<%$ ConnectionStrings:liabraryConnectionString4.ProviderName %>">

        <DeleteParameters>
            <asp:Parameter Name="Accession_No" />
               <asp:Parameter Name="ISBN" />
            <asp:Parameter Name="Book_Titile" />
         
            <asp:Parameter Name="Publication" />
           <asp:Parameter Name="Pages" />
            <asp:Parameter Name="Edition" />
           <asp:Parameter Name="Price" />
             <asp:Parameter Name="Rank" />
             <asp:Parameter Name="Shelf" />
            <asp:Parameter Name="Book_Status" />
        </DeleteParameters>
        <InsertParameters>
           
            <asp:Parameter Name="Accession_No" />
               <asp:Parameter Name="ISBN" />
            <asp:Parameter Name="Book_Titile" />
            <asp:Parameter Name="Publication" />
            <asp:Parameter Name="Pages" />
             <asp:Parameter Name="Price" />
             <asp:Parameter Name="Rank" />
             <asp:Parameter Name="Shelf" />
            <asp:Parameter Name="Book_Status" />
            
        </InsertParameters>
        <UpdateParameters>
             <asp:Parameter Name="Accession_No" />
               <asp:Parameter Name="ISBN" />
            <asp:Parameter Name="Book_Titile" />
            <asp:Parameter Name="Publication" />
            <asp:Parameter Name="Pages" />
             <asp:Parameter Name="Edition" />
             <asp:Parameter Name="Price" />
             <asp:Parameter Name="Rank" />
             <asp:Parameter Name="Shelf" />
             <asp:Parameter Name="Book_Status" />

        </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            DataSourceID="SqlDataSource1" DataKeyNames="Accession_No"  Height="133px" Width="932px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" >
            <Columns>

                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="true" ShowSelectButton="True" />
                
                <asp:TemplateField HeaderText="Accession_No" InsertVisible="true" SortExpression="Accession_No">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Accession_No") %>'></asp:Label>

                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Accession_No") %>'></asp:Label>
                    </ItemTemplate>
                    
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ISBN" SortExpression="ISBN">
                    <EditItemTemplate>
                        <asp:TextBox ID="ISBN" runat="server" Text='<%# Bind("ISBN") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ISBN") %>'></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Book_Title" SortExpression="Book_Titile">
                    <EditItemTemplate>
                        <asp:TextBox ID="Book_Titile" runat="server" Text='<%# Bind("Book_Titile") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Book_Titile") %>'></asp:Label>
                    </ItemTemplate>
                     
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Publication" SortExpression="Publication">
                    <EditItemTemplate>
                        <asp:TextBox ID="Publication" runat="server" Text='<%# Bind("Publication") %>'></asp:TextBox>
                       
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Publication") %>'></asp:Label>
                    </ItemTemplate>
                  
 
</asp:TemplateField> 

                <asp:TemplateField HeaderText="Pages" SortExpression="Pages">
                    <EditItemTemplate>
                        
                        <asp:TextBox ID="Pages" runat="server" Text='<%# Bind("Pages") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Pages" runat="server" Text='<%# Bind("Pages") %>'></asp:Label>
                    </ItemTemplate>
                   
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Edition" SortExpression="Edition">
                    <EditItemTemplate>
                        
                        <asp:TextBox ID="Edition" runat="server" Text='<%# Bind("Edition") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Edition" runat="server" Text='<%# Bind("Edition") %>'></asp:Label>
                    </ItemTemplate>
                   
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Price" SortExpression="Price">
                    <EditItemTemplate>
                        
                        <asp:TextBox ID="Price" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Price" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                   
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Rank" SortExpression="Price">
                    <EditItemTemplate>
                        
                        <asp:TextBox ID="Rank" runat="server" Text='<%# Bind("Rank") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Rank" runat="server" Text='<%# Bind("Rank") %>'></asp:Label>
                    </ItemTemplate>
                   
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Shelf" SortExpression="Shelf">
                    <EditItemTemplate>
                        
                        <asp:TextBox ID="Shelf" runat="server" Text='<%# Bind("Shelf") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Shelf" runat="server" Text='<%# Bind("Shelf") %>'></asp:Label>
                    </ItemTemplate>
                   
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Book_Status" SortExpression="Book_Status">
                    <EditItemTemplate>
                        
                        <asp:TextBox ID="Book_Status" runat="server" Text='<%# Bind("Book_Status") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Book_Status" runat="server" Text='<%# Bind("Book_Status") %>'></asp:Label>
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
