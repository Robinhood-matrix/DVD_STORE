<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoanDvd.aspx.cs" Inherits="MasterPageDemo.User.PurchaseItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h2 style="margin-left: 0%; margin-bottom: -2%">Loan Dvd </h2>
    
       
           
           
    <h3 style="margin-left: 6.5%; margin-top: 2%">&nbsp;</h3>
            <h3 style="margin-left: 6.5%; margin-top: 2%">&nbsp;</h3>
            <h3 style="margin-left: 6.5%; margin-top: 2%">Loan Details of Member From Last 31 Days.</h3>
    <p style="margin-left: 6.5%; margin-top: 2%">Member Number&nbsp;&nbsp;&nbsp; <asp:TextBox ID="mLastTextBox" runat="server" Height="26px" Width="143px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Search_btn" runat="server" Height="38px" Text="Search" Width="85px" OnClick="Search_btn_Click" />

            <asp:SqlDataSource ID="getMemberDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dvd_storeConnectionString %>" SelectCommand="SELECT [MemberFirstName] FROM [Member]"></asp:SqlDataSource>

            <asp:GridView ID="GridView2" class="table table-striped table-bordered mt-4" runat="server"   CellPadding="4" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="DVDTitle" HeaderText="DVDTitle" SortExpression="DVDTitle" />
                    <asp:BoundField DataField="CopyNumber" HeaderText="CopyNumber" SortExpression="CopyNumber" />
                    <asp:BoundField DataField="MemberNumber" HeaderText="MemberNumber" SortExpression="MemberNumber" />
                    <asp:BoundField DataField="LoanTypeNumber" HeaderText="LoanTypeNumber" SortExpression="LoanTypeNumber" />
                    <asp:BoundField DataField="DateOut" HeaderText="DateOut" SortExpression="DateOut" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
    </p>
    <div class="row" style="margin-left: 6.5%">
        <p>
            <%--<asp:TextBox ID="customerTextBox" BackColor="White" CssClass="form-control mt-2" BorderColor="#CCCCCC" runat="server" Style="width: 300px" ReadOnly="true"></asp:TextBox>--%>
        </p>
    </div>

    <div class="container" style="margin-left: 5.5%; margin-top: -3%">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dvd_storeConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customer] ([CustomerId], [CustomerName], [Address], [ContactNo], [Email], [CustomerType]) VALUES (@CustomerId, @CustomerName, @Address, @ContactNo, @Email, @CustomerType)" SelectCommand="SELECT DVDTitle.DVDTitle, DVDCopy.CopyNumber, Member.MemberNumber, Loan.DateOut, Loan.LoanTypeNumber FROM Loan INNER JOIN Member ON Loan.MemberNumber = Member.MemberNumber INNER JOIN DVDCopy ON Loan.CopyNumber = DVDCopy.CopyNumber INNER JOIN DVDTitle ON DVDCopy.DVDNumber = DVDTitle.DVDNumber WHERE (Loan.DateOut &gt;= DATEADD(day, - 31, GETDATE())) AND (Loan.DateOut &lt;= GETDATE()) AND (Loan.MemberNumber = @MemberNumber)" UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [Address] = @Address, [ContactNo] = @ContactNo, [Email] = @Email, [CustomerType] = @CustomerType WHERE [CustomerId] = @CustomerId">
            <DeleteParameters>
                <asp:Parameter Name="CustomerId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerId" Type="Int32" />
                <asp:Parameter Name="CustomerName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="CustomerType" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="mLastTextBox" Name="MemberNumber" PropertyName="Text" DefaultValue="1" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustomerName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="CustomerType" Type="String" />
                <asp:Parameter Name="CustomerId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
     

    <br />
            <h3 style="margin-left: 6.5%; margin-top: 2%">Loan Details of Member From Last 31 Days.</h3>
    <p style="margin-left: 6.5%; margin-top: 2%">Member Number&nbsp;&nbsp;&nbsp; <asp:TextBox ID="mLastTextBox0" runat="server" Height="26px" Width="143px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Search_btn0" runat="server" Height="38px" Text="Search" Width="85px" OnClick="Search_btn_Click" />

            <asp:SqlDataSource ID="getMemberDataSource0" runat="server" ConnectionString="<%$ ConnectionStrings:dvd_storeConnectionString %>" SelectCommand="SELECT [MemberFirstName] FROM [Member]"></asp:SqlDataSource>

            <asp:GridView ID="GridView3" class="table table-striped table-bordered mt-4" runat="server"   CellPadding="4" AutoGenerateColumns="False" DataSourceID="sqlDatasource8" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="DVDTitle" HeaderText="DVDTitle" SortExpression="DVDTitle" />
                    <asp:BoundField DataField="CopyNumber" HeaderText="CopyNumber" SortExpression="CopyNumber" />
                    <asp:BoundField DataField="MemberNumber" HeaderText="MemberNumber" SortExpression="MemberNumber" />
                    <asp:BoundField DataField="LoanTypeNumber" HeaderText="LoanTypeNumber" SortExpression="LoanTypeNumber" />
                    <asp:BoundField DataField="DateOut" HeaderText="DateOut" SortExpression="DateOut" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        <asp:SqlDataSource ID="sqlDatasource8" runat="server"></asp:SqlDataSource>
    </p>
    <br />
    <br />
    <div class="col-sm-0">


    </div>



    </asp:Content>
