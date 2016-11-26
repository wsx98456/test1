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

    <title>Yellow_Ghost_StaffLog</title>

     <!-- Bootstrap Core CSS -->
   
<link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->

<link href="<%=request.getContextPath() %>/resources/css/shop-homepage.css" rel="stylesheet"/>
</head>
<body>

<%@include file="navbar2.jspf" %>
	<div class="container theme-showcase" role="main">
      <div class="jumbotron" >    
        <h1>產品管理系統    - 登入</h1>     
      </div>
</div>
<form method="post" action="index2" id="insertForm">
<label>帳號</label>
<input type="text" name="accountname" placeholder="輸入帳號" >
<label>密碼</label>
<input type="text" name="int2">
<button type="submit" class="btn btn-info">登入</button>
</form>
</body>

<script>
$("#insertForm").validate();
</script>


</html>