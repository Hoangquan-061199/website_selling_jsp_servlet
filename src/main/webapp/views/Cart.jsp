<%@page import="java.util.Map"%>
<%@page import="entity.ProductCart"%>
<%@page import="java.util.HashMap"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart</title>
    <link rel="icon" href="http://bizweb.dktcdn.net/100/429/689/themes/825316/assets/favicon.png?1634026773707">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <style><%@include file="/views/assets/css/Cart.css"%></style>
    <style><%@include file="/views/assets/css/style.css"%></style>
    <style><%@include file="/views/assets/css/responsive.css"%></style>
    
    <style>
    	.header__search-btn {
    		margin: 0;
    	}
    	
    	.wrapper {
    		margin: var(--height-header) 0;
    	}
    	
    	.main {
    		border-bottom: 1px solid var(--bs-color);
    	}
    	
    	.update-btn {
	    	border: none;
			padding: 5px 10px;
		    border-radius: 5px;
		    background-color: var(--bs-color);
		    color: var(--bs-white);
    	}
    	
    	.price-new {
    		text-align: center;
    	}
    	
    	.update-btn:hover {
    		opacity: 0.7;
    	}
    	
    	.btn-sent.btn {
   		    width: 50px;
		    border-radius: 5px;
		    margin: 0 0 0 5px;
		    height: 40px;
		    opacity: 1;
		    font-size: 16px;
    	}
    	
    	.btn-sent:hover {
    		opacity: 0.7;
    	}
    	
    	.no-product-cart {
    		text-align: center;
    		padding: 0 0 50px;
    	}
    	
    	.icon-no-cart-product {
    		display: flex;
			justify-content: center;
			padding: 50px 0;
    	}
    	
    	.icon-no-cart-product svg {
    		width: 100px;
    		height: 100px;
    		margin-bottom: 20px;	
    	}
    	
    	.input-quantity {
    		width: 100%;
		    border: 1px solid var(--bs-color);
		    background-color: var(--bs-white);
		    border-radius: 5px;
		    outline: none;
		    padding-left: 10px;
    	}
    	
    	.title {
    		margin-bottom: 30px;
    	}
    	
    	.no-cart {
    		margin-top: 40px;
    	}
    </style>
</head>

<body>
  
  	<jsp:include page="Menu.jsp"></jsp:include>
  	
  	<c:if test="${ cart == null }">
       	<div class="container-md no-cart">
       		<h3 class="title">Giỏ hàng của bạn</h3>
       		<div class="icon-no-cart-product">
	       		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bag-x" viewBox="0 0 16 16">
					<path fill-rule="evenodd" d="M6.146 8.146a.5.5 0 0 1 .708 0L8 9.293l1.146-1.147a.5.5 0 1 1 .708.708L8.707 10l1.147 1.146a.5.5 0 0 1-.708.708L8 10.707l-1.146 1.147a.5.5 0 0 1-.708-.708L7.293 10 6.146 8.854a.5.5 0 0 1 0-.708z"/>
					<path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
				</svg>
	       	</div>
	       	<h4 class="no-product-cart">Không có sản phẩm nào!</h4>
       	</div>
    </c:if>
  	
    <c:if test="${ cart != null }">
  	<div class="wrapper">
  		<div class="card container-md">
		    <div class="row">
		        <div class="col-lg-8 cart">
		            <div class="row">
						<h3 class="title">Giỏ hàng của bạn</h3>
		            		<%
		            			HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>)request.getAttribute("cart");
		            			for(Map.Entry<Integer, ProductCart> entry : cart.entrySet()) {
		            				Integer key = entry.getKey();
		            				ProductCart productCart = entry.getValue();
		            		%>
			            		<div class="row main align-items-center">
									<div class="col-1"><img class="img-fluid" src="<%= productCart.product.getImgSrc() %>"></div>
				                    <div class="col-4">
				                        <div class=""><%= productCart.product.getName() %></div>
				                    </div>
				                    <div class="col-7">
					                    <form class="row align-items-center" action="/ProductManage/cart/update-quantity" method="post">
					                    	<div class="col-9 text-muted ">
					                    		<div class="row">
					                    			<div class="col-4">
								                   		<input name="quantity" class="mb-0 input-quantity" type="number" value="<%= productCart.quantity %>">
								                   		<input name="id" type="hidden" value="<%= productCart.product.getId() %>">					                        	
						                        	</div>
						                   			<div class="col-8 price-new"><%= String.valueOf(productCart.product.getPriceNew()) %> </div>	
						                    		</div>
					                        	</div>
					                    	<div class="col-3">
					                    		<button class="update-btn" type="submit">Cập nhật</button>
					                    	</div>
					                    </form>
				                    </div>
				                </div>
		            		<% } %>
		            </div>
		        </div>
	            	
		        <div class="col-md-4">
		        	<h3 class="title">Thông tin khách hàng</h3>
		         	<form action="/ProductManage/cart/checkout" method="post">
					  	<div class="mb-3">
						    <label class="form-label">Họ tên</label>
						    <input type="text" name="name" class="form-control">
					  	</div>
					  	<div class="mb-3">
						    <label class="form-label">Số điện thoại</label>
						    <input type="number" name="phone" class="form-control">
					  	</div>
					  	<div class="mb-3">
						    <label class="form-label">Địa chỉ</label>
						    <textarea name="address" class="form-control" rows="" cols=""></textarea>
					  	</div>
					  	<button type="submit" class="update-btn ">Thanh toán</button>
					</form>  
		        </div>
		    </div>
		</div>
  	</div>
	</c:if>		            	
  
 	<jsp:include page="Footer.jsp"></jsp:include>
 
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/views/assets/js/main.js"></script>
</body>

</html>