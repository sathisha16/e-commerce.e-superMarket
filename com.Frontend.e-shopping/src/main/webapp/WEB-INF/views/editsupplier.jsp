<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix = "form" %>
<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='core' %>
<body>
<h2>edit supplier</h2>


<form:form method='post' action='/com.Frontend.e-shopping/updatesupplier' modelAttribute='editsupplier' required="true">
supplierid :<form:input type='text' path='supplierid' value='${editsupplier.supplierid}' readOnly='true' /><br><br>
supplierName :<form:input type='text'  path='supplierName' value='${editsupplier.supplierName}' required="true"/><br><br>
supplier Address:<form:input type='text'  path='supplierAddress' value='${editsupplier.supplierAddress}' required="true"/><br><br>
supplier PhoneNo : <form:input type='text'  path='supplierPhoneNo' value='${editsupplier.supplierPhoneNo}' required="true"/><br><br>
supplier Email :<form:input type='text'  path='supplierEmail' value='${editsupplier.supplierEmail}' required="true"/><br><br>


<input type='submit' value='UPDATE_SUPPLIER'/>
</form:form>
</body>
</html>