<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%-- 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
 --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>
    
<html>
<head>
  <title>Online Shopping at eShop</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://use.fontawesome.com/13e76be964.js"></script>
  <link rel="stylesheet" type="text/css" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">

<style>

/* ul > li{margin-right:25px;font-weight:lighter;cursor:pointer}
li.active{border-bottom:3px solid silver;}

.item-photo {
display:flex;
justify-content:center;
align-items:center;
border-right:1px solid #f6f6f6;
}
.menu-items {
list-style-type:none;
font-size:11px;
display:inline-flex;
margin-bottom:0px;
margin-top:20px
}
.btn-success{
width:100%;
border-radius:0px;
}
.section{
width:100%;
margin-left:-15px;
padding:2px;
padding-left:15px;
padding-right:15px;
background:#f8f9f9
}
.title-price{
margin-top:30px;
margin-bottom:0px;
color:black
}
.title-attr{
margin-top:0px;
margin-bottom:0px;
color:black;
}
.btn-minus{
cursor:pointer;
font-size:7px;
display:flex;
align-items:center;
padding:5px;
padding-left:10px;
padding-right:10px;
border:1px solid gray;
border-radius:2px;
border-right:0px;
}
.btn-plus{
cursor:pointer;
font-size:7px;
display:flex;
align-items:center;
padding:5px;
padding-left:10px;
padding-right:10px;
border:1px solid gray;
border-radius:2px;
border-left:0px;
}
div.section > div {width:100%;display:inline-flex;}
div.section > div > input {margin:0px;padding-left:5px;font-size:10px;padding-right:5px;max-width:18%;text-align:center;}
.attr,.attr2{cursor:pointer;margin-right:5px;height:20px;font-size:10px;padding:2px;border:1px solid gray;border-radius:2px;}
.attr.active,.attr2.active{ border:1px solid orange;}

@media (max-width: 426px) {
    .container {margin-top:0px !important;}
    .container > .row{padding:0px !important;}
    .container > .row > .col-xs-12.col-sm-5{
        padding-right:0px ;    
    }
    .container > .row > .col-xs-12.col-sm-9 > div > p{
        padding-left:0px !important;
        padding-right:0px !important;
    }
    .container > .row > .col-xs-12.col-sm-9 > div > ul{
        padding-left:10px !important;
        
    }            
    .section{width:104%;}
    .menu-items{padding-left:0px;}
}


 */

html {
  height: 100%;
  box-sizing: border-box;
}

body {
  position: relative;
  margin: 0;
  padding-bottom: 12rem;
  min-height: 100%;
  font-family: "Helvetica Neue", Arial, sans-serif;
}

.footer 
{
  position: absolute;
  right: 0;
  bottom: 0;
  left: 0;
  padding: 3rem;
  background-color: black;
  text-align: center; 
}
</style>

</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  
    <div class="navbar-header">
      <a class="navbar-brand" href="<c:url value="/" /> ">eShop</a>
    </div>
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="<c:url value="/" /> "><span class="glyphicon glyphicon-home"></span>Home</a></li>
       <li class="active"><a href="<c:url value="/userProduct" /> ">User Products</a></li>
   <%--  <c:if test="${not empty pageContext.request.userPricipal}">
    <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}"> --%>
    <req:isUserInRole role="admin">
      <li class="active"><a href="<c:url value="/getAllProducts" /> ">All Products</a></li>      
      <li class="active"><a href="<c:url value="/addProduct" /> ">Add Product</a></li>
    </req:isUserInRole>
   <%--  </c:if>
    </c:if> --%>
     

      
    </ul>
    
     <ul class="nav navbar-nav navbar-right">
     <c:if test="${pageContext.request.userPrincipal.name !=null }">
        <li><a href="">Welcome! ${pageContext.request.userPrincipal.name }</a></li>
       </c:if>
       <c:if test="${pageContext.request.userPrincipal.name ==null }">
         <li><a href="<c:url value="/register" /> "><span class="glyphicon glyphicon-user"></span>Register</a></li>
         <li><a href="<c:url value="/login" /> "><span class="glyphicon glyphicon-log-in"></span>Log in</a></li>
       </c:if>      
       <c:if test="${pageContext.request.userPrincipal.name !=null }">
	       <li><a href="<c:url value="/cart/getCartById"></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
         <li><a href="<c:url value="/j_spring_security_logout"></c:url>"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
	   </c:if>
	    
    </ul>
     
  </div>
</nav>

