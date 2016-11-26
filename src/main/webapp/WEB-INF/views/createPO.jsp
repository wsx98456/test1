<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    

    <title>進貨單</title>
</head>
<body>
	<%@include file="navbar2.jspf" %>
    <div class="container theme-showcase" role="main">
    
      <div class="jumbotron" >
        <h1>進貨單</h1>
      </div>
	<div class="container">

		<div class="row">
			<br>
			<div class="col-md-3"></div>
			
			<div class="col-md-6">
			<form method="post" action="createPO2" id="createPO">
					<div class="form-group">
						<label>品名:</label>
						<p>${product.name}</p>
					</div>
					
					<div class="form-group">
						<label>編號:</label>
							<p>${product.id}</p>
					</div>
						<div class="form-group">
						<label>存量:</label>
							<p>${product.inventory}</p>			
					</div>
				<div class="form-group">
						<label>安全存量:</label>
						<p>${product.safe_inventory}</p>			
					</div>
					
					<div class="form-group">
						<label>進貨量:</label>
						<input type="number" name="inv" value="0" min="0">				
					</div>
                          <input type="hidden" name="id" value=${product.id}> 
                   <button type="submit" class="btn btn-info">進貨</button>>  
			  		<a class="btn btn-primary" href="product">返回</a>
			
				</form>>
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
