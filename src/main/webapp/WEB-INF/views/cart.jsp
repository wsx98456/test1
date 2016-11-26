<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="yellowghost">
<meta name="author" content="">

<title>購物車</title>

<!-- Bootstrap Core CSS -->

<link
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Custom CSS -->

<link
	href="<%=request.getContextPath()%>/resources/css/shop-homepage.css"
	rel="stylesheet" />

</head>

<body>
<c:choose>
    <c:when test="${not log}">
		<%@include file="navbar.jspf"%>
	</c:when>
	 <c:when test="${log}">
		<%@include file="navbar3.jspf"%>
	</c:when>
</c:choose>

<%@ page import="com.yellowghost.yg.entity.ShoppingBean"  %>
	<c:if test="${qqq=='ple log in'}">
		<script>alert("ple log in");</script>
	</c:if>

	<div class="container theme-showcase" role="main">
		<div class="jumbotron">
			<h1>購物車</h1>
		</div>
		<div class="container">
			<div class="row">
				<br>
				<div class="col-md-12">
					
						<table class="table">
							<tr>
								<th>類別</th>
								<th>品名</th>
								<th>型號</th>
								<th>單價</th>
								<th>數量</th>
								<th>總價</th>
								<th></th>
								<th></th>
							</tr>

							<c:forEach items="${productList2}" var="product">
								<tr>
									<td>${product.category}</td>
									<td>${product.name}</td>
									<td>${product.model}</td>
									<td>${product.dis_price}</td>
									<td>
										<div class="form-group">
											<select id="cho${product.index}" class="form-control"
												name="num${product.index}"
												onchange="myFunction(${product.dis_price},value,${product.index},${product.inventory});purchan(value,${product.index});">
												<option value="1" selected>1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
											</select>
										</div>
									</td>
									<td id="${product.index}">${product.dis_price}</td>
									<td><a class="btn btn-sm btn-danger deleteBtn"
										href="decart?id=${product.index}">刪除</a></td>
									<c:if test="${product.inventory<5}">
										<td>left ${product.inventory} !!!</td>
									</c:if>
								</tr>
							</c:forEach>
						</table>
						總金額:<label id="total">${total}</label> <a
							class="btn btn-sm btn-danger deleteBtn" href="endcart">結帳</a>
					
					
					<!-- safdsfdasgfdsgvzdfgdfg -->
				</div>
			</div>
		</div>


	</div>
	<!-- /.container -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

	<script>
function myFunction(a,b,c,d) {
    document.getElementById(c).innerHTML = b*a;
    var y=0;
	var f=${size};
	for(var i=0;i<f;i++){	
		y=y+parseFloat(document.getElementById(i).innerHTML);}
    document.getElementById("total").innerHTML = y;
    if(b>d){
    	alert("under");
    	document.getElementById("cho"+c).value=1;
    	document.getElementById(c).innerHTML = a;
    	y=0;
    	for(var i=0;i<f;i++){	
    		y=y+parseFloat(document.getElementById(i).innerHTML);		
    	}
        document.getElementById("total").innerHTML = y;
    }
}

</script>
<script>
function purchan(a,b){
	var data={
			val : a,
	ind : b
	};
	$.ajax({
		type:'GET',
	url:	"purchan",
	data: data,
	})

}


</script>

</body>
</html>