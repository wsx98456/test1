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

<title>Yellow_Ghost</title>

<!-- Bootstrap Core CSS -->

<link
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Custom CSS -->

<link
	href="<%=request.getContextPath()%>/resources/css/shop-homepage.css"
	rel="stylesheet" />



<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
test
<c:choose>
    <c:when test="${not log}">
		<%@include file="navbar.jspf"%>
	</c:when>
	 <c:when test="${log}">
		<%@include file="navbar3.jspf"%>
	</c:when>
</c:choose>

	<!-- Page Content -->
	<div class="container">

		<div class="row" style="float: right, width: 741px;">

			<div class="col-md-3">
				<h4>category</h4>
				<div class="list-group">
					<p class="list-group-item" style="background-color:#d6e6fb">電腦</p>
					<a href="cat?a=筆電&typ=cat"class="list-group-item">筆電</a> 
					<a href="cat?a=桌電&typ=cat"class="list-group-item">桌電</a>
					<p class="list-group-item" style="background-color:#d6e6fb">行動</p> 
					<a href="cat?a=手機&typ=cat"class="list-group-item">手機</a> 
					<a href="cat?a=平板&typ=cat"class="list-group-item">平板</a>
					<p class="list-group-item" style="background-color:#d6e6fb">周邊</p>
					<a href="cat?a=鍵盤/滑鼠&typ=cat"class="list-group-item">鍵盤/滑鼠</a>
					<a href="cat?a=隨身碟&typ=cat"class="list-group-item">隨身碟</a>
			  	<p class="list-group-item" style="background-color:#d6e6fb">視聽</p>
					<a href="cat?a=電視&typ=cat"class="list-group-item">電視</a>
					<a href="cat?a=電玩&typ=cat"class="list-group-item">電玩</a> 
				</div>
			</div>
			<div style="height: 60px;">
<a href="${typ}?con=PA&a=${a}">依價錢(低到高)</a>
<a href="${typ}?con=PD&a=${a}" >依價錢(高到低)</a>
<a href="${typ}?con=DA&a=${a}" >依上市日期(遠到近)</a>
<a href="${typ}?con=DD&a=${a}" >依上市日期(近到遠)</a>
</div>
			<div class="row" style="float: right; height: 450px; width: 880px;">
				<c:forEach items="${productList}" var="product" begin="0" end="5">
					<div class="col-sm-4 col-lg-4 col-md-4">
						<div class="thumbnail">
							<img src="${product.path}"
								style="width: 320px; height: 300px">
							<div class="caption">
								<h4>
									<a href="inf?id=${product.id}">${product.name}</a>
								</h4>
								<h1 class="pull-left" style="font-size: 300%; color: #FF7F43">${product.dis_price}</h1>
								<a class="btn btn-primary" id="dd"
									style="position: absolute; right: 30px; bottom: 40px"
									href="addcart?id=${product.id}"
									onclick="window.location.reload()">addcart</a>
							</div>
						</div>
					</div>

				</c:forEach>
			</div>

		</div>

	</div>

	</div>
	<!-- /.container -->

	<div class="container">

		<hr>
		<a href="index2" class="pull-right">開發人員</a>
		<!-- Footer -->
		<footer> </footer>

	</div>
	<!-- /.container -->


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

	<script type="text/javascript">
		$("#dd").click(function() {
			$.ajax({
				url : 'addcart',
				method : 'GET',
				async : false,
				complete : function(data) {
					console.log(data.responseText);
				}
			});
		});
	</script>
	<script>
	function getValue(varname)
	{
	  var url = window.location.href;
	  var qparts = url.split("?");
	  if (qparts.length == 0){return "";}
	  var query = qparts[1];
	  var vars = query.split("&amp;");
	  var value = "";
	  for (i=0; i<vars.length; i++)
	  {
	    var parts = vars[i].split("=");
	    if (parts[0] == varname)
	    {
	      value = parts[1];
	      break;
	    }
	  }
	  value = unescape(value);
	  value.replace(/\+/g," ");
	  return value;
	}
	</script>



</body>

</html>
