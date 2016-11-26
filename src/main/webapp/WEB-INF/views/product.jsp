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

    <title>產品管理</title>

     <!-- Bootstrap Core CSS -->
   
<link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->

<link href="<%=request.getContextPath() %>/resources/css/shop-homepage.css" rel="stylesheet"/>


</head>
<body>
	<%@include file="navbar2.jspf" %>
	<div class="container theme-showcase" role="main">
      <div class="jumbotron" >    
        <h1>產品管理系統</h1>        
      </div>
	<div class="container">
		<div class="row">
			<br>
			<div class="col-md-12">
	  			<a class="btn btn-primary" href="insertProduct">新增</a>
	  			<a class="btn btn-primary" href="check">查看銷貨清單</a>
	  			<a class="btn btn-primary" href="goods_importable">應進貨</a>
	  			<a class="btn btn-primary" href="purchasetable">進貨單</a>
				<table class="table">
				  	<tr>
				  		<th>編號</th>
				  		<th>類別</th>
				  		<th>品名</th>
				  		<th>型號</th>
				  		<th>價錢</th>
				  		<th>庫存量</th>
				  		<th>編輯</th>
				  	</tr>
				  	<c:forEach items="${productList}" var="product">
					  	<tr>
					  		<td>${product.id}</td>
					  		<td>${product.category}</td>
					  		<td>${product.name}</td>
					  		<td>${product.model}</td>
					  		<td>${product.dis_price}</td>
					  		<td>${product.inventory}</td>
					  		<td>
					  			<a class="btn btn-default" href="updateProduct?id=${product.id}">修改</a>
					  			<a class="btn btn-sm btn-danger deleteBtn" href="deleteProduct?id=${product.id}">刪除</a>
		                        <a class="btn btn-default" href="uploadimage?id=${product.id}">上傳圖片</a>
		                        <a class="btn btn-default" href="createPO?id=${product.id}">進貨</a>
					  		</td>
					  	</tr>
				  	</c:forEach>
				</table>
			</div>
		</div>
	</div>
	

    </div><!-- /.container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</body>
</html>
