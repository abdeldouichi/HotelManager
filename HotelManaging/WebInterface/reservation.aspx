<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reservation.aspx.cs" Inherits="HotelManaging.WebInterface.reservation" %>


<!doctype html>
<!--[if IE 7 ]>    <html lang="en-gb" class="isie ie7 oldie no-js"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en-gb" class="isie ie8 oldie no-js"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en-gb" class="isie ie9 no-js"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en-gb" class="no-js"> <!--<![endif]-->

<head runat="server">
	<title>Hotel Managing - 4eme Annee ESISA</title>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="keywords" content="" />
	<meta name="description" content="" />
    
    <!-- Favicon --> 
	<link rel="shortcut icon" href="images/favicon.ico">
    
    <!-- this styles only adds some repairs on idevices  -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Google fonts - witch you want to use - (rest you can just remove) -->
   	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
    
    <!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
    
    <!-- ######### CSS STYLES ######### -->
	
    <link rel="stylesheet" href="css/reset.css" type="text/css" />
	<link rel="stylesheet" href="css/style.css" type="text/css" />
    
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
    
    <!-- responsive devices styles -->
	<link rel="stylesheet" media="screen" href="css/responsive-leyouts.css" type="text/css" />
    
    <!-- animations -->
    <link href="js/animations/css/animations.min.css" rel="stylesheet" type="text/css" media="all" />
    

    
    <!-- mega menu -->
    <link href="js/mainmenu/sticky.css" rel="stylesheet">
    <link href="js/mainmenu/bootstrap.min.css" rel="stylesheet">
    <link href="js/mainmenu/demo.css" rel="stylesheet">
    <link href="js/mainmenu/menu.css" rel="stylesheet">
    
    <!-- slide panel -->
    <link rel="stylesheet" type="text/css" href="js/slidepanel/slidepanel.css">
    
	<!-- cubeportfolio -->
	<link rel="stylesheet" type="text/css" href="js/cubeportfolio/cubeportfolio.min.css">
    
	<!-- tabs -->
    <link rel="stylesheet" type="text/css" href="js/tabs/assets/css/responsive-tabs.css">
    <link rel="stylesheet" type="text/css" href="js/tabs/assets/css/responsive-tabs2.css">
    <link rel="stylesheet" type="text/css" href="js/tabs/assets/css/responsive-tabs3.css">

	<!-- carousel -->
    <link rel="stylesheet" href="js/carousel/flexslider.css" type="text/css" media="screen" />
 	<link rel="stylesheet" type="text/css" href="js/carousel/skin.css" />
    
    <!-- progressbar -->
  	<link rel="stylesheet" href="js/progressbar/ui.progress-bar.css">
    
    <!-- accordion -->
    <link rel="stylesheet" href="js/accordion/accordion.css" type="text/css" media="all">
    
    <!-- Lightbox -->
    <link rel="stylesheet" type="text/css" href="js/lightbox/jquery.fancybox.css" media="screen" />
	
    <!-- forms -->
    <link rel="stylesheet" href="js/form/sky-forms.css" type="text/css" media="all">
 
</head>

<body>


<div class="wrapper_boxed">

<div class="site_wrapper">

<div id="sliderWrap">

	<div id="openCloseIdentifier"></div>
    
        <div id="slider">
        
          	<div id="sliderContent">
            <div class="container">
          
            	<div class="one_fourth">
                
                	<h5 class="white">A propos de HotelManaging</h5>
                    
                    HotelManaging est une application web créé par des étudiant ESISA 4éme année qui a pour but de faciliter les réservations et la restauration des clients a l’extérieur et a l’intérieur d’un hôtel
                
                </div>
                
               
                    
                </div>
                
                
                
               
                
            </div>    
            </div>
            
        </div>
    
	<div id="openCloseWrap"><a href="#" class="topMenuAction" id="topMenuImage"><img src="js/slidepanel/open.png" alt="open" title="open" /></a></div>
        
</div>

<div class="clearfix"></div>

<header id="header">

	<!-- Top header bar -->
	<div id="topHeader">
    
	<div class="wrapper">
         
        <div class="top_nav">
        <div class="container">
                
        <div class="right">
            
            <ul>
            	<li class="link"><a href="login.html"><i class="fa fa-lock"></i> Se connecter</a></li>
                <li class="link"><a href="register.html"><i class="fa fa-edit"></i> Créer un compte</a></li>
                <li><a href="mailto:info@yourdomain.com"><i class="fa fa-envelope"></i> info@sitedomain.com</a></li>
                <li><i class="fa fa-phone"></i> 0535603535</li>
            	
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="#"><i class="fa fa-flickr"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                <li><a href="#"><i class="fa fa-rss"></i></a></li>
            </ul>
            
        </div><!-- end right social links -->
        
        </div>
        </div>
            
 	</div>
    
	</div><!-- end top navigation -->
	
    
	<div id="trueHeader">
    
	<div class="wrapper">
    
     <div class="container">
    
		<!-- Logo -->
		<div class="logo"><a href="index.html" id="logo"></a></div>
		
	<!-- Menu -->
	<div class="menu_main">
        
	<div class="navbar yamm navbar-default">
    
    <div class="container">
      <div class="navbar-header">
        <div class="navbar-toggle .navbar-collapse .pull-right " data-toggle="collapse" data-target="#navbar-collapse-1"  > <span>Menu</span>
          <button type="button" > <i class="fa fa-bars"></i></button>
        </div>
      </div>
      
      <div id="navbar-collapse-1" class="navbar-collapse collapse pull-right">
      
        <ul class="nav navbar-nav">
        
        <li><a href="index.html" ><i class="fa fa-home"></i> Accueil</a></li>
        
        <li> <a href="reservation.html"><i class="fa fa-calendar"></i> Reservation</a></li>
       
        <li class="dropdown yamm-fw"> <a href="#" data-toggle="dropdown" class="dropdown-toggle"><i class="fa fa-book"></i> Restauration</a>
        <ul class="dropdown-menu">
          <li> 
            <div class="yamm-content">
              <div class="row">
              
                <ul class="col-sm-6 col-md-3 list-unstyled ">
                  <li>
                    <p>About Us</p>
                  </li>
                  <li>
                  <img src="http://placehold.it/189x120" alt="" class="img_left4" />
                  Latin words, combined with an handful of model an sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free.</li>
                </ul>
                
                <ul class="col-sm-6 col-md-3 list-unstyled ">
                    <li>
                    <p>Useful Pages</p>
                    </li>
                    <li><a href="elements.html"><i class="fa fa-angle-right"></i> Elements</a></li>
                    <li><a href="typography.html"><i class="fa fa-angle-right"></i> Typography</a></li>
                    <li><a href="pricing-tables.html"><i class="fa fa-angle-right"></i> Pricing Tables</a></li>
                    <li><a href="columns.html"><i class="fa fa-angle-right"></i> Page Columns</a></li>
                    <li><a href="team.html"><i class="fa fa-angle-right"></i> Our Team</a></li>
                    <li><a href="faqs.html"><i class="fa fa-angle-right"></i> FAQs</a></li>
                    <li><a href="tabs.html"><i class="fa fa-angle-right"></i> Tabs</a></li>
                    <li><a href="login.html"><i class="fa fa-angle-right"></i> Login Form</a></li>
                    <li><a href="register.html"><i class="fa fa-angle-right"></i> Register Form</a></li>
                </ul>
                
                <ul class="col-sm-6 col-md-3 list-unstyled ">
                    <li>
                       <p>Diffrent Websites</p>
                    </li>
                    <li> <a href="http://gsrthemes.com/hoxa/layout1/fullwidth/index.html"><i class="fa fa-angle-right"></i> Business</a> </li>
                    <li> <a href="index-1.html"><i class="fa fa-angle-right"></i> Creative</a> </li>
                    <li> <a href="http://gsrthemes.com/hoxa/layout2/index.html"><i class="fa fa-angle-right"></i> One Page Theme</a> </li>
                    <li> <a href="index-3.html"><i class="fa fa-angle-right"></i> Landing Page</a> </li>
                    <li> <a href="index.html"><i class="fa fa-angle-right"></i> Corporate</a> </li>
                    <li> <a href="index-2.html"><i class="fa fa-angle-right"></i> Portfolio Page</a> </li>
                    <li> <a href="#"><i class="fa fa-angle-right"></i> Parallax Backgrounds</a> </li>
                    <li> <a href="#"><i class="fa fa-angle-right"></i> Background Videos</a> </li>
                    <li> <a href="#"><i class="fa fa-angle-right"></i> Create your Own</a> </li>
                </ul>

                <ul class="col-sm-6 col-md-3 list-unstyled ">
                <li>
                   <p>More Features</p>
                </li>
                <li><a href="#"><i class="fa fa-angle-right"></i> Mega Menu</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i> Diffrent Websites</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i> Parallax Backgrounds</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i> Premium Sliders</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i> Diffrent Slide Shows</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i> Video BG Effects</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i> 100+ Feature Sections</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i> Use for any Website</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i> Free Updates</a></li>
                </ul>
                
              </div>
            </div>
          </li>
        </ul>
        </li>
        
        <li class="dropdown"> <a href="#" data-toggle="dropdown" class="dropdown-toggle"><i class="fa fa-pagelines"></i> Pages</a>
          <ul class="dropdown-menu multilevel" role="menu">
            <li><a href="about.html">About Page Style 1</a></li>
            <li><a href="about-2.html">About Page Style 2</a></li>
            <li><a href="about-3.html">About Page Style 3</a></li>
            <li><a href="team.html">Our Team</a></li>
            <li><a href="services.html">Services Style 1</a></li>
            <li><a href="services-2.html">Services Style 2</a></li>
            <li><a href="services-3.html">Services Style 3</a></li>
            <li><a href="full-width.html">Full Width Page</a></li>
            <li><a href="left-sidebar.html">Left Sidebar Page</a></li>
            <li><a href="right-sidebar.html">Right Sidebar Page</a></li>
            <li><a href="left-nav.html">Left Navigation</a></li>
            <li><a href="right-nav.html">Right Navigation</a></li>
            <li><a href="login.html">Login Form</a></li>
            <li><a href="register.html">Registration Form</a></li>
            <li><a href="404.html">404 Error Page</a></li>
          <li class="dropdown-submenu mul"> <a tabindex="-1" href="#">Sub Menu + </a>
            <ul class="dropdown-menu">
                <li><a href="#">Menu Item 1</a></li>
                <li><a href="#">Menu Item 2</a></li>
                <li><a href="#">Menu Item 3</a></li>
            </ul>
          </li>
                    </ul>
        </li>
        
        <li class="dropdown"> <a href="#" data-toggle="dropdown" class="dropdown-toggle"><i class="fa fa-file-image-o"></i> Portfolio</a>
        <ul class="dropdown-menu" role="menu">
          <li> <a href="portfolio-one.html">Single Item</a> </li>
          <li> <a href="portfolio-two.html">Portfolio Columns 2</a> </li>
          <li> <a href="portfolio-three.html">Portfolio Columns 3</a> </li>
          <li> <a href="portfolio-four.html">Portfolio Columns 4</a> </li>
          <li> <a href="portfolio-five.html">Portfolio + Sidebar</a> </li>
          <li> <a href="portfolio-six.html">Portfolio Full Width</a> </li>
          <li> <a href="portfolio-seven.html">Image Gallery</a> </li>
        </ul>
        </li>
        
        <li class="dropdown"> <a href="#" data-toggle="dropdown" class="dropdown-toggle"><i class="fa fa-comment"></i> Blog</a>
        <ul class="dropdown-menu three" role="menu">
          <li> <a href="blog.html">With Large Image</a> </li>
          <li> <a href="blog-2.html">With Small Image</a> </li>
          <li> <a href="blog-post.html">Single Post</a> </li>
        </ul>
        </li>
        
        <li class="dropdown"> <a href="#" data-toggle="dropdown" class="dropdown-toggle"><i class="fa fa-phone"></i> Contact</a>
        <ul class="dropdown-menu two" role="menu">
          <li> <a href="contact.html">Contact Variation 1</a> </li>
          <li> <a href="contact2.html">Contact Variation 2</a> </li>
          <li> <a href="contact3.html">Contact Variation 3</a> </li>
        </ul>
        </li>
        
        </ul>
        
        <div id="wrap">
          <form action="index.html" autocomplete="on">
          <input id="search" name="search" type="text" placeholder=""><input id="search_submit" value="search" type="submit">
          </form>
        </div>  
            
      </div>
      </div>
     </div>
     
	</div><!-- end menu -->
        
	</div>
		
	</div>
    
	</div>
    
</header>

<div class="clearfix"></div>

<div class="page_title2">
<div class="container">

    <div class="title"><h1>Réservation</h1></div>
    
    <div class="pagenation">&nbsp;<a href="index.html">Accueil</a> <i>/</i> <a href="#">Pages</a> <i>/</i>Réservation</div>
    
</div>
</div><!-- end page title --> 

<div class="clearfix"></div>

<div class="container">

	<div class="content_fullwidth lessmar">
    
		
    <div class="reg_form">
	<form id="Form1" class="sky-form" runat="server">
				<header runat="server" >Remplire le Formulaire </header>
				
				<fieldset>					
					<section>
						<label class="select">
							<select name="sexe" id="roomtype" runat="server" >
								<option value="0" selected disabled>Type de Chambre</option>
                                <option value="1">Single</option>
								<option value="2">Double</option>
								<option value="3">Suite</option>
							</select>
							<em></em></label>
					</section>
					
					<section>
						<label class="select">
							<select name="sexe" id="typedouche" runat="server" >
								<option value="0" selected disabled>Type de Douche</option>
                                <option value="1">Interne</option>
								<option value="2">Commun</option>       
							</select>
                         
							<em></em></label>
					</section>
                    
					<section><asp:TextBox ID="nbjour" name="nb_jour" placeholder="Nombre de Jours" runat ="server"></asp:TextBox></section>
                   
                    Date de Sejour :
                    <br />
					<br />
                    <section><input type="date" name="date_sejour"  id="date" runat="server" >
                    </section>

					<br />
                    
                    <section class="checkbox">Options :</section>
                    
					<br />
					<section>                        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><asp:CheckBox ID="conx" runat="server" Text="Connexion Internet" /></label><br />
					    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><asp:CheckBox ID="tv" runat="server" Text="TV" /></label><br />
					    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><asp:CheckBox ID="clim" runat="server" Text="Climatisation" /></label><br />     
					</section>
					
				
				</fieldset>
				<footer>
                    
				    <asp:Button ID="bsubmit" runat="server" OnClick="Button1_Click" class="button" Text="Valider" />
                    
				</footer>
			</form>			
		</div>
        
	</div>

</div><!-- end content area -->

<div class="clearfix margin_top7"></div>

<div class="footer_graph"></div>

<div class="clearfix"></div>

<div class="footer1">
<div class="container">
	
	<div class="one_half animate" data-anim-type="fadeInLeft">
    	<div class="twitter_feeds_two">
    
    		<div class="left"><i class="fa fa-phone"></i> <h5 class="white">Appelez-nous</h5></div>
            
            <div class="right">Notre Service est toujours la a votre disposition 24 h /24 et 7 jours/7 <em> Téléphone : 0 5 35 XX XX XX </em></div>
        
        </div>
    </div><!-- end twitter feeds -->
    
    <div class="one_half last animate" data-anim-type="fadeInRight">
    	<div class="newsletter_two">
    
    	<div class="left"><i class="fa fa-envelope"></i> <h5 class="white">Laissez un Message </h5></div>
        
        <div class="right">
        <form method="get" action="index.html">
        <input class="enter_email_input" name="compliments" id="samplees"  placeholder="Vos Compliments ...."  type="text" />
            <div class="clearfix"></div>
            <input name="" value="Envoyer" class="input_submit" type="submit">
        </form>
        </div>
        
    	</div>
	</div><!-- end newsletter sign up -->
    
    <div class="clearfix divider_dashed1"></div>
    
    <div class="one_fourth animate" data-anim-type="fadeInUp">
        <ul class="faddress">
            <li><img src="images/footer-logo.png" alt="" /></li>
            <li><i class="fa fa-map-marker fa-lg"></i>&nbsp; 2901 Marmora Road, Glassgow,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Seattle, WA 98122-1090</li>
            <li><i class="fa fa-phone"></i>&nbsp; 1 -234 -456 -7890</li>
            <li><i class="fa fa-print"></i>&nbsp; 1 -234 -456 -7890</li>
            <li><a href="mailto:info@yourdomain.com"><i class="fa fa-envelope"></i> info@yourdomain.com</a></li>
            <li><img src="images/footer-wmap.png" alt="" /></li>
        </ul>
	</div><!-- end address -->
    
    <div class="one_fourth animate" data-anim-type="fadeInUp">
    <div class="qlinks">
    
    	<h4 class="lmb">Liens Utiles</h4>
        
        <ul>
            <li><a href="index.html"><i class="fa fa-angle-right"></i> Page d’accueil</a></li>
            <li><a href="#"><i class="fa fa-angle-right"></i>  Nouvelle Réservation </a></li>
            <li><a href="#"><i class="fa fa-angle-right"></i> Création d’un nouveau Compte</a></li>
            <li><a href="#"><i class="fa fa-angle-right"></i>Bénéficiez du service de restauration</a></li>
            <li><a href="#"><i class="fa fa-angle-right"></i> Connectez-Vous </a></li>
        </ul>
        
    </div>
	</div><!-- end links -->
        
    <div class="one_fourth animate" data-anim-type="fadeInUp">
    <div class="siteinfo">
    
    	<h4 class="lmb">A propos de HotelManaging</h4>
        
        <p>HotelManaging est une application web créé par des étudiant ESISA 4éme qui a pour but de faciliter les réservations et la restauration des clients a l’extérieur et a l’intérieur d’un hôtel</p>
       
        
	</div>
    </div><!-- end site info -->
    
    <div class="one_fourth last animate" data-anim-type="fadeInUp">
        
        <h4>Flickr Photos</h4>
        
        <div id="flickr_badge_wrapper">
            
        
    </div><!-- end flickr -->
    
    
</div>
</div><!-- end footer -->

<div class="clearfix"></div>

<div class="copyright_info">
<div class="container">

	<div class="clearfix divider_dashed10"></div>
    
    <div class="one_half animate" data-anim-type="fadeInRight">
    
        Copyright © 2014 hoxa.com. All rights reserved.  <a href="#">Terms of Use</a> | <a href="#">Privacy Policy</a>
        
    </div>
    
    <div class="one_half last">
        
        <ul class="footer_social_links">
            <li class="animate" data-anim-type="zoomIn"><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li class="animate" data-anim-type="zoomIn"><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li class="animate" data-anim-type="zoomIn"><a href="#"><i class="fa fa-google-plus"></i></a></li>
            <li class="animate" data-anim-type="zoomIn"><a href="#"><i class="fa fa-linkedin"></i></a></li>
            <li class="animate" data-anim-type="zoomIn"><a href="#"><i class="fa fa-skype"></i></a></li>
            <li class="animate" data-anim-type="zoomIn"><a href="#"><i class="fa fa-flickr"></i></a></li>
            <li class="animate" data-anim-type="zoomIn"><a href="#"><i class="fa fa-html5"></i></a></li>
            <li class="animate" data-anim-type="zoomIn"><a href="#"><i class="fa fa-youtube"></i></a></li>
            <li class="animate" data-anim-type="zoomIn"><a href="#"><i class="fa fa-rss"></i></a></li>
        </ul>
            
    </div>
    
</div>
</div><!-- end copyright info -->


<a href="#" class="scrollup">Scroll</a><!-- end scroll to top of the page-->





</div>
</div>

    
<!-- ######### JS FILES ######### -->
<!-- get jQuery from the google apis -->
<script type="text/javascript" src="js/universal/jquery.js"></script>

<!-- style switcher -->
<script src="js/style-switcher/jquery-1.js"></script>
<script src="js/style-switcher/styleselector.js"></script>

<!-- animations -->
<script src="js/animations/js/animations.min.js" type="text/javascript"></script>


<!-- slide panel -->
<script type="text/javascript" src="js/slidepanel/slidepanel.js"></script>

<!-- mega menu -->
<script src="js/mainmenu/bootstrap.min.js"></script> 
<script src="js/mainmenu/customeUI.js"></script> 

<!-- jquery jcarousel -->
<script type="text/javascript" src="js/carousel/jquery.jcarousel.min.js"></script>

<!-- scroll up -->
<script src="js/scrolltotop/totop.js" type="text/javascript"></script>

<!-- tabs -->
<script src="js/tabs/assets/js/responsive-tabs.min.js" type="text/javascript"></script>

<!-- jquery jcarousel -->
<script type="text/javascript">
(function($) {
 "use strict";

	jQuery(document).ready(function() {
			jQuery('#mycarouselthree').jcarousel();
	});
	
})(jQuery);
</script>


<!-- accordion -->
<script type="text/javascript" src="js/accordion/custom.js"></script>

<!-- sticky menu -->
<script type="text/javascript" src="js/mainmenu/sticky.js"></script>
<script type="text/javascript" src="js/mainmenu/modernizr.custom.75180.js"></script>

<script src="js/form/jquery.form.min.js"></script>
<script src="js/form/jquery.validate.min.js"></script>
<script src="js/form/jquery.modal.js"></script>

<script type="text/javascript">
	$(function()
	{
		// Validation		
		$("#sky-form").validate(
		{					
			// Rules for form validation
			rules:
			{
				username:
				{
					required: true
				},
				email:
				{
					required: true,
					email: true
				},
				password:
				{
					required: true,
					minlength: 3,
					maxlength: 20
				},
				passwordConfirm:
				{
					required: true,
					minlength: 3,
					maxlength: 20,
					equalTo: '#password'
				},
				firstname:
				{
					required: true
				},
				lastname:
				{
					required: true
				},
				gender:
				{
					required: true
				},
				terms:
				{
					required: true
				}
			},
			
			// Messages for form validation
			messages:
			{
				login:
				{
					required: 'Please enter your login'
				},
				email:
				{
					required: 'Please enter your email address',
					email: 'Please enter a VALID email address'
				},
				password:
				{
					required: 'Please enter your password'
				},
				passwordConfirm:
				{
					required: 'Please enter your password one more time',
					equalTo: 'Please enter the same password as above'
				},
				firstname:
				{
					required: 'Please select your first name'
				},
				lastname:
				{
					required: 'Please select your last name'
				},
				gender:
				{
					required: 'Please select your gender'
				},
				terms:
				{
					required: 'You must agree with Terms and Conditions'
				}
			},					
			
			// Do not change code below
			errorPlacement: function(error, element)
			{
				error.insertAfter(element.parent());
			}
		});
	});			
</script>

<!-- cubeportfolio -->
<script type="text/javascript" src="js/cubeportfolio/jquery.cubeportfolio.min.js"></script>
<script type="text/javascript" src="js/cubeportfolio/main.js"></script>
<script type="text/javascript" src="js/cubeportfolio/main5.js"></script>
<script type="text/javascript" src="js/cubeportfolio/main6.js"></script>

<!-- carousel -->
<script defer src="js/carousel/jquery.flexslider.js"></script>
<script defer src="js/carousel/custom.js"></script>

<!-- lightbox -->
<script type="text/javascript" src="js/lightbox/jquery.fancybox.js"></script>
<script type="text/javascript" src="js/lightbox/custom.js"></script>



</body>
</html>
