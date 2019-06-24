
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



body {
          padding-top: 50px;
          position: relative;
      }
      
      pre {
          tab-size: 8;
      }
      
      @media screen and (max-width: 768px) {
          .side-collapse-container{
              width:100%;
              position:relative;
              left:0;
              transition:left .4s;
          }
          .side-collapse-container.out{
              left:200px;
          }
          .side-collapse {
              top:50px;
              bottom:0;
              left:0;
              width:200px;
              position:fixed;
              overflow:hidden;
              transition:width .4s;
          }
          .side-collapse.in {
              width:0;
          }
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

<header role="banner" class="navbar navbar-fixed-top navbar-inverse">
<div class="container" >
 
        <div class="navbar-header">
          <button data-toggle="collapse-side" data-target=".side-collapse" data-target-2=".side-collapse-container" type="button" class="navbar-toggle pull-left"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
        </div>
        <div class="navbar-inverse side-collapse in">
          <nav role="navigation" class="navbar-collapse">
            <ul class="nav navbar-nav">

  <li ><a href="productPage">Home</a></li>
				<li><a href="product">PRODUCT_MANAGEMENT</a></li>
				<li class="active"><a href="category">CAYEGORY_MANAGEMENT</a></li>
				<li ><a href="supplier">SUPPLIER_MANAGEMENT</a></li>
				
				<li style="float:right" class="info"><a href="<core:url value="/logout" />">LOGOUT</a></li>
            
   </ul></nav></div>
</div>

</header>

<script>
    $(document).ready(function() {   
        var sideslider = $('[data-toggle=collapse-side]');
        var sel = sideslider.attr('data-target');
        var sel2 = sideslider.attr('data-target-2');
        sideslider.click(function(event){
            $(sel).toggleClass('in');
            $(sel2).toggleClass('out');
        });
    });
    
    
    </script>
</head>
<body>

<form:form method="post" modelAttribute='category' action='addcategory'>
<div class="container-fluid" >

<table>
<tr>
<td>
Enter CATEGORY_NAME:
</td>
		
<td>
<form:input type='text' path='categoryname' required="true"/>
</td>
</tr>
<tr>
<td></td>
<td><input type='submit' value='ADD_PRODUCT' /></td>
</tr>


</table>
</div>
<form:form>

<div class="container-fluid" class="table-wrapper-scroll-y my-custom-scrollbar">

  <table class="table table-hover" class="table table-bordered table-striped mb-0">
<thead>
<tr class="success">
<th >CATEGORY_NAME</th>
<th >EDIT</th>
<th >DELETE</th>
</tr>
</thead>
<core:forEach items='${categorylist  }' var="category">

<tbody>
<tr>
<td align="left"><b>
${category.categoryname}
</b>
</td>


<td>
<a href='/com.Frontend.e-shopping/categoryedit/${category.categoryid}'>Edit</a>


</td>
<td>
<a href='/com.Frontend.e-shopping/deletecategory/${category.categoryid }'>Delete</a>
</td>
</tr>
</core:forEach>
</tbody>
</table>
</div>
</form:form>

</form:form>
</body>
</html> 


	



































