<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<%@taglib uri='http://www.springframework.org/tags/form' prefix = "form" %>
<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='core' %><body>
<body>


<form:form method='post' action='/com.Frontend.e-shopping/updatecategory' modelAttribute='categoryedit'>
<form:input type='text' path='categoryid' value='${editcategory.categoryid}' readOnly='true'/>
<form:input type='text'  path='categoryname' value='${editcategory.categoryname}' required="true"/>

<input type='submit' value='update'/>
</form:form>


</body>
</html>