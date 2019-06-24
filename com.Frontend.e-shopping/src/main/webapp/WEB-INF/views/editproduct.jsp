<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<%@taglib uri='http://www.springframework.org/tags/form' prefix = "form" %>
<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='core' %>
<body>

<form:form method='post' action='/com.Frontend.e-shopping/updateproduct' modelAttribute='productedit' >
product id:<form:input type="label" path='productid' value='${editproduct.productid}' readOnly='true'/><br><br>
 Product name :<form:input type='text'  path='productName' value='${editproduct.productName}' required="true"/><br><br>
Product price :<form:input type='text' path='price' value='${ editproduct.price}' required="true"/><br><br>
Product quantity :<form:input type='text' path='quantity' value='${ editproduct.quantity}' required="true"/><br><br>

Product description :<form:input type='text' path='productDescription' value='${ editproduct.productDescription}' required="true"/><br><br>

 <input type='submit' value='UPDATE_PRODUCT'/>
</form:form>
</body>
</html>