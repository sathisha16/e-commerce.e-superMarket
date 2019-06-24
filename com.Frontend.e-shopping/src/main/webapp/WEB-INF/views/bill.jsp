<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
    
<!DOCTYPE html>
<html>




<head>


<style type="text/css">
small { 
  font-size: smaller;
}


</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


<%-- 
<body>
<b>Bill</b>

${cart.cartdetails}
<br>
<c:forEach items='${cartlist}' var='cart'>
Product Name:
${cart.productname}

Product Price:
${cart.price}
Product quantity:
${cart.quantity}
<br>

 </c:forEach>


  Grand Total ${grandtotal}
  
  <br>
</body>


 --%>
 
 
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

${cart.cartdetails}
<div class="container">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                        <strong>${user}</strong>
                        
                        ${address}
                        <strong>  ${cartitemid}</strong>
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        	<em>#: ${user}<strong id="date"></strong></em>
                        <%  Date date = new Date();
         					out.print( "<p align = \"center\">" +date.toString()+"</p>");
    				    %>
     			 
                    </p>
                    
                    
                    
                        <script>
								var d = new Date();
								document.getElementById("date").innerHTML = d.getDate();
								</script>
                    
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>quantity</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items='${cartlist}' var='cart'>
                    
                        <tr>
                            <td class="col-md-9"><em>${cart.productname}</em></h4></td>
                            <td class="col-md-1" style="text-align: center">${cart.quantity} </td>
                            <td class="col-md-1 text-center">${cart.price}</td>
                            <td class="col-md-1 text-center">${cart.price * cart.quantity}</td>
                        </tr>
                        </c:forEach>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right">
                            <p>
                                <strong>Subtotal: </strong>
                            </p>
                            <p>
                                <strong>Discount: </strong>
                            </p></td>
                            <td class="text-center">
                            <p>
                                <strong>${grandtotal}</strong>
                            </p>
                            <p>
                                <strong>$6.94</strong>
                            </p></td>
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><strong>${grandtotal-6.94}</strong></h4></td>
                        </tr>
                    </tbody>
                </table>
               <button type="button" class="btn btn-danger btn-lg btn-block">
                    ThankYou..!..visit..Aghain   <span class="glyphicon glyphicon-chevron-right"></span>
                </button>
            </div>
        </div>
    </div>

</html>