<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
 	<meta http-equiv="Content-Type" 
	content="text/html; charset=UTF-8">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="yellowghost">
    <meta name="author" content="">

    <title>會員登入</title>

     <!-- Bootstrap Core CSS -->
   
<link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->

<link href="<%=request.getContextPath() %>/resources/css/shop-homepage.css" rel="stylesheet"/>


</head>
<body>
	<c:if test="${e=='m'}">
		<script>alert("member can't find");</script>
	</c:if>

<%@include file="navbar.jspf" %>

<div class="container theme-showcase" role="main">
      <div class="jumbotron" >    
        <h1>會員    - 登入</h1>     
      </div>
</div>
<form method="post" action="memlog" id="insertForm">
<label>帳號</label>
<input type="text" name="accountname" >
<label>密碼</label>
<input type="text" name="int2">
<button type="submit" class="btn btn-info">登入</button>
</form>

	    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/jquery.validate.js" />"></script>
    <script src="<c:url value="/resources/js/additional-methods.js" />"></script>
    <script src="<c:url value="/resources/js/messages_zh_TW.js" />"></script>
	<script>
	$("#insertForm").validate();
	</script>
    
</body>
</html>