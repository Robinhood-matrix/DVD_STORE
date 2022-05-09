<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="MasterPageDemo.User.CustomerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3 style="margin-left: 6.5%; margin-top: 2%">Members</h3>
    <p style="margin-left: 6.5%; margin-top: 2%">Member Number&nbsp;&nbsp;&nbsp; <asp:TextBox ID="mLastTextBox0" runat="server" Height="26px" Width="143px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Search_btn0" runat="server" Height="38px" Text="Search" Width="85px" OnClick="Search_btn_Click" />

            <asp:SqlDataSource ID="getMemberDataSource0" runat="server" ConnectionString="<%$ ConnectionStrings:dvd_storeConnectionString %>" SelectCommand="SELECT [MemberFirstName] FROM [Member]"></asp:SqlDataSource>

            <asp:GridView ID="GridView4" class="table table-striped table-bordered mt-4" runat="server"   CellPadding="4" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="MemberLastName" HeaderText="MemberLastName" SortExpression="MemberLastName" />
                    <asp:BoundField DataField="MemberFirstName" HeaderText="MemberFirstName" SortExpression="MemberFirstName" />
                    <asp:BoundField DataField="DateReturned" HeaderText="DateReturned" SortExpression="DateReturned" />
                    <asp:BoundField DataField="DateDue" HeaderText="DateDue" SortExpression="DateDue" />
                    <asp:BoundField DataField="DateOut" HeaderText="DateOut" SortExpression="DateOut" />
                    <asp:BoundField DataField="DVDTitle" HeaderText="DVDTitle" SortExpression="DVDTitle" />
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

        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dvd_storeConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customer] ([CustomerId], [CustomerName], [Address], [ContactNo], [Email], [CustomerType]) VALUES (@CustomerId, @CustomerName, @Address, @ContactNo, @Email, @CustomerType)" SelectCommand="SELECT Member.MemberFirstName, Loan.DateReturned, Loan.DateDue, Loan.DateOut, DVDTitle.DVDTitle, Member.MemberLastName FROM Member INNER JOIN Loan ON Member.MemberNumber = Loan.MemberNumber INNER JOIN DVDCopy ON Loan.CopyNumber = DVDCopy.CopyNumber INNER JOIN DVDTitle ON DVDCopy.DVDNumber = DVDTitle.DVDNumber" UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [Address] = @Address, [ContactNo] = @ContactNo, [Email] = @Email, [CustomerType] = @CustomerType WHERE [CustomerId] = @CustomerId">
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

    <p>
        <br />
    </p>

    <h3 style="margin-left: 6.5%; margin-top: 2%">&nbsp;Loan Details of Member From Last 31 Days.</h3>
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
                    <asp:BoundField DataField="CopyNumber1" HeaderText="CopyNumber1" SortExpression="CopyNumber1" />
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dvd_storeConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customer] ([CustomerId], [CustomerName], [Address], [ContactNo], [Email], [CustomerType]) VALUES (@CustomerId, @CustomerName, @Address, @ContactNo, @Email, @CustomerType)" SelectCommand="SELECT DVDTitle.DVDTitle, DVDCopy.CopyNumber, Member.MemberNumber, Loan.LoanTypeNumber, Loan.DateOut, Loan.CopyNumber FROM Loan INNER JOIN Member ON Loan.MemberNumber = Member.MemberNumber INNER JOIN DVDCopy ON Loan.CopyNumber = DVDCopy.CopyNumber INNER JOIN DVDTitle ON DVDCopy.DVDNumber = DVDTitle.DVDNumber WHERE (Loan.MemberNumber = @MemberNumber) AND (Loan.DateDue &gt;= DATEADD(day, - 31, GETDATE())) AND (Loan.DateDue &lt;= GETDATE())" UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [Address] = @Address, [ContactNo] = @ContactNo, [Email] = @Email, [CustomerType] = @CustomerType WHERE [CustomerId] = @CustomerId">
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
        <h3 style="margin-left: 7%; margin-top: 5%; width: 1302px;">Details of Members Who Have Not Loaned From Last 31 Days.</h3>

    </div>

     <div class="row" style="margin-left: 7%">
        <p>
            <asp:GridView ID="GridView3" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="LoanNumber" DataSourceID="sqlDataSource2" ForeColor="#333333" GridLines="None" Height="218px" Width="1341px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="LoanNumber" HeaderText="LoanNumber" ReadOnly="True" SortExpression="LoanNumber" />
                    <asp:BoundField DataField="DateOut" HeaderText="DateOut" SortExpression="DateOut" />
                    <asp:BoundField DataField="MemberFirstName" HeaderText="MemberFirstName" SortExpression="MemberFirstName" />
                    <asp:BoundField DataField="MemberAddress" HeaderText="MemberAddress" SortExpression="MemberAddress" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="sqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dvd_storeConnectionString %>" SelectCommand="SELECT Loan.LoanNumber, Loan.DateOut, Member.MemberFirstName, Member.MemberAddress FROM Loan INNER JOIN Member ON Loan.MemberNumber = Member.MemberNumber WHERE (NOT (Loan.DateDue &gt;= DATEADD(day, - 31, GETDATE()))) AND (Loan.DateDue &lt;= GETDATE())"></asp:SqlDataSource>
         </p>
    </div>


    <p>
        &nbsp;
        </p>
   <h3 style="margin-left: 6.5%; margin-top: 2%">&nbsp; </h3>
        <div class="row" style="margin-left: 7%">
        <p>
            &nbsp;</p>
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>
