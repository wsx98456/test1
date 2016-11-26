<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    

    <title>銷貨清單資訊</title>
</head>
<body>
<c:choose>
    <c:when test="${qqq=='man'}">
		<%@include file="navbar2.jspf"%>
	</c:when>
	 <c:when test="${qqq!='man'}">
		<%@include file="navbar3.jspf"%>
	</c:when>
</c:choose>


    <div class="container theme-showcase" role="main">
    
      <div class="jumbotron" >
        <h1>銷貨清單-${id}</h1>
        <p class="lead">明細清單</p>
      </div>
	<div class="container">
		<div class="row">
			<br>
			<div class="col-md-12">
	  			
				<table class="table">
				  	<tr>
				  		<th>產品編號</th>
				  		<th>數量</th>
				  		
				  	</tr>
				  	<c:forEach items="${productList}" var="product">
					  	<tr>
					  		<td>${product.productid}</td>
					  		<td>${product.quan}</td>
					  		
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
