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
    	.header__search-icon-btn {
	    	top: 11px;
    	}
    	
    	.main {
    		border-top: 1px solid var(--bs-color);
    	}
    	
    	.main:last-child {
    		border-bottom: 1px solid var(--bs-color);
    	}
    	
    	.del-btn {
	    	border: none;
			padding: 5px 10px;
		    border-radius: 5px;
		    background-color: var(--bs-color);
		    color: var(--bs-white);
    	}
    	
    	.price-new {
    		text-align: center;
    		margin-top: 5px;
    	}
    	
    	.del-btn:hover {
    		opacity: 0.7;
    	}
    </style>
</head>

<body>
  
  	<jsp:include page="Menu.jsp"></jsp:include>
  	
  	<div>
  		<div class="card container-md">
		    <div class="row">
		        <div class="col-md-8 cart">
		            <div class="title">
		                <div class="row">
		                    <div class="col">
		                        <h4><b>Giỏ hàng</b></h4>
		                    </div>
		                </div>
		            </div>
		            <div class="row border-top border-bottom">
		            	<c:if test="${ cart != null }">
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
					                    	<div class="col-7 text-muted ">
					                    		<div class="row">
					                    			<div class="col-4">
								                   		<input name="quantity" class="mb-0" type="number" value="<%= productCart.quantity %>">
								                   		<input name="id" type="hidden" value="<%= productCart.product.getId() %>">					                        	
						                        	</div>
						                   			<div class="col-8 price-new"><%= productCart.product.getPriceNew() %> </div>	
						                    		</div>
					                        	</div>
					                    	<div class="col-5">
					                    		<button class="del-btn" type="submit">Cập nhật</button>
					                    		<button class="del-btn">Xoá</button>
					                    	</div>
					                    </form>
				                    </div>
				                </div>
		            		<% } %>
		            	</c:if>
		            </div>
		        </div>
		       <%--
		        <div class="col-md-4 summary">
		            <div>
		                <h5><b>Summary</b></h5>
		            </div>
		            <hr>
		            <div class="row">
		                <div class="col" style="padding-left:0;">ITEMS 3</div>
		                <div class="col text-right">&euro; 132.00</div>
		            </div>
		            <form>
		                <p>SHIPPING</p> <select>
		                    <option class="text-muted">Standard-Delivery- &euro;5.00</option>
		                </select>
		                <p>GIVE CODE</p> <input id="code" placeholder="Enter your code">
		            </form>
		            <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
		                <div class="col">TOTAL PRICE</div>
		                <div class="col text-right">&euro; 137.00</div>
		            </div> <button class="btn">CHECKOUT</button>
		        </div> --%>
		    </div>
		</div>
  	</div>
  
 	<jsp:include page="Footer.jsp"></jsp:include>
 
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/views/assets/js/main.js"></script>
</body>

</html>