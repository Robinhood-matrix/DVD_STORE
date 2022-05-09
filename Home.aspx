<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MasterPageDemo.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <form>

        <div>

            <div class="navbar navbar-default navbar-fixed-top" role ="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class ="sr-only">Toggle navigation</span>
                            <span class ="icon-bar"></span>
                        </button>

                    </div>
                    <div class ="navbar-collapse collapse">
                        <ul class ="nav navbar-nav navbar-right">
                            <li class ="active"><a href ="WebForm1.aspx">Home</a></li>
                            <li ><a href ="#">Blogs</a></li>
                            <li ><a href ="#">About</a></li>
                            <li ><a href ="#">Contact</a></li>
                            <li class ="dropdown">
                                <a href ="#" class ="dropdown-toggle" data-toggle="dropdown">Catagories<b class="caret"></b></a>
                                <ul class ="dropdown-menu">
                                    <li> <a href ="#">Actions</a></li>
                                    <li> <a href ="#">Comedy</a></li>
                                    <li> <a href ="#">Fantacy</a></li>
                                    <li> <a href ="#">Thriller</a></li>
                                    <li> <a href ="#">Drama</a></li>
                                </ul>
                            </li>
                            <li ><a href ="login.aspx">Login</a></li>
                            <li ><a href ="#">Profile</a></li>
                        </ul>
                    </div>
                </div>
            </div>
           
            <br />
            <br />

                <!-----image slider----->
                <div class="container">
                   <div id="myCarousel" class="carousel slide" data-ride="carousel">
              <!-- Indicators -->
                  <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                    <li data-target="#myCarousel" data-slide-to="5"></li>
                  </ol>

                 <!-- Wrapper for slides -->
                 <div class="carousel-inner">

                  <div class="item active">
                    <img src="icons/avengers.jpg" alt="Los Angeles" style="width:100%; height:351px;">
                    <div class="carousel-caption">
                    <h3>Avengers</h3>
                   <p>&nbsp;</p>
                  </div>
                  </div>

      <div class="item">
        <img src="icons/deedpool.jpg" alt="Chicago" style="width:100%; height:351px;">
        <div class="carousel-caption">
          <h3>Deadpool</h3>
          <p> Superhero film!</p>
        </div>
      </div>
    
      <div class="item">
        <img src="icons/hobbits.jpg" alt="New York" style="width:100%; height:351px;">
        <div class="carousel-caption">
          <h3>The Hobbit</h3>
          <p>Fantasy adventure film!</p>
        </div>
      </div>

         <div class="item">
        <img src="icons/game.jpg" alt="New York" style="width:100%; height:351px;">
        <div class="carousel-caption">
          <h3>Game of Thrones</h3>
          <p> American fantasy drama television series! </p>
        </div>
      </div>

         <div class="item">
        <img src="icons/brave.jpg" alt="New York" style="width:100%; height:351px;">
        <div class="carousel-caption">
          <h3>Brave</h3>
          <p>Computer-animated fantasy film/2012!</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>
                    <!-----image slider end----->
                    <br />
</div>
                 <!-----------Middle Contents start------------>
            <div class="container center">
                <div class="row">
                    <h2>Movies</h2>
                    <br />
                    <br />
                    <div class="col-lg-4">
                        <img class ="img-circle" src="Movies/game.jpg" alt="thumb" width="100" height="100" />
                        <h2>Game of Thrones</h2>
                        <p>Game of Thrones is an American fantasy drama television series created by David Benioff and D. B. Weiss for HBO.</p>
                        <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                    </div>

                    <div class="col-lg-4">
                        <img class ="img-circle" src="Movies/brave.jpg" alt="thumb" width="100" height="100" />
                        <h2>Brave</h2>
                        <p>Brave is a 2012 American 3D CGI computer-animated adventure fantasy film Pixar Animation Studios produced, which was distributed by Walt Disney Pictures.</p>
                        <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                    </div>

                     <div class="col-lg-4">
                        <img class ="img-circle" src="Movies/hobbits.jpg" alt="thumb" width="100" height="100" />
                        <h2>Hobbits</h2>
                        <p>Bilbo Baggins (Martin Freeman) lives a simple life with his fellow hobbits in the shire, until the wizard Gandalf (Ian McKellen) arrives</p>
                        <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                    </div>
                </div>

                
                </div>
                <!-----------Middle Contents End------------>
       
        <div style="margin-left:20%">
            <h3>List of Available Dvds</h3>
           &nbsp;&nbsp;&nbsp; Actor&#39;s SurName&nbsp;
        <asp:TextBox ID="SurnameTxt" runat="server" Height="25px" Width="141px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Search_btn0" runat="server" Height="38px" Text="Search" Width="104px" OnClick="Search_btn_Click" />
            
            <br />
            
            <br />
       
           <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="174px" Width="489px" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="DVDNumber">
           <AlternatingRowStyle BackColor="White" />
               <Columns>
                   <asp:BoundField DataField="DVDNumber" HeaderText="DVDNumber" ReadOnly="True" SortExpression="DVDNumber" />
                   <asp:BoundField DataField="DVDTitle" HeaderText="DVDTitle" SortExpression="DVDTitle" />
                   <asp:BoundField DataField="ActorFirstName" HeaderText="ActorFirstName" SortExpression="ActorFirstName" />
                   <asp:BoundField DataField="ActorSurname" HeaderText="ActorSurname" SortExpression="ActorSurname" />
               </Columns>
           <FooterStyle BackColor="#CCCC99" />
           <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
           <RowStyle BackColor="#F7F7DE" />
           <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#FBFBF2" />
           <SortedAscendingHeaderStyle BackColor="#848384" />
           <SortedDescendingCellStyle BackColor="#EAEAD3" />
           <SortedDescendingHeaderStyle BackColor="#575357" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dvd_storeConnectionString %>" SelectCommand="SELECT DISTINCT DVDTitle.DVDNumber, DVDTitle.DVDTitle, Actor.ActorFirstName, Actor.ActorSurname FROM DVDTitle INNER JOIN DVDCopy ON DVDTitle.DVDNumber = DVDCopy.DVDNumber INNER JOIN CastMember ON DVDTitle.DVDNumber = CastMember.DVDNumber INNER JOIN Actor ON CastMember.ActorNumber = Actor.ActorNumber WHERE (Actor.ActorSurname = @ActorSurname)">
               <SelectParameters>
                   <asp:ControlParameter ControlID="SurnameTxt" DefaultValue="Downey" Name="ActorSurname" PropertyName="Text" />
               </SelectParameters>
        </asp:SqlDataSource>
            <br />
           </div>
         <div style="margin-left:20%">
            <h3>List of Available Dvds on the Shelf</h3>
           &nbsp;&nbsp;&nbsp; Actor&#39;s SurName&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="141px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="38px" Text="Search" Width="104px" OnClick="Search_btn_Click" />
            
            <br />
            
            <br />
       
           <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="174px" Width="489px" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="DVDNumber">
           <AlternatingRowStyle BackColor="White" />
               <Columns>
                   <asp:BoundField DataField="DVDNumber" HeaderText="DVDNumber" ReadOnly="True" SortExpression="DVDNumber" />
                   <asp:BoundField DataField="DVDTitle" HeaderText="DVDTitle" SortExpression="DVDTitle" />
                   <asp:BoundField DataField="ActorFirstName" HeaderText="ActorFirstName" SortExpression="ActorFirstName" />
                   <asp:BoundField DataField="ActorSurname" HeaderText="ActorSurname" SortExpression="ActorSurname" />
               </Columns>
           <FooterStyle BackColor="#CCCC99" />
           <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
           <RowStyle BackColor="#F7F7DE" />
           <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#FBFBF2" />
           <SortedAscendingHeaderStyle BackColor="#848384" />
           <SortedDescendingCellStyle BackColor="#EAEAD3" />
           <SortedDescendingHeaderStyle BackColor="#575357" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dvd_storeConnectionString %>" SelectCommand="SELECT DISTINCT DVDTitle.DVDNumber, DVDTitle.DVDTitle, Actor.ActorFirstName, Actor.ActorSurname FROM DVDTitle INNER JOIN DVDCopy ON DVDTitle.DVDNumber = DVDCopy.DVDNumber INNER JOIN CastMember ON DVDTitle.DVDNumber = CastMember.DVDNumber INNER JOIN Actor ON CastMember.ActorNumber = Actor.ActorNumber WHERE (Actor.ActorSurname = @ActorSurname)">
               <SelectParameters>
                   <asp:ControlParameter ControlID="SurnameTxt" DefaultValue="Dinklage" Name="ActorSurname" PropertyName="Text" />
               </SelectParameters>
        </asp:SqlDataSource>
           </div>
        
     
        <!----------------Footer Content Start---------------->
        <footer>
            <div class ="container">
                <p class ="pull-right"><a href="Home.aspx">Back to top</a></p>
                <p>2022 &copy;DVD-Store &middot; <a href="WebForm1.aspx">Home</a> &middot; <a href="#">Blogs</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a></p>
            </div>
        </footer>
        <!----------------Footer Content End---------------->
  </form>
  
     
</asp:Content>
