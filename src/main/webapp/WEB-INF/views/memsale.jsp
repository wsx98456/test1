<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    

    <title>購物清單資訊</title>
</head>
<body>
	<%@include file="navbar3.jspf" %>
    <div class="container theme-showcase" role="main">
    
      <div class="jumbotron" >
        <h1>您的購物清單</h1>
      </div>
	<div class="container">
		<div class="row">
			<br>
			<div class="col-md-12">			
				<table class="table">
				  	<tr>
				  		<th>購物清單編號</th>
				  		<th>日期</th>
				  		<th>總金額</th>
				  		
				  	</tr>
				  	<c:forEach items="${p}" var="sale">
					  	<tr>
					  		<td><a href="salesOrderItem?sid=${sale.id}">${sale.id}</a></td>
					  		<td>${sale.date}</td>
					  		<td>${sale.total}</td>
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
