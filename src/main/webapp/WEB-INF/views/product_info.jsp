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

    <title>產品資訊</title>

     <!-- Bootstrap Core CSS -->
   
<link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->

<link href="<%=request.getContextPath() %>/resources/css/shop-homepage.css" rel="stylesheet"/>
<link href='//fonts.googleapis.com/css?family=Lora:400' rel='stylesheet' type='text/css'><script src="//s3-ap-northeast-1.amazonaws.com/justfont-user-script/jf-42494.js"></script>

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
<div class="container">

  <div class="row">

   <div class="col-md-2 col-lg-2">
    <h4>category</h4>
    <div class="list-group">
  <p class="list-group-item" style="background-color:#d6e6fb">電腦</p>
					<a href="cat?a=筆電"class="list-group-item">筆電</a> 
					<a href="cat?a=桌電"class="list-group-item">桌電</a>
					<p class="list-group-item" style="background-color:#d6e6fb">行動</p> 
					<a href="cat?a=手機"class="list-group-item">手機</a> 
					<a href="cat?a=平板"class="list-group-item">平板</a>
					<p class="list-group-item" style="background-color:#d6e6fb">周邊</p>
					<a href="cat?a=鍵盤/滑鼠"class="list-group-item">鍵盤/滑鼠</a>
					<a href="cat?a=隨身碟"class="list-group-item">隨身碟</a>
			  	<p class="list-group-item" style="background-color:#d6e6fb">視聽</p>
					<a href="cat?a=電視"class="list-group-item">電視</a>
					<a href="cat?a=電玩"class="list-group-item">電玩</a> 
					 
    </div>
   </div>
   
    <div class="row">
      <div class="col-md-6 col-lg-5"> <img class="img-rounded" style="width:450px;height:450px" src="${product.path}">
       
 </div>
      <div class="col-md-3 col-lg-4">   
      <div class="clearfix">    
          <h1 class="setofont">${product.name}</h1>
     </div>
      <div class="clearfix well well-sm">
            <ul>
              <li >定價：<em>${product.price}</em>元</li>
              <li>優惠價：<strong>
                <b>${product.dis_price}</b></strong>元</li>
              <li>優惠期限：${product.dis_date}  止</li>
            </ul>    
      </div> 
      <div class="clearfix well well-sm">
            <ul>
              <li>品牌：${product.brand}</li>
               <li>商品型號：${product.model}</li>
            </ul>
      </div>
      <div class="clearfix">            
   <a href="addcart?id=${product.id}" onclick="window.location.reload()" class="glyphicon glyphicon-thumbs-up btn-lg btn-primary"><span>放入購物車</span></a>
    </div>
    </div>
</div>
</div>
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</body>
</html>