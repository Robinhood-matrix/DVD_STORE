<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="MasterPageDemo.Admin.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h2 style="margin-top: 7%;  margin-left: 48%">Manage Users 
          <span style="font-size: 1em; ">
    <i class="fas fa-users"></i>
</span></h2>
    
     <asp:GridView ID="GridView1" style="margin-left:32% ; margin-top:2%" class="table table-striped" runat="server"  DataSourceID="insertUsersSqlDataSource"   Width="50%" AllowSorting="True" PageSize="5" BackColor="White" BorderColor="#999999" AutoGenerateColumns="False"  BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="None" Font-Bold="False" Font-Overline="False" Font-Strikeout="False" DataKeyNames="UserNumber">
         <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="UserNumber" HeaderText="UserNumber" SortExpression="UserNumber" ReadOnly="True" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
              <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
              <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
        </Columns>
      
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Font-Size="19px" BorderStyle="Groove" />
         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
         <RowStyle Font-Size="18px" BorderStyle="Inset" />
         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#808080" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#383838" />
      
    </asp:GridView>


<asp:SqlDataSource ID="insertUsersSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dvd_storeConnectionString1 %>" SelectCommand="SELECT * FROM [User]" DeleteCommand="DELETE FROM [User] WHERE [UserNumber] = @UserNumber" InsertCommand="INSERT INTO [User] ([UserNumber], [UserName], [UserType], [UserPassword]) VALUES (@UserNumber, @UserName, @UserType, @UserPassword)" UpdateCommand="UPDATE [User] SET [UserName] = @UserName, [UserType] = @UserType, [UserPassword] = @UserPassword WHERE [UserNumber] = @UserNumber">
    <DeleteParameters>
        <asp:Parameter Name="UserNumber" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UserNumber" Type="Int32" />
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="UserType" Type="String" />
        <asp:Parameter Name="UserPassword" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="UserType" Type="String" />
        <asp:Parameter Name="UserPassword" Type="String" />
        <asp:Parameter Name="UserNumber" Type="Int32" />
    </UpdateParameters>

    </asp:SqlDataSource>


</asp:Content>
