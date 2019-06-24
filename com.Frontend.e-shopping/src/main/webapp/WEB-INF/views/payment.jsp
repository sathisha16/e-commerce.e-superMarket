<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
 
 
 
 
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>

<form method='post' action='/com.Frontend.e-shopping/payment'>

<div class="container">
<hr>

<div class="row">
<aside class="col-sm-6">
<article class="card">
<div class="card-body p-5">
		Cash on Delivery <input type='radio' value='cash'  name='paymenttype'/>
Credit Card Pay<input type='radio' value='card' name='paymenttype'/>
<br>
<ul class="nav bg-light nav-pills rounded nav-fill mb-3" role="tablist">
	<li class="nav-item">
		<a class="nav-link active" data-toggle="pill" href="#nav-tab-card">

		<i class="fa fa-credit-card"></i> Credit Card</a></li>
	
</ul>

<div class="tab-content">
<div class="tab-pane fade show active" id="nav-tab-card">
	<form role="form">
	<div class="form-group">
		<label for="username">Full name (on the card)</label>
		
		<input type="cardno" class="form-control" name="username" value="sathish" placeholder="" required="">
	</div> <!-- form-group.// -->

	<div class="form-group">
		<label for="cardNumber">Card number</label>
		<div class="input-group">
			<input type="cardno" class="form-control" name='cardno' value="0" placeholder="">
			<div class="input-group-append">
				<span class="input-group-text text-muted">
					<i class="fab fa-cc-visa"></i>   <i class="fab fa-cc-amex"></i>   
					<i class="fab fa-cc-mastercard"></i> 
				</span>
			</div>
		</div>
	</div> <!-- form-group.// -->

	<div class="row">
	    <div class="col-sm-8">
	        <div class="form-group">
	            <label><span class="hidden-xs">Expiration</span> </label>
	        	<div class="input-group">
	        		<input type="number" class="form-control" placeholder="MM" name="">
		            <input type="number" class="form-control" placeholder="YY" name="">
	        	</div>
	        </div>
	    </div>
	    <div class="col-sm-4">
	        <div class="form-group">
	            <label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle"></i></label>
	            <input type="number" class="form-control" value="0000" required="">
	        </div> <!-- form-group.// -->
	    </div>
	</div> <!-- row.// -->
	
	<button class="subscribe btn btn-success btn-block" type='submit'> Confirm  </button>
	</form>
</div> <!-- tab-pane.// -->
</div> <!-- tab-content .// -->

</div> <!-- card-body.// -->
</article> <!-- card.// -->


	</aside> 
</div> 

</div> 


</form>

</body>
</html>