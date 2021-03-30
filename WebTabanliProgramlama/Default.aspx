<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebTabanliProgramlama.Default" %>

<%@ Register Assembly="DevExpress.XtraCharts.v18.1.Web, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.XtraCharts.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="dx" %>
<!DOCTYPE html>
<html lang="en">
<form runat="server">
<h--><title>Saglik Kabini</title></h-->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  body {
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
  }
  h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #303030;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
  .jumbotron {
    background-color: #f4511e;
    color: #fff;
    padding: 100px 25px;
    font-family: Montserrat, sans-serif;
    text-align:left;
  }
  .container-fluid {
    padding: 60px 50px;
  }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #f4511e;
    font-size: 50px;
  }
  .logo {
    color: #f4511e;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
    background-image: none;
    color: #f4511e;
  }
  .carousel-indicators li {
    border-color: #f4511e;
  }
  .carousel-indicators li.active {
    background-color: #f4511e;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
  }
  .item span {
    font-style: normal;
  }
  .panel {
    border: 1px solid #f4511e; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  .panel:hover {
    box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
    border: 1px solid #f4511e;
    background-color: #fff !important;
    color: #f4511e;
  }
  .panel-heading {
    color: #fff !important;
    background-color: #f4511e !important;
    padding: 25px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
  }
  .panel-footer {
    background-color: white !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
  .panel-footer .btn {
    margin: 15px 0;
    background-color: #f4511e;
    color: #fff;
  }
  .navbar {
    margin-bottom: 0;
    background-color: #f4511e;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
    color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }
  footer .glyphicon {
    font-size: 20px;
    margin-bottom: 20px;
    color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
    animation-name: slide;
    -webkit-animation-name: slide;
    animation-duration: 1s;
    -webkit-animation-duration: 1s;
    visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
      width: 100%;
      margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
      font-size: 150px;
    }
  }
  </style>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
        <dx:ASPxImage ID="ASPxImage1" runat="server" ShowLoadingImage="true" Height="50px" ImageUrl="~/Resimler/logo.jpg" Width="200px"></dx:ASPxImage> 
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">HAKKIMIZDA</a></li>
        <li><a href="#services">SERVİSLER</a></li>
        <li><a href="#portfolio">GALERİ</a></li>
        <li><a href="#pricing">FİYATLANDIRMA</a></li>
        <li><a href="#contact">İLETİŞİM</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="jumbotron text-center" style="background-image: url('Resimler/slider3.jpg'); height:480px;"> 
        <div>
        <table>
            <tbody class ="text-left"></tbody>

                <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="Lokasyon Seçin" Font-Size="Large"></dx:ASPxLabel>
                 <dx:ASPxComboBox ID="Cmb1" runat="server" Width="285px" DropDownWidth="550px" TextFormatString="{0}" EnableCallbackMode="True" IncrementalFilteringMode="StartsWith"
        CallbackPageSize="30" DataSourceID="SqlDataSource1" Theme="Office365">
        <Columns>
            <dx:ListBoxColumn FieldName="ID" Width="130px" />
            <dx:ListBoxColumn FieldName="SEHIR" Width="100%" />
            <dx:ListBoxColumn FieldName="SEMT" Width="70px" />
        </Columns>
    </dx:ASPxComboBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDxDBConnectionString %>" SelectCommand="SELECT * FROM [TBLSEMTLER]"></asp:SqlDataSource>
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Kişi Sayısı Seçin" Font-Size="Large"></dx:ASPxLabel>
                <dx:ASPxSpinEdit ID="ASPxSpinEdit1" runat="server" Number="0" Theme="Office365">
                </dx:ASPxSpinEdit>
                <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Randevu tarihi seçin" Font-Size="Large"></dx:ASPxLabel>
            <tr>
                <dx:ASPxDateEdit ID="ASPxDateEdit1" runat="server" Date="03/19/2021 23:27:33" Theme="Office365">
                    <DropDownButton>
                        <Image IconID="spreadsheet_shortdate_svg_16x16">
                        </Image>
                    </DropDownButton>
                </dx:ASPxDateEdit>
            </tr> 
                <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Randevu çıkış tarihi seçin" Font-Size="Large"></dx:ASPxLabel>
            <tr>
                <dx:ASPxDateEdit ID="ASPxDateEdit2" runat="server" Date="2021-03-29" Theme="Office365">
                    <DropDownButton>
                        <Image IconID="spreadsheet_shortdate_svg_16x16">
                        </Image>
                    </DropDownButton>
                </dx:ASPxDateEdit>
            </tr>
            <br />
            <tr>
                <asp:Button ID="Button1" runat="server" Text="Randevu Al" CssClass="btn btn-warning" />
            </tr>

        </table>
        </div>
</div>
<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>About Company Pagepany Page</h2><br>
      <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <br><button class="btn btn-default btn-lg">Get in Touch</button>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo slideanim"></span>
    </div>
    <div class="col-sm-8">
      <h2>Our Values</h2><br>
      <h4><strong>MISSION:</strong> Our mission lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>
      <p><strong>VISION:</strong> Our vision Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  </div>
</div>

<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center">
    <div>
        <table>
            <tr>
                <td>                    
                    <dx:WebChartControl ID="WebChartControl1" runat="server" CrosshairEnabled="True" Height="400px" Width="400px">
                        <DiagramSerializable>
                            <dx:XYDiagram>
                                <axisx visibleinpanesserializable="-1">
                                </axisx>
                                <axisy visibleinpanesserializable="-1">
                                </axisy>
                            </dx:XYDiagram>
                        </DiagramSerializable>
<Legend Name="Default Legend"></Legend>
                        <SeriesSerializable>
                            <dx:Series Name="Aylar">
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
                <td>
                    <dx:WebChartControl ID="WebChartControl2" runat="server" CrosshairEnabled="True" Height="400px" Width="400px">
<Legend Name="Default Legend"></Legend>
                        <SeriesSerializable>
                            <dx:Series Name="Semtler" LegendTextPattern="{A}">
                                <ViewSerializable>
                                    <dx:PieSeriesView>
                                    </dx:PieSeriesView>
                                </ViewSerializable>
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
                <td>                    
                    <dx:WebChartControl ID="WebChartControl3" runat="server" CrosshairEnabled="True" Height="400px" Width="400px">
                        <DiagramSerializable>
                            <dx:XYDiagram>
                                <axisx visibleinpanesserializable="-1">
                                </axisx>
                                <axisy visibleinpanesserializable="-1">
                                </axisy>
                            </dx:XYDiagram>
                        </DiagramSerializable>
<Legend Name="Default Legend"></Legend>
                        <SeriesSerializable>
                            <dx:Series Name="Odalar">
                                <ViewSerializable>
                                    <dx:PointSeriesView>
                                    </dx:PointSeriesView>
                                </ViewSerializable>
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
            </tr>
        </table>
    </div>
 


</div>

<!-- Container (Portfolio Section) -->
<div id="portfolio" class="container-fluid text-center bg-grey">   
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableTheming="True" KeyFieldName="MID" Theme="Office365" Width="1200px">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <Settings ShowFilterRow="True" />
        <SettingsSearchPanel Visible="True" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="MID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="AD" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SOYAD" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="MAIL" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TARIH" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CINSIYET" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TELEFON" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDxDBConnectionString %>" DeleteCommand="DELETE FROM TBLMUSTERI WHERE MID=@MID" InsertCommand="insert into TBLMUSTERI (AD,SOYAD,MAIL,TARIH,CINSIYET,TELEFON) VALUES (@AD,@SOYAD,@MAIL,@TARIH,@CINSIYET,@TELEFON)" SelectCommand="SELECT * FROM [TBLMUSTERI]" UpdateCommand="UPDATE TBLMUSTERI SET AD=@AD,SOYAD=@SOYAD,MAIL=@MAIL,TARIH=@TARIH,CINSIYET=@CINSIYET,TELEFON=@TELEFON WHERE MID=@MID">
        <DeleteParameters>
            <asp:Parameter Name="MID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AD" />
            <asp:Parameter Name="SOYAD" />
            <asp:Parameter Name="MAIL" />
            <asp:Parameter Name="TARIH" />
            <asp:Parameter Name="CINSIYET" />
            <asp:Parameter Name="TELEFON" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AD" />
            <asp:Parameter Name="SOYAD" />
            <asp:Parameter Name="MAIL" />
            <asp:Parameter Name="TARIH" />
            <asp:Parameter Name="CINSIYET" />
            <asp:Parameter Name="TELEFON" />
            <asp:Parameter Name="MID" />
        </UpdateParameters>
    </asp:SqlDataSource>  
  </div>
<!-- Container (Pricing Section) -->
<div id="pricing" class="container-fluid">
  <div class="text-center">
    <h2>Pricing</h2>
    <h4>Choose a payment plan that works for you</h4>
  </div>
  <div class="row slideanim">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Basic</h1>
        </div>
        <div class="panel-body">
          <p><strong>20</strong> Lorem</p>
          <p><strong>15</strong> Ipsum</p>
          <p><strong>5</strong> Dolor</p>
          <p><strong>2</strong> Sit</p>
          <p><strong>Endless</strong> Amet</p>
        </div>
        <div class="panel-footer">
          <h3>$19</h3>
          <h4>per month</h4>
          <button class="btn btn-lg">Sign Up</button>
        </div>
      </div>      
    </div>     
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Pro</h1>
        </div>
        <div class="panel-body">
          <p><strong>50</strong> Lorem</p>
          <p><strong>25</strong> Ipsum</p>
          <p><strong>10</strong> Dolor</p>
          <p><strong>5</strong> Sit</p>
          <p><strong>Endless</strong> Amet</p>
        </div>
        <div class="panel-footer">
          <h3>$29</h3>
          <h4>per month</h4>
          <button class="btn btn-lg">Sign Up</button>
        </div>
      </div>      
    </div>       
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Premium</h1>
        </div>
        <div class="panel-body">
          <p><strong>100</strong> Lorem</p>
          <p><strong>50</strong> Ipsum</p>
          <p><strong>25</strong> Dolor</p>
          <p><strong>10</strong> Sit</p>
          <p><strong>Endless</strong> Amet</p>
        </div>
        <div class="panel-footer">
          <h3>$49</h3>
          <h4>per month</h4>
          <button class="btn btn-lg">Sign Up</button>
        </div>
      </div>      
    </div>    
  </div>
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Chicago, US</p>
      <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
    </div>
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Image of location/map -->
<img src="/w3images/map.jpg" class="w3-image w3-greyscale-min" style="width:100%">

<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>Bootstrap Theme Made By <a href="https://www.w3schools.com" title="Visit w3schools">www.w3schools.com</a></p>
</footer>

<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>
</form>
</body>
</html>
