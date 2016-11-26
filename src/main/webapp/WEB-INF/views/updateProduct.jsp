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
        <h1>產品管理系統     -  產品修改</h1>     
      </div>
	<div class="container">
		<div class="row">
			<br>
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<form method="post" action="updateProduct" id="updateForm">
					<div class="form-group">
						類別:<select class="form-control" name="category" placeholder="${product.category}">
  						<option>筆電</option>
  						<option>桌電</option>
  						<option>手機</option>
  						<option>平板</option>
  						<option>鍵盤/滑鼠</option>
  						<option>隨身碟</option>
  						<option>電視</option>
  						<option>電玩</option>
						</select>
					</div>
					<div class="form-group">
						<label>品名:</label>
						<input type="text" name="name"  value="${product.name}" required>
					</div>
					
					<div class="form-group">
						<label>品牌:</label>
						<input type="text" name="brand"  value="${product.brand}" required>
					</div>
					
					<div class="form-group">
						<label>型號:</label>
						<input type="text" name="model"  value="${product.model}" required>
					</div>
					
					<div class="form-group">
						<label>進貨量:</label>
						<input type="number" name="inventory" value="${product.inventory}" min="0">
						<p class="help-block">目前庫存數量:${product.inventory}</p>
					</div>
					
					<div class="form-group">
						<label>價格:</label>
						<input type="number" name="price" value="${product.price}" min="0">
						<p class="help-block">目前價格:${product.price}</p>
					</div>
					<div class="form-group">
						<label>優惠價格:</label>
						<input type="number" name="dis_price" value="${product.dis_price}" min="0">
						<p class="help-block">目前優惠價格:${product.dis_price}</p>
					</div>
					 <input type="hidden" name="id" value=${product.id}> 	
				 <button type="submit" class="btn btn-default">修改 </button>
				 <a class="btn btn-primary" href="product">返回</a>
				</form>
				
		
			</div>
				  
		
			<div class="col-md-3"></div>
		</div>
	</div>
	</div><!-- /.container -->
	    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/jquery.validate.js" />"></script>
    <script src="<c:url value="/resources/js/additional-methods.js" />"></script>
    <script src="<c:url value="/resources/js/messages_zh_TW.js" />"></script>
	<script>
	$("#updateForm").validate();
	</script>
    
</body>
</html>
