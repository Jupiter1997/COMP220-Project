<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Books Page</h2>
   <div id="divBook">
       <h3>Book Collection</h3>
       <p>
           <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ShalomLibraryConnectionString %>' SelectCommand="SELECT [Title], [Author], [ISBN] FROM [Book]"></asp:SqlDataSource>
 
           <asp:GridView ID="BookGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="744px" OnSelectedIndexChanged="BookGrid_SelectedIndexChanged" DataKeyNames="Title">
               <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
               <Columns>
                   <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
                   <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author"></asp:BoundField>
                   <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN"></asp:BoundField>
                   <asp:ButtonField CommandName="Select" Text="Select" />
               </Columns>
               <EditRowStyle BackColor="#999999"></EditRowStyle>

               <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

               <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White" VerticalAlign="Middle"></PagerStyle>

               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" VerticalAlign="Middle" HorizontalAlign="Center"></RowStyle>

               <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

               <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

               <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

               <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

               <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
           </asp:GridView>

           <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ShalomLibrary %>' SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
       </p>
   </div>
    <p><a href="AddBook.aspx">Click to Add another Book</a></p>

</asp:Content>

