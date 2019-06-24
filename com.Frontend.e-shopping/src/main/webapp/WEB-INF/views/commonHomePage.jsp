



<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style type="text/css">
/*
Fade content bs-carousel with hero headers
Code snippet by maridlcrmn (Follow me on Twitter @maridlcrmn) for Bootsnipp.com
Image credits: unsplash.com
*/

/********************************/
/*       Fade Bs-carousel       */
/********************************/
.fade-carousel {
    position: relative;
    height: 100vh;
}
.fade-carousel .carousel-inner .item {
    height: 100vh;
}
.fade-carousel .carousel-indicators > li {
    margin: 0 2px;
    background-color: #f39c12;
    border-color: #f39c12;
    opacity: .7;
}
.fade-carousel .carousel-indicators > li.active {
  width: 10px;
  height: 10px;
  opacity: 1;
}

/********************************/
/*          Hero Headers        */
/********************************/
.hero {
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: 3;
    color: #fff;
    text-align: center;
    text-transform: uppercase;
    text-shadow: 1px 1px 0 rgba(0,0,0,.75);
      -webkit-transform: translate3d(-50%,-50%,0);
         -moz-transform: translate3d(-50%,-50%,0);
          -ms-transform: translate3d(-50%,-50%,0);
           -o-transform: translate3d(-50%,-50%,0);
              transform: translate3d(-50%,-50%,0);
}
.hero h1 {
    font-size: 6em;    
    font-weight: bold;
    margin: 0;
    padding: 0;
}

.fade-carousel .carousel-inner .item .hero {
    opacity: 0;
    -webkit-transition: 2s all ease-in-out .1s;
       -moz-transition: 2s all ease-in-out .1s; 
        -ms-transition: 2s all ease-in-out .1s; 
         -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s; 
}
.fade-carousel .carousel-inner .item.active .hero {
    opacity: 1;
    -webkit-transition: 2s all ease-in-out .1s;
       -moz-transition: 2s all ease-in-out .1s; 
        -ms-transition: 2s all ease-in-out .1s; 
         -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s;    
}

/********************************/
/*            Overlay           */
/********************************/
.overlay {
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: 2;
    background-color: #080d15;
    opacity: .7;
}

/********************************/
/*          Custom Buttons      */
/********************************/
.btn.btn-lg {padding: 10px 40px;}
.btn.btn-hero,
.btn.btn-hero:hover,
.btn.btn-hero:focus {
    color: #f5f5f5;
    background-color: #1abc9c;
    border-color: #1abc9c;
    outline: none;
    margin: 20px auto;
}

/********************************/
/*       Slides backgrounds     */
/********************************/
.fade-carousel .slides .slide-1, 
.fade-carousel .slides .slide-2,
.fade-carousel .slides .slide-3 {
  height: 100vh;
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
}
.fade-carousel .slides .slide-1 {
  background-image: url(http://localhost:9002/com.Frontend.e-shopping/resources/images/curosuel1.jpg); 
}
.fade-carousel .slides .slide-2 {
  background-image: url(http://localhost:9002/com.Frontend.e-shopping/resources/images/curosuel4.jpg);
}
.fade-carousel .slides .slide-3 {
  background-image: url(http://localhost:9002/com.Frontend.e-shopping/resources/images/curosuel2.jpg);
}

/********************************/
/*          Media Queries       */
/********************************/
@media screen and (min-width: 980px){
    .hero { width: 980px; }    
}
@media screen and (max-width: 640px){
    .hero h1 { font-size: 4em; }    
}





/*Google Fonts*/
@import url('https://fonts.googleapis.com/css?family=Abril+Fatface');
@import url('https://fonts.googleapis.com/css?family=Montserrat:500,600,700');
@import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700');

body, html{
	height: 100%;
	width:100%;
}
body{
	font-size: 1rem;
	font-family: 'Source Sans Pro', sans-serif;
}

/* ========== Universal Stylings ========== */
h1,h2,h3,h4,h5{
	position: relative;
	font-family: 'Montserrat', sans-serif;
}
h6{
	position: relative;
}
.bg-primary{
	background-color: #B47F41!important;
}
.bg-dark{
	background-color: #0f0a05!important;
}
.bg-white{
	background-color: #fff;
}
.text-inverse{
	color: #074052;
}
.text-primary{
	color: #B47F41!important;
}
a.text-primary{
	color: #B47F41;
}
a.text-primary:hover{
	color: #916634!important;
	text-decoration: none;
}
.btn{
	font-family: 'Montserrat', sans-serif;
	font-size: 1rem;
	font-weight: 600;
	
}
.btn-primary{
	background-color: #B47F41;
	border-color: #B47F41;
}
.btn-primary:hover,.btn-primary:focus{
	background-color: #916634;
	border-color: #916634;
}
.btn-capsul{
	border-radius: 50px;
}
i.box-circle-outline{
	border-color: inherit;
	border-width: 1px;
	border-style:solid;
	border-radius: 50%;
	height: 50px;
    line-height: 50px;
    text-align: center;
    width: 50px;
}
i.box-circle-solid{
	background-color:#35CBDF;
	border-radius: 50%;
    color: #fff;
    font-size: 22px;
    height: 55px;
    line-height: 55px;
    text-align: center;
    width: 55px;
}
.text-underline-white:before{
	content:"";
	position: absolute;
	width:100px;
	height: 4px;
	left:50%;
	margin-left:-50px;
	background:#fff;
	bottom: -15px;
	border-radius: 10px;
}
.text-underline-rb-white:before{
	content:"";
	position: absolute;
	width:100px;
	height: 4px;
	left:0;
	background:#fff;
	bottom: -15px;
	border-radius: 10px;
}
.text-underline-primary:before{
	content:"";
	position: absolute;
	width:50px;
	height: 4px;
	left:50%;
	margin-left:-25px;
	background:#35CBDF;
	bottom: -15px;
	border-radius: 10px;
}
.text-underline-rb-primary:before{
	content:"";
	position: absolute;
	width:100px;
	height: 4px;
	left:0;
	background:#35CBDF;
	bottom: -15px;
	border-radius: 10px;
}
.bg-overlay:before{
	content:"";
	background:rgba(0,0,0,0.7);
	position: absolute;
	height: 100%;
	width:100%;
	left:0;
	top:0;
	z-index: -1;
}
.bg-overlay-primary:before{
	content:"";
	background:rgba(49,31,10,0.5);
	position: absolute;
	height: 100%;
	width:100%;
	left:0;
	top:0;
	z-index: -1;
}
.bg-right{
	background:url("https://grafreez.com/wp-content/temp_demos/razor/img/sec-bg-01.jpg");
	background-repeat: no-repeat;
	background-position: top right;
}
.sec-bg-02{
	background:url("https://grafreez.com/wp-content/temp_demos/razor/img/sec-bg-02.jpg");
	background-repeat: no-repeat;
	background-position: top left;	
	background-size: cover;
}
.sec-bg-03{
	background:url("https://grafreez.com/wp-content/temp_demos/razor/img/sec-bg-03.jpg");
	background-repeat: no-repeat;
	background-position: top left;	
	background-size: cover;
}
.sec-bg-04{
	background:url("https://grafreez.com/wp-content/temp_demos/razor/img/sec-bg-04.jpg");
	background-repeat: no-repeat;
	background-position: top left;	
	background-size: cover;
}
.parallax{
	background-attachment: fixed!important;
}
.font-abril{
	font-family: 'Abril Fatface', cursive;
}


/* ========== Page Loading Style ========== */
.loaders {
    width: 100%;
    box-sizing: border-box;
    display: flex;
    flex: 0 1 auto;
    flex-direction: row;
    flex-wrap: wrap;
 }
 .loaders .loader {
      box-sizing: border-box;
      display: flex;
      flex: 0 1 auto;
      flex-direction: column;
      flex-grow: 1;
      flex-shrink: 0;
      flex-basis: 25%;
      max-width: 25%;
      height: 200px;
      align-items: center;
      justify-content: center;
  }
  .loader{display: table;
    height: 100%;
    position: fixed;
    width: 100%;
    z-index: 1200;
  }

.loader-bg{
  background: #0F0A06;
}

.loader-inner {
    display: table-cell;
    text-align: center;
    vertical-align: middle;
}




/* ========== Top Navigation ========== */
.top-nav {
    height: 80px;
    transition: 0.2s ease-in;
	-webkit-transition: 0.2s ease-in;
	-moz-transition: 0.2s ease-in;
}
.top-nav .navbar-nav li .nav-link {
    color: #fff;
    font-size: 14px;
    padding:6px 26px;
    margin:6px 5px 0;
    font-weight: 400;
    text-transform: uppercase;
    transition: 0.2s ease-in;
	-webkit-transition: 0.2s ease-in;
	-moz-transition: 0.2s ease-in;
}
.top-nav li a.nav-link:hover, .top-nav .nav-item.active a.nav-link{
    color: #fff;
    background-color: #B47F41;
	border-color: #B47F41;
	border-radius: 50px;
    transition: 0.5s ease-in;
	-webkit-transition: 0.5s ease-in;
	-moz-transition: 0.5s ease-in;
}
.top-nav .navbar-brand{
	font-size: 28px;
	color: #fff;
	font-family: 'Montserrat', sans-serif;
}
.top-nav .search-box li a.nav-link{
	border:1px solid #B47F41;
	padding: 6px 15px;
}
.top-nav.light-header{
	height: 60px;
	background: rgba(0,0,0,0.6);
	box-shadow: 0 0 10px rgba(0,0,0,0.23);
	transition: 0.5s ease-in;
	-webkit-transition: 0.5s ease-in;
	-moz-transition: 0.5s ease-in;
	z-index: 9999;
}
.top-nav.light-header .navbar-brand{
	color: #fff;
}

.top-nav.light-header .search-box li a.nav-link{
	padding: 6px 15px;
	border:1px solid #fff;
}
.top-nav.light-header .search-box li a.nav-link i{
	color:#fff!important;
}

/* ========== Intro Header ========== */
.intro{
	float: left;
	width:100%;
	display: flex;
	align-items:center;
	height:100%;
	position: relative;
	z-index: 1;
}
.intro.intro-small{
	height: 60%;
}
.intro-bg{
	background:url("https://grafreez.com/wp-content/temp_demos/razor/img/intro-bg-01.jpg");
	background-repeat:no-repeat;
	background-position: center center;
	background-size:cover;
}
.caption-container{
	width:50rem;
	margin:0 auto;
}
.caption-two-panel{
	display: flex;
	align-items:center;
}
.intro h1{
	font-weight: 700;
	font-family: 'Abril Fatface', cursive;
	font-size: 3.8rem;
}
.intro-caption .btn i{
	float: left;
	margin-right:15px;
}
.intro .carousel-item{
	height: 100vh;
}
.intro .carousel-item::before{
	content:"";
	background:rgba(0,0,0,0.6);
	position: absolute;
	width:100%;
	height: 100vh;
}
.intro  .carousel-caption{
	top:25%;
}

/* ========== Who We Are ========== */

.info-section{
	float: left;
	width:100%;
	padding:5rem 0;
	position: relative;
	z-index: 1;
}
.info-section h2{
	font-weight: 700;
	font-size: 3rem;
}
.info-section .price-count{
	font-size: 2.5rem;
}

.info-section .head-sec{
	float: left;
	width:100%;
}

.info-section .service-block-bg{
	background-color: rgba(180,127,65,0.4);
}
.info-section .service-block-bg:hover{
	background-color: rgba(180,127,65,1);
}

.info-section h3{
	font-size: 1.4rem;
}
.info-section p {
    font-size: 1rem;
    line-height: 1.3rem;
}
.info-section .box h2{
    font-size:24px;
    margin-bottom:20px;
    margin-top:0;
}

.info-section .box i{
    font-size:20px;
}
.info-section .box{
    display:flex;
}
.info-section .text-box{
    flex:1 1 0;
    text-align:left;
}
.info-section .icon-box{
    line-height: 1.2;
    width:70px;
}
.info-section .service-block-overlay{
	transition: .5s;
	-webkit-transition: .5s;
	-moz-transition: .5s;
}
.info-section .service-block-overlay:hover{
	background: #fff none repeat scroll 0 0;
    border-radius: 5px;
    box-shadow: 0 0 90px rgba(0, 0, 0, 0.1);
    float: left;
    margin-top: -10px;
    position: relative;
    width: 100%;
	transition: .5s;
	-webkit-transition: .5s;
	-moz-transition: .5s;
}
.info-section .service-block i img{
	width:50px;
}
.content-half{
    color:#fff;
}
.content-half ul{
    padding:0;
    list-style:none;
}
.content-half ul li{
    margin:15px 0;
    float:left;
    width:100%;
}
.content-half ul li i{
    float:left;
    font-size:30px;
    padding-top:10px;
    padding-bottom:10px;
}
.content-half ul li .list-content{
    float:left;
    margin-left:20px;
}
.content-half ul li strong{
    font-size:19px;
    font-weight:700;
}
.content-half .btn{
    margin-top:20px;
}
/*--- three Block Panel ---*/
.three-panel-block{
	float: left;
	width: 100%;
}
.three-panel-block i{
	font-size: 1.5rem;
	margin-bottom: 15px;
}
.three-panel-block i.box-round{
	border-color: inherit;
	border-width: 1px;
	border-style:solid;
	padding:16px;
	border-radius: 50%;
}

/*--- Two Block Panel ---*/
.two-panel-block{
	float: left;
	width: 100%;
}
.two-panel-block p{
	font-size:16px;
}


/*--- Two Block Panel ---*/
.four-panel-block{
	float: left;
	width:100%;
}

/* ========== Who We Are ========== */
.widget{
	float: left;
	width:100%;
	position: relative;
	z-index: 1;
}

/* ========== Copy Content Styles ========== */
.copy-content-sec{
	float: left;
	width:100%;
	padding:5rem 0;
	position: relative;
	z-index: 1;
}
.copy-container{
	display: flex;
	align-items: center;
}
.copy-content{
	float: left;
	width:100%;
}
.copy-content li i{
	float: left;
	width:30px;
	margin-top:5px;
	color: #5CB85C;
}

/* ========== Team Section ========== */

.team-section{
	float: left;
	width:100%;
	position: relative;
	z-index: 1;
}
.team-footer{
	float: left;
	width:100%;
	padding: 15px;
}
.team-footer h3{
	font-size: 1.5rem;
	text-transform: capitalize;
}
.member-box{
  width:100%
  float:left;
  position:relative;
  overflow:hidden
}
.member-box:hover> img{
transform: scale(1.05);
transition:1s ease-in;  
}
.member-box img{
  transition:0.3s ease-in;  
}
.member-box.t-bottom .overlay-content{
	display:flex;
	flex-direction:column;
	justify-content:flex-end;
}
.member-box.t-center .overlay-content{
	display:flex;
	flex-direction:column;
	justify-content:center;
	align-items: center;
}
.member-box i.box-circle-solid{
	padding: 0;
	width:40px;
	height: 40px;
	text-align: center;
	line-height: 40px;
}
/* style 1 */
.member-box.anim-lf .overlay-content{
  position:absolute;
  background-color:rgba(0,0,0,0.6);
  left:-100%;
  bottom:0;
  width: 100%;
  height:100%;
  transition:0.4s ease-in;
}
.member-box.anim-lf:hover>.overlay-content{
  left:0;
  transition:0.4s ease-in;
}
/* style 1 */
.member-box.anim-bt .overlay-content{
  position:absolute;
  background-color:rgba(0,0,0,0.6);
  bottom:-100%;
  width: 100%;
  height:100%;
  transition:0.6s ease-in;
}

.member-box.anim-bt:hover>.overlay-content{
  bottom:0;
  transition:0.4s ease-in;
}

/* ========== Testimonial Section ========== */
.testimonial-section{
	float: left;
	width:100%;
	position: relative;
	z-index: 1;
}
.testimonial-section h2{
	font-size: 3rem;
}
.testimonial-section .single-testimonial .carousel-item {
    margin: 0 15%;
    width: 70%;
}
.testimonial-section .single-testimonial .carousel-item-next, .testimonial-section .single-testimonial .carousel-item-prev{
	top:3rem;
}
.testimonial-section .single-testimonial .carousel{
	text-align: center;
}
.testimonial-section .single-testimonial .navigator-box{
	display: inline-block;
	position: relative;
    top: 0px;
}
.testimonial-section .single-testimonial .carousel-control-next, .testimonial-section .single-testimonial .carousel-control-prev{
	 border: 1px solid #b47f41;
    border-radius: 50%;
    color: #b47f41;
    display: block;
    float: left;
    font-size: 37px;
    margin: 0 4px;
    opacity: 1;
    padding: 0 23px;
    position: relative;
    width: 43%;
}
.testimonial-section .single-testimonial .carousel-control-next:hover, .testimonial-section .single-testimonial .carousel-control-prev:hover{
	background-color: #b47f41;
	color: #fff;
}


/* ========== Footer Section ========== */
.footer-section{
	float: left;
	width:100%;
	position: relative;
	z-index: 1;
}
.footer-section .list-box img {
    width: 70px;
}
.footer-section .list-box a.title{
	font-size: 14px;
	line-height: 0;
}
.footer-section .copy-text{
	font-size: 12px;
	border-top: 1px solid #555;
}
.social-box a.icoRss:hover {
	background-color: #F56505;
}
.social-box a.fa-box:hover {
	background-color:#3B5998;
}
.social-box a.tw-box:hover {
	background-color:#33ccff;
}
.social-box a.go-box:hover {
	background-color:#BD3518;
}
.social-box a.ld-box:hover {
	background-color:#007bb7;
}
ul.social-box {
	list-style: none;
	display: inline;
	margin-left:0 !important;
	padding: 0;
}
ul.social-box li {
	display: inline;
	margin: 0 5px;
}
.social-box li a {
    background: #414344;
    border-radius: 50%;
    display: inline-block;
    font-size: 13px;
    height: 30px;
    margin: 0 auto;
    position: relative;
    text-align: center;
    width: 30px;
}

.social-box li i {
	margin:0;
	line-height:30px;
	text-align: center;
}

.social-box li a:hover i, .triggeredHover {
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-ms--transform: rotate(360deg);
	transform: rotate(360deg);
	-webkit-transition: all 0.2s;
	-moz-transition: all 0.2s;
	-o-transition: all 0.2s;
	-ms-transition: all 0.2s;
	transition: all 0.2s;
}
.social-box i {
	color: #fff;
	-webkit-transition: all 0.8s;
	-moz-transition: all 0.8s;
	-o-transition: all 0.8s;
	-ms-transition: all 0.8s;
	transition: all 0.8s;
}

/* ========== Copy Content Styles ========== */
.copy-content-sec{
	float: left;
	width:100%;
	padding:5rem 0;
	position: relative;
	z-index: 1;
}
.copy-content-sec h2{
	font-size: 3rem;
}
.copy-container{
	display: flex;
	align-items: center;
}
.copy-content{
	float: left;
	width:100%;
}
.copy-content li i{
	float: left;
	width:30px;
	margin-top:5px;
	color: #5CB85C;
}
.faq-box .card{
	border-color: #35CBDF;	
	margin-top: 10px;
}
.faq-box .card-header{
	background-color: #35CBDF;
	color: #fff;
}


/* ========== Price Table Styles ========== */
.price-section{
	float: left;
	width:100%;
	padding:5rem 0;
	position: relative;
	z-index: 1;
}
.price-section h2 {
    font-size: 2.5rem;
    font-weight: 700;
}
.price-section .price-block{

}
.price-section .currency{
	font-size: 25px;
    vertical-align: super;
}
.price-section .price-count{
	font-size: 60px;
	line-height: 60px;
}
.price-section .price-block small{
	display: block;
	font-size: 15px;
}




/* ========== Responsive Stylings ========== */
@media (max-width: 991px){
	.container{
		width: 100%;
	}
	.intro .intro-box{
		padding-left: 0;
		margin-bottom: 0;
	}
	.intro .intro-box span{
		margin-right: 10px;
	}
	.intro .intro-box .list-item{
		width: 85%;
	}
	.content-half ul li i{
		font-size: 20px;
	}
	.content-half ul li .list-content{
		width:77%;
	}
	.content-half ul li strong{
		line-height: 0;
	}
	.testimonial-section .single-testimonial .carousel-item{
		width: 100%;
		margin-left: 0;
		margin-right: 0;
	}
	.widget h2 {
    	font-size: 1.5rem;
	}
	.widget .counter{
		line-height: 0;
		font-size: 1.7rem;
	}
	.widget .fa-3x{
		font-size: 2rem;
	}
	.widget .stat-content h4{
		font-size: 1.2rem;
	}
	.search-box{
		display: none;
	}
}

@media (max-width: 767px){
	.container{
		width:100%;
	}
	.intro .intro-form-small input[type="text"], .intro .intro-form-small input[type="password"]{
		width: 36%;
	}
	.intro .carousel-caption{
		top:10%;
	}
	.widget.widget-counter .container{
		width: 100%;
	}
	.contact-section #map {
    	height: 400px
	}
	#navbarSupportedContent{
	background: rgba(0, 0, 0, 0.5) none repeat scroll 0 0!important;
	padding: 30px 0
	}
	#navbarSupportedContent li{
		text-align: center;
	}
	#about .copy-container {
	    background-color:rgba(255,255,255,0.9);
	    box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
	    padding: 30px;
	}

}

.action-sec-demo{position:fixed; background:#e08b28;width:100%; bottom:0;z-index:99999; padding:20px 0; height:120px;}
.btn-theme{background-color:#6a3f0c; color:#fff;}



</style>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

</head>
<body>



<nav class="navbar navbar-expand-md fixed-top top-nav">
<div class="container-fluid">
<a class="navbar-brand" href="index.html"><strong></strong></a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"><img src="https://grafreez.com/wp-content/temp_demos/razor/img/icons/menu.png"></span>
</button>
<div class="collapse navbar-collapse" id="navbarSupportedContent">
<ul class="navbar-nav m-auto text-sm-center text-md-center">
<li class="nav-item">
<a class="nav-link" href="#home">Home <span class="sr-only">(current)</span></a>
</li>
<li class="nav-item">
<a class="nav-link" href="#services">Services</a>
</li>

<li class="nav-item">
<a class="nav-link" href="#price">AboutUs..</a>
</li>
<li class="nav navbar-nav navbar-right" class="active">
<a class="nav-link" href="login"><span class="glyphicon glyphicon-log-in"></span>
LOGin</a>




</ul>
</div>


<ul class="navbar-nav ml-auto search-box">
<li class="nav-item">
<a class="nav-link" href="#"><i class="fa fa-search text-white"></i></a>
</li>
</ul>
</div>
</nav>

<section id="home" class="intro intro-bg bg-overlay parallax">
<div class="container">
<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
  <div class="overlay"></div>
  <ol class="carousel-indicators">
    <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
    <li data-target="#bs-carousel" data-slide-to="1"></li>
    <li data-target="#bs-carousel" data-slide-to="2"></li>
  
  
  
  
  </ol>
  
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item slides active">
      <div class="slide-1"></div>
      <div class="hero">
        <hgroup>
            <h1>SUMMER OFFER..!</h1>        
            <h3>40% offer!!</h3>
        </hgroup>
        <button class="btn btn-hero btn-lg" role="button">fresh products!!</button>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-2"></div>
      <div class="hero">        
        <hgroup>
            <h1><em>flash sale......</em></h1>        
            <h3>this amazing offer available now only..!</h3>
        </hgroup>       
        <a href="login"><button class="btn btn-hero btn-lg" role="button">fresh products!!</button></a>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-3"></div>
      <div class="hero">        
        <hgroup>
            <h1>no need to SHOP just Order..!</h1>        
            <h3>free delivery.... </h3>
        </hgroup>
     <a href="login">  <button class="btn btn-hero btn-lg" role="button">fresh products!!</button></a>
      </div>
    </div>
  </div> 
</div>


</div>
</div>
</div>
</section>

<section id="services" class="info-section text-white bg-right bg-dark">
<div class="container text-white">
<div class="head-box text-center mb-5">
<h2 class="font-abril"> Drop Prices</h2>
</div>
<div class="three-panel-block my-4">
<div class="row">
<div class="col-lg-6 col-md-6 col-sm-6 pl-md-5 mb-4">
<div class="service-block-bg text-center p-3">
<div class="price-count font-abril"><span>Pre-Season Booking</span></div>
<h3>Food Processors & Exporters demand</h3>
<p class="px-4">

Many Food Processors & Exporters demand for unique specifications and predefined consumption schedule. We arrange pre-season Buyer-Farmer meetings, identify farms to take up crop plan and extend regular guidance so as to ensure production and delivery as per order schedule. 

</p>
</div>
</div>
<div class="col-lg-6 col-md-6 col-sm-6 pr-md-5 mb-4">
<div class="service-block-bg text-center p-3">
<div class="price-count font-abril"><span></span>Local Produce</div>
<h3>pack quality products</h3>
<p class="px-4">
Local Produce
We support local produce grown within 300 km. We identify best farms, clean, grade, sort, pack quality products. We also organize Farmer’s Market at your premises to better connect with people who eat and enjoy the food. Freshness delivered daily, consistently.
</p>
</div>
</div>
<div class="col-lg-6 col-md-6 col-sm-6 pl-md-5 mb-4">
<div class="service-block-bg text-center p-3">
<div class="price-count font-abril"><span></span>Bulk Packs</div>
<h3>Providing Retailers & Restaurants </h3>
<p class="px-4">

Providing Retailers & Restaurants daily availability and choice of leading brands in quality fresh produce at best prices. Pick-up wholesale packs from our Distributor Partners or avail door step delivery on select pin codes across Mumbai. To buy or know 
</p>
</div>
</div>
<div class="col-lg-6 col-md-6 col-sm-6 pr-md-5">
<div class="service-block-bg text-center p-3">
<div class="price-count font-abril"><span></span>premium branding</div>
<h3>upgrade your produce</h3>
<p class="px-4">Brand Your Produce
We upgrade your produce by positioning with right customer segments, premium branding, improved packaging and value addition.

</p>
</div>
</div>
</div>
</div>
</div>
</section>

<section id="price" class="testimonial-section sec-bg-04 py-5 h-100">

<div class="container">
<div class="row">
<div class="head-box text-center mb-3 col-md-12 mt-5">
<h2 class="font-abril">What Our Custumer Says About Us</h2>
</div>
</div>
<div class="single-testimonial">
<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
<div class="carousel-inner pt-5" role="listbox">
<div class="carousel-item active">
<div class="testimonial-box text-center">
<div class="testimonial-content w-100 bg-faded">
<p class="mb-0"><i class="fa fa-quote-left fa-3x" aria-hidden="true"></i></p>
<p class="lead font-abril">Just wanted to let you guys know I got my first box and I am sooooooo impressed, so much stuff in there. Thank you so much!
Thank you for the great service and wonderful idea of delivering organic fruits and vegetables.
</p>
<div class="testimonial-footer">
<h4 class="mt-2 mb-0 text-primary">VENGAT_SATHISH_vj</h4>
<p>--Salem</p>
</div>
</div>
</div>
</div>
<div class="carousel-item">
<div class="testimonial-box text-center">
<div class="testimonial-content w-100 bg-faded">
<p class="mb-0"><i class="fa fa-quote-left fa-3x" aria-hidden="true"></i></p>
<p class="lead font-abril">"Have to say - I am extremely happy with my Organic Fruits and Veggie deliveries. It certainly has made me try things I would have never thought of - also the last thing I remember to get are Fruits and Veggies - So to have them delivered is just another bonus.
</p>
<div class="testimonial-footer">
<h4 class="mt-2 mb-0 text-primary">SATHISH</h4>
<p>-Kallakurichi</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>

 	


</body>

<script >

//Page loadinmg animation

if ((".loader").length) {
    // show Preloader until the website ist loaded
    $(window).on('load', function () {
    $(".loader").fadeOut("slow");
    });
}

/* Onpage linkng smooth effect */

$('a[href^="#"]').on('click', function(event) {

    var target = $( $(this).attr('href') );

    if( target.length ) {
        event.preventDefault();
        $('html, body').animate({
            scrollTop: target.offset().top
        }, 1000);
    }

});

// Sticky Header
$(window).scroll(function() {    
    var scroll = $(window).scrollTop();

    if (scroll >= 100) {
        $(".top-nav").addClass("light-header");
    } else {
        $(".top-nav").removeClass("light-header");
    }
});

// Year for copy content
$(function(){
var theYear = new Date().getFullYear();
$('#year').html(theYear);
});



</script>



</html>

