<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" >
<link rel="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css">
<script src="https://bootstrapcreative.com/wp-bc/wp-content/themes/wp-bootstrap/codepen/bootstrapcreative.js?v=7"></script>


</head>

<body>

<div class="jumbotron text-xs-center">
  <h1 class="display-3">Thank You!</h1>
  <p class="lead"><strong>..VISIT..AGAIN..!!!</strong> .</p>
  <hr>
  <p>
    Having trouble? <a href="contactus">Contact us</a>
  </p>
  <p class="lead">
    <a class="btn btn-primary btn-sm" href="productPage" role="button">Continue to homepage</a>
  </p>
</div>

</body>
</html> --%>











<%@taglib uri="http://www.springframework.org/tags/form" prefix = "form" %>
<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='core' %>


<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<style class="cp-pen-styles">@import url("//fonts.googleapis.com/css?family=Roboto:300,400,500,700,900");
body{
    margin-top:20px;
    background:#eee;
}

.prod-info-main {
    border: 1px solid #CEEFFF;
    margin-bottom: 20px;
    margin-top: 10px;
    background: #fff;
    padding: 6px;
    -webkit-box-shadow: 0 1px 4px 0 rgba(21,180,255,0.5);
    box-shadow: 0 1px 1px 0 rgba(21,180,255,0.5);
}

.prod-info-main .product-image {
    background-color: #EBF8FE;
    display: block;
    min-height: 238px;
    overflow: hidden;
    position: relative;
    border: 1px solid #CEEFFF;
    padding-top: 40px;
}

.prod-info-main .product-deatil {
    border-bottom: 1px solid #dfe5e9;
    padding-bottom: 17px;
    padding-left: 16px;
    padding-top: 16px;
    position: relative;
    background: #fff
}

.product-content .product-deatil h5 a {
    color: #2f383d;
    font-size: 15px;
    line-height: 19px;
    text-decoration: none;
    padding-left: 0;
    margin-left: 0
}

.prod-info-main .product-deatil h5 a span {
    color: #9aa7af;
    display: block;
    font-size: 13px
}

.prod-info-main .product-deatil span.tag1 {
    border-radius: 50%;
    color: #fff;
    font-size: 15px;
    height: 50px;
    padding: 13px 0;
    position: absolute;
    right: 10px;
    text-align: center;
    top: 10px;
    width: 50px
}

.prod-info-main .product-deatil span.sale {
    background-color: #21c2f8
}

.prod-info-main .product-deatil span.discount {
    background-color: #71e134
}

.prod-info-main .product-deatil span.hot {
    background-color: #fa9442
}

.prod-info-main .description {
    font-size: 12.5px;
    line-height: 20px;
    padding: 10px 14px 16px 19px;
    background: #fff
}

.prod-info-main .product-info {
    padding: 11px 19px 10px 20px
}

.prod-info-main .product-info a.add-to-cart {
    color: #2f383d;
    font-size: 13px;
    padding-left: 16px
}

.prod-info-main name.a {
    padding: 5px 10px;
    margin-left: 16px
}

.product-info.smart-form .btn {
    padding: 6px 12px;
    margin-left: 12px;
    margin-top: -10px
}

.load-more-btn {
    background-color: #21c2f8;
    border-bottom: 2px solid #037ca5;
    border-radius: 2px;
    border-top: 2px solid #0cf;
    margin-top: 20px;
    padding: 9px 0;
    width: 100%
}

.product-block .product-deatil p.price-container span,
.prod-info-main .product-deatil p.price-container span,
.shipping table tbody tr td p.price-container span,
.shopping-items table tbody tr td p.price-container span {
    color: #21c2f8;
    font-family: Lato, sans-serif;
    font-size: 24px;
    line-height: 20px
}

.product-info.smart-form .rating label {
    margin-top:15px;
    
}

.prod-wrap .product-image span.tag2 {
    position: absolute;
    top: 10px;
    right: 10px;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    padding: 10px 0;
    color: #fff;
    font-size: 11px;
    text-align: center
}

.prod-wrap .product-image span.tag3 {
    position: absolute;
    top: 10px;
    right: 20px;
    width: 60px;
    height: 36px;
    border-radius: 50%;
    padding: 10px 0;
    color: #fff;
    font-size: 11px;
    text-align: center
}

.prod-wrap .product-image span.sale {
    background-color: #57889c;
}

.prod-wrap .product-image span.hot {
    background-color: #a90329;
}

.prod-wrap .product-image span.special {
    background-color: #3B6764;
}
.shop-btn {
    position: relative
}

.shop-btn>span {
    background: #a90329;
    display: inline-block;
    font-size: 10px;
    box-shadow: inset 1px 1px 0 rgba(0, 0, 0, .1), inset 0 -1px 0 rgba(0, 0, 0, .07);
    font-weight: 700;
    border-radius: 50%;
    padding: 2px 4px 3px!important;
    text-align: center;
    line-height: normal;
    width: 19px;
    top: -7px;
    left: -7px
}

.product-deatil hr {
    padding: 0 0 5px!important
}

.product-deatil .glyphicon {
    color: #3276b1
}

.product-deatil .product-image {
    border-right: 0px solid #fff !important
}

.product-deatil .name {
    margin-top: 0;
    margin-bottom: 0
}

.product-deatil .name small {
    display: block
}

.product-deatil .name a {
    margin-left: 0
}

.product-deatil .price-container {
    font-size: 24px;
    margin: 0;
    font-weight: 300;
    
}

.product-deatil .price-container small {
    font-size: 12px;
    
}

.product-deatil .fa-2x {
    font-size: 16px!important
}

.product-deatil .fa-2x>h5 {
    font-size: 12px;
    margin: 0
}

.product-deatil .fa-2x+a,
.product-deatil .fa-2x+a+a {
    font-size: 13px
}

.product-deatil .certified {
    margin-top: 10px
}

.product-deatil .certified ul {
    padding-left: 0
}

.product-deatil .certified ul li:not(first-child) {
    margin-left: -3px
}

.product-deatil .certified ul li {
    display: inline-block;
    background-color: #f9f9f9;
    padding: 13px 19px
}

.product-deatil .certified ul li:first-child {
    border-right: none
}

.product-deatil .certified ul li a {
    text-align: left;
    font-size: 12px;
    color: #6d7a83;
    line-height: 16px;
    text-decoration: none
}

.product-deatil .certified ul li a span {
    display: block;
    color: #21c2f8;
    font-size: 13px;
    font-weight: 700;
    text-align: center
}

.product-deatil .message-text {
    width: calc(100% - 70px)
}

@media only screen and (min-width:1024px) {
    .prod-info-main div[class*=col-md-4] {
        padding-right: 0
    }
    .prod-info-main div[class*=col-md-8] {
        padding: 0 13px 0 0
    }
    .prod-wrap div[class*=col-md-5] {
        padding-right: 0
    }
    .prod-wrap div[class*=col-md-7] {
        padding: 0 13px 0 0
    }
    .prod-info-main .product-image {
        border-right: 1px solid #dfe5e9
    }
    .prod-info-main .product-info {
        position: relative
    }
}



.btn-primary {
                background-color: #E7A331;
                color: #ffffff;
                border: 2px solid #E7A331;
                text-transform: uppercase;
                border-radius: 4px;
            }
            .btn-primary:hover {
                background-color: #d6962c;
                border-color: #d6962c;
                color: #fff;
            }

.portfolio{
                background:url(assets/images/portfoliobg.jpg) center top no-repeat;
                -moz-background-size: cover;
                -webkit-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
                width: 100%;
                overflow: hidden;	
            }

            .portfolio_content{
                padding-bottom:120px;
                display:inline-block;
            }
            .portfolio .portfolio_content .head_title h3{
                color:#000000;
            }
            .portfolio .portfolio_content .head_title h4{
                color:#000000;
            }

            .single_portfolio_text{
                display:inline-block;
                padding:0;
                position:relative;
                overflow:hidden;

            }
            .single_portfolio_text img{
                width:100%;
            }

            .single_portfolio_text:hover .portfolio_images_overlay{
                top:5%;
                left: 5%;
            }

            .portfolio_images_overlay{
                width: 90%;
                height: 90%;
                background: rgba(0, 0, 0, .5);
                padding: 20px;
                margin: 0 auto;
                top:-100%;
                left: 5%;
                position: absolute;
                transition:.6s;
            }
            .portfolio_images_overlay h6{
                text-transform:uppercase;
                color:#fff;
                font-size:2rem;
                line-height:2.575rem;
                font-weight: 500;
                margin-bottom: 1rem;
                margin-top: 1rem;
            }

            .portfolio_images_overlay p.product_price{
                font-size:2.5725rem;
                color:#fff;
                line-height:3rem;
            }
            .portfolio_images_overlay .btn{
                margin-top: 25px;
            }

            @media (min-width:769px) and (max-width:991px) {
                .portfolio_images_overlay {
                    padding: 0px;
                }
            }
            @media (max-width:768px) {
                .portfolio_images_overlay{
                    padding: 170px 20px;
                }
            }
            @media (max-width:580px) {
                .portfolio_images_overlay{
                    padding: 100px 20px;
                }
            }
            @media (max-width:480px) {
                .portfolio_images_overlay{
                    padding: 40px 20px;
                }
            }
            @media (max-width:320px) {
                .portfolio_images_overlay{
                    padding: 20px;
                }
            }



</style>

</head>

<body>


<core:forEach items='${productlist }' var="product">
<a href="ProductDesc/${product.productid}" >



<div class="col-xs-12 col-md-6">
	<!-- First product box start here-->
	<div class="prod-info-main prod-wrap clearfix">
		<div class="row">
				<div class="col-md-5 col-sm-12 col-xs-12">
					<div class="product-image"> 
					<div class="container" class="img-responsive">
					 <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text">
				
					
						<img src='http://localhost:9002/com.Frontend.e-shopping/resources/images/${product.productid}.jpg' height="200" width="100"  class="gallery_box" >

						<div class="portfolio_images_overlay text-center">
						<h6>SUMMER OFFER!</h6>
                        <p class="product_price">Disscount 15%!!</p>

						</div></div></div>	

<%-- 						
<img src='http://localhost:9002/com.Frontend.e-shopping/resources/images/${product.productid}.jpg'  alt="194x228" class="img-responsive"> 
 --%>
 						<span class="tag2 sale">
							SALE
						</span> 
					</div>
				</div>
				<div class="col-md-7 col-sm-12 col-xs-12">
				<div class="product-deatil">
						<h5 class="name">
							${product.productName} 
								
							
						</h5>
						<p class="price-container">
							<span><i class="fa fa-inr"></i>${product.price}</span>
						</p>
						<span class="tag1"></span> 
				</div>
				<div class="description">
					<p>${product.productDescription} </p>
				</div>
				<div class="product-info smart-form">
					<div class="row">
						<div class="col-md-12"> 
						<a href="ProductDesc/${product.productid}"  class="btn btn-danger">Add to cart</a>
                           <a href="ProductDesc/${product.productid}" class="btn btn-info">More info</a>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	 </div>
  </div>

</a>
 
</core:forEach>
	<!-- end product -->


        
<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script><script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script><script src='https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.js'></script>
<script >// Variables
  var colorButton = $(".colors li");

  colorButton.on("click", function(){
    // console.log('clicked');

    // Remove class from currently active button
    $(".colors > li").removeClass("active-color");

    // Add class active to clicked button
    $(this).addClass("active-color");

    // Get background color of clicked
    var newColor = $(this).attr("data-color");
    // alert(newColor);

    // Change background of everything with class .bg-color
    $(".merry-christmas").css("background-color", newColor);

    // Change color of everything with class .text-color
    // $(".text-color").css("color", newColor);
  });

"use strict";!function(t){t.fn.tilt=function(s){var i=function(){this.ticking||(requestAnimationFrame(g.bind(this)),this.ticking=!0)},e=function(){t(this).on("mousemove",r),t(this).on("mouseenter",n),this.settings.reset&&t(this).on("mouseleave",l)},a=function(){var s=this;void 0!==this.timeout&&clearTimeout(this.timeout),t(this).css({transition:this.settings.speed+"ms "+this.settings.easing}),this.settings.glare&&this.glareElement.css({transition:"opacity "+this.settings.speed+"ms "+this.settings.easing}),this.timeout=setTimeout(function(){t(s).css({transition:""}),s.settings.glare&&s.glareElement.css({transition:""})},this.settings.speed)},n=function(s){this.ticking=!1,t(this).css({"will-change":"transform"}),a.call(this),t(this).trigger("tilt.mouseEnter")},h=function(s){return"undefined"==typeof s&&(s={pageX:t(this).offset().left+t(this).outerWidth()/2,pageY:t(this).offset().top+t(this).outerHeight()/2}),{x:s.pageX,y:s.pageY}},r=function(t){this.mousePositions=h(t),i.call(this)},l=function(){a.call(this),this.reset=!0,i.call(this),t(this).trigger("tilt.mouseLeave")},o=function(){var s=t(this).width(),i=t(this).height(),e=t(this).offset().left,a=t(this).offset().top,n=(this.mousePositions.x-e)/s,h=(this.mousePositions.y-a)/i,r=(this.settings.maxTilt/2-n*this.settings.maxTilt).toFixed(2),l=(h*this.settings.maxTilt-this.settings.maxTilt/2).toFixed(2),o=Math.atan2(this.mousePositions.x-(e+s/2),-(this.mousePositions.y-(a+i/2)))*(180/Math.PI);return{tiltX:r,tiltY:l,percentageX:100*n,percentageY:100*h,angle:o}},g=function(){return this.transforms=o.call(this),this.reset?(this.reset=!1,t(this).css("transform","perspective("+this.settings.perspective+"px) rotateX(0deg) rotateY(0deg)"),void(this.settings.glare&&(this.glareElement.css("transform","rotate(180deg) scale(1.75)"),this.glareElement.css("opacity",""+this.settings.maxGlare/4)))):(t(this).css("transform","perspective("+this.settings.perspective+"px) rotateX("+("x"===this.settings.axis?0:this.transforms.tiltY)+"deg) rotateY("+("y"===this.settings.axis?0:this.transforms.tiltX)+"deg) scale3d("+this.settings.scale+","+this.settings.scale+","+this.settings.scale+")"),this.settings.glare&&(this.glareElement.css("transform","rotate("+this.transforms.angle+"deg) scale(1.75)"),this.glareElement.css("opacity",""+this.transforms.percentageY*this.settings.maxGlare/100)),t(this).trigger("change",[this.transforms]),void(this.ticking=!1))},c=function(){if(!this.settings.glarePrerender){t(this).append('<div class="js-tilt-glare"><div class="js-tilt-glare-inner"></div></div>'),this.glareElementWrapper=t(this).find(".js-tilt-glare"),this.glareElement=t(this).find(".js-tilt-glare-inner");var s={position:"absolute",top:"0",left:"0",width:"100%",height:"100%"};this.glareElementWrapper.css(s).css({overflow:"hidden"}),this.glareElement.css(s).css({"background-image":"linear-gradient(0deg, rgba(255,255,255,0) 0%, rgba(255,255,255,1) 100%)",opacity:""+this.settings.maxGlare/2,transform:"rotate(180deg) scale(1.75)"})}};return t.fn.tilt.destroy=function(){t(this).each(function(){t(this).find(".js-tilt-glare").remove(),t(this).css({"will-change":"",transform:""}),t(this).off("mousemove mouseenter mouseleave")})},t.fn.tilt.getValues=function(){var s=[];return t(this).each(function(){this.mousePositions=h.call(this),s.push(o.call(this))}),s},t.fn.tilt.reset=function(){t(this).each(function(){var s=this;this.mousePositions=h.call(this),this.settings=t(this).data("settings"),l.call(this),setTimeout(function(){s.reset=!1},this.settings.transition)})},this.each(function(){var i=this;this.settings=t.extend({maxTilt:t(this).is("[data-tilt-max]")?t(this).data("tilt-max"):20,perspective:t(this).is("[data-tilt-perspective]")?t(this).data("tilt-perspective"):300,easing:t(this).is("[data-tilt-easing]")?t(this).data("tilt-easing"):"cubic-bezier(.03,.98,.52,.99)",scale:t(this).is("[data-tilt-scale]")?t(this).data("tilt-scale"):"1",speed:t(this).is("[data-tilt-speed]")?t(this).data("tilt-speed"):"400",transition:!t(this).is("[data-tilt-transition]")||t(this).data("tilt-transition"),axis:t(this).is("[data-tilt-axis]")?t(this).data("tilt-axis"):null,reset:!t(this).is("[data-tilt-reset]")||t(this).data("tilt-reset"),glare:!!t(this).is("[data-tilt-glare]")&&t(this).data("tilt-glare"),maxGlare:t(this).is("[data-tilt-maxglare]")?t(this).data("tilt-maxglare"):1},s),this.init=function(){t(i).data("settings",i.settings),i.settings.glare&&c.call(i),e.call(i)},this.init()})},t("[data-tilt]").tilt()}(jQuery);


// $('.card').tilt({
//     // axis: X
// });
// }(jQuery);

AOS.init({
  duration: 1200,
})
//# sourceURL=pen.js
</script> 

</body>
</html>







<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->






























