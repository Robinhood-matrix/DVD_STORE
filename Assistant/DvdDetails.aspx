<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DvdDetails.aspx.cs" Inherits="MasterPageDemo.User.MyStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <h2 style="margin-left:5%; margin-top:5%"> List of all DvDs  </h2>
    
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
       
    <h3>
        &nbsp;</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="getDvdList" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AllowPaging="True" AllowSorting="True" Height="238px" Width="911px" AutoGenerateDeleteButton="True">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="DVDTitle" HeaderText="DVDTitle" SortExpression="DVDTitle" />
                <asp:BoundField DataField="ActorFirstName" HeaderText="ActorFirstName" SortExpression="ActorFirstName" />
                <asp:BoundField DataField="ActorSurname" HeaderText="ActorSurname" SortExpression="ActorSurname" />
                <asp:BoundField DataField="ProducerName" HeaderText="ProducerName" SortExpression="ProducerName" />
                <asp:BoundField DataField="StudioName" HeaderText="StudioName" SortExpression="StudioName" />
                <asp:BoundField DataField="DateReleased" HeaderText="DateReleased" SortExpression="DateReleased" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="getDvdList" runat="server" ConnectionString="<%$ ConnectionStrings:dvd_storeConnectionString %>" SelectCommand="SELECT DISTINCT DVDTitle.DVDTitle, Actor.ActorFirstName, Actor.ActorSurname, Producer.ProducerName, Studio.StudioName, DVDTitle.DateReleased FROM CastMember INNER JOIN DVDTitle ON CastMember.DVDNumber = DVDTitle.DVDNumber INNER JOIN Producer ON DVDTitle.ProducerNumber = Producer.ProducerNumber INNER JOIN Studio ON DVDTitle.StudioNumber = Studio.StudioNumber INNER JOIN DVDCopy ON DVDTitle.DVDNumber = DVDCopy.DVDNumber INNER JOIN Actor ON CastMember.ActorNumber = Actor.ActorNumber"></asp:SqlDataSource>
    </p>
    
       <h3> Copy Number</h3>
    <p>
        Copy Number
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Search_btn" runat="server" Text="Search" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="getCopyNumber" ForeColor="Black" GridLines="None" Height="205px" Width="908px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="CopyNumber" HeaderText="CopyNumber" SortExpression="CopyNumber" />
                <asp:BoundField DataField="MemberFirstName" HeaderText="MemberFirstName" SortExpression="MemberFirstName" />
                <asp:BoundField DataField="MemberLastName" HeaderText="MemberLastName" SortExpression="MemberLastName" />
                <asp:BoundField DataField="DateOut" HeaderText="DateOut" SortExpression="DateOut" />
                <asp:BoundField DataField="DateDue" HeaderText="DateDue" SortExpression="DateDue" />
                <asp:BoundField DataField="DVDTitle" HeaderText="DVDTitle" SortExpression="DVDTitle" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="getCopyNumber" runat="server" ConnectionString="<%$ ConnectionStrings:dvd_storeConnectionString %>" SelectCommand="SELECT Loan.CopyNumber, Member.MemberFirstName, Member.MemberLastName, Loan.DateOut, Loan.DateDue, DVDTitle.DVDTitle FROM DVDCopy INNER JOIN Loan ON DVDCopy.CopyNumber = Loan.CopyNumber INNER JOIN Member ON Loan.MemberNumber = Member.MemberNumber INNER JOIN DVDTitle ON DVDCopy.DVDNumber = DVDTitle.DVDNumber WHERE (DVDCopy.CopyNumber = @CopyNumber)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="CopyNumber" PropertyName="Text" DefaultValue="1" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
