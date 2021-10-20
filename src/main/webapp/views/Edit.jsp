<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Quản lý sản phẩm</title>
        <link rel="icon" href="http://bizweb.dktcdn.net/100/429/689/themes/825316/assets/favicon.png?1634026773707">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style><%@include file="/views/assets/css/manager.css"%></style>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
            
            .table-title h2 a {
            	color: #fff;
            	width: 20px;
            	height: 20px;
            }
        </style>
    <body>
   		
        <div class="modal-content container">
        	<form action="add" method="post">
                 <div class="modal-header">						
                     <h4 class="modal-title">Chỉnh sửa sản phẩm</h4>
                     <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                 </div>
                 <div class="modal-body">					
                     <div class="form-group">
                         <label>Name</label>
                         <input name="name" type="text" class="form-control" required>
                     </div>
                     <div class="form-group">
                         <label>Image</label>
                         <input name="image" type="text" class="form-control" required>
                     </div>
                     <div class="form-group">
                         <label>Price new</label>
                         <input name="pricenew" type="text" class="form-control" required>
                     </div>
                     <div class="form-group">
                         <label>Price last</label>
                         <input name="pricelast" type="text" class="form-control">
                     </div>
                     <div class="form-group">
                         <label>Description</label>
                         <textarea name="description" class="form-control" required></textarea>
                     </div>
                     <div class="form-group">
                         <label>Category</label>
                         <select name="category" class="form-select" aria-label="Default select example">
                             <c:forEach items="${listAllCategory}" var="list">
                                 <option value="<c:out value="${list.getId()}"/>"><c:out value="${list.getName()}"/></option>
                             </c:forEach>
                         </select>
                     </div>

                 </div>
                 <div class="modal-footer">
                     <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                     <input type="submit" class="btn btn-success" value="Add">
                 </div>
             </form>    
        </div>
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/views/assets/js/manager.js"></script>
</body>
</html>