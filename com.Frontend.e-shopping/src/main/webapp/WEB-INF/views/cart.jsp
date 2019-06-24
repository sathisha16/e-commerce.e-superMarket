<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix='form'  %>


<%@ include file="userProductPage.jsp" %>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container">
	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:50%">Product</th>
							<th style="width:10%">Price</th>
							<th style="width:8%">Quantity</th>
							<th style="width:22%" class="text-center">Subtotal</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items='${cartlist}' var='cart'>
					
						<tr>
							<td data-th="Product">
								<div class="row">
									<div class="col-sm-2 hidden-xs"><img width='100' height='100' src='http://localhost:9002/com.Frontend.e-shopping/resources/images/${cart.productid}.jpg' alt="thumbnail"  class="img-responsive"/></div>
									<div class="col-sm-10">
										<h4 class="nomargin">${cart.productname}</h4>
										
									</div>
								</div>
							</td>
							<td data-th="Price">${cart.price}</td>
							<td data-th="Quantity">
								<input type="number" class="form-control text-center" value=${cart.quantity}>
							</td>
							<td data-th="Subtotal" class="text-center">${cart.price * cart.quantity}</td>
							<td class="actions" data-th="">
<%-- 							<a href='/com.Frontend.e-shopping/cartedit/${cart.cartid}'>	<button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button></a>
 --%>							<a href='/com.Frontend.e-shopping/cartdelete/${cart.cartid}'>	<button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>	</a>							
							</td>
						</tr>
						</c:forEach>
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total1 $ ${total}</strong></td>
						</tr>
						<tr>
							<td><a href="/com.Frontend.e-shopping/login_success" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Total $ ${grandtotal}</strong></td>
							<td><a href="/com.Frontend.e-shopping/payment" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
						</tr>
					</tfoot>
				</table>
</div>



