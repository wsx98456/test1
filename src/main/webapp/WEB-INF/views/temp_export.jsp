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
        <h1>銷貨清單</h1>        
      </div>
	<div class="container">
		<div class="row">
			<br>
			<div class="col-md-12">	
				<table class="table">
				  	<tr>
				  		<th>訂購人姓名</th>
				  		<th>產品總數量</th>
				  		<th></th>

				  	</tr>
				  	<c:forEach items="${productList}" var="list">
					  	<tr>
					  		<td>${product.id}</td>
					  		<td>${product.category}</td>
					  		<td>
					  			<a class="btn btn-default" href="check?id=${list.id}">查看</a>   
					  			<a class="btn btn-default" href="export?id=${list.id}">查看</a>         	  		
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