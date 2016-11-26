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
        <h1>產品管理系統    - 上傳圖片</h1>     
      </div>
</div>
<div><img src="${me}" width="300px" height="150px"></img></div>

<form method="POST" action="uploadimage" enctype="multipart/form-data" >
        File to upload: <input type="file" name="file" ><br /> 
        <input type="submit" value="Upload">
         </form>
<a class="btn btn-primary" href="product">返回</a>


</body>

<script>
$("#insertForm").validate();
</script>


</html>