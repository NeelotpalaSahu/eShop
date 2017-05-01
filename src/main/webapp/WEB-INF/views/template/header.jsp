<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

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

                /* productDescription */
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
}t

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
div.section > div {
width:100%;
display:inline-flex;
}
div.section > div > input {
margin:0px;
padding-left:5px;
font-size:10px;
padding-right:5px;
max-width:18%;
text-align:center;
}
.attr,.attr2{
cursor:pointer;
margin-right:5px;
height:20px;
font-size:10px;
padding:2px;
border:1px solid gray;
border-radius:2px;
}
.attr.active,.attr2.active{
border:1px solid orange;
}

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


               /* header - footer */
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


.panel {

    transition: all .5s ease-in-out;
    -moz-transition: all .5s ease-in-out; /* Firefox 4 */
    -webkit-transition: all .5s ease-in-out; /* Safari and Chrome */
    -o-transition: all .5s ease-in-out; /* Opera */
    -ms-transition: all .5s ease-in-out; /* IE9 (maybe) */

}

.im
{
-webkit-transition: all 0.2s ease-in-out;
}
.im:hover {
    transform: scale(1.1);
}

.panel-white {
    background-color: #fff;
}
.panel .title {
  font-size: 32px;
  color: #828282;
  margin: 0;
    padding: 0;
}
.panel .subtitle {
  margin:0;
  padding: 0;
font-size: 28px;
  color: #828282;
}
.panel .text {
  font-size: 16px;
  color: #828282;
}
.panel .price {
  color: #73b822;
  font-size: 35px;
  font-weight: 600;
}
.panel .price-hr {
    width: 85%;
    border: 0px;
    background-color: #73b822;
    color: #73b822;
    height: 1px;
}
.panel .hr {
    width: 85%;
    border: 0px;
    background-color: #eeeeee;
    color: #eeeeee;
    height: 1px;
}
.btn-green {
    background-color: #73b822;
    color: #fff;
    width: 90%;
    font-size: 16px;
}

 .panel-footer {
    text-align: center;
    background-color: #fff;
    margin-top: 30px;
}
 .btn-green:hover {
    color: #fff;
    transform: scale(1.1);
}  
.list-group-item {
border: 0px;
margin: 0;
padding: 0;
}

img.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
}


                   /* userProduct */
 * {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

.pagination a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color .3s;
}

.pagination a.active {
    background-color: #4CAF50;
    color: white;
}

.pagination a:hover:not(.active) {background-color: #ddd;}


/* Absolute Center */
.Absolute-Center {
  margin: auto;
  position: absolute;
  top: 0; left: 0; bottom: 0; right: 0;
}

.Absolute-Center.is-Responsive {
  width: 50%; 
  height: 60%;
  min-width: 200px;
  max-width: 400px;
  padding: 40px;
}

</style>

<script>
                     /* productDescription */
$(document).ready(function(){
    //-- Click on detail
    $("ul.menu-items > li").on("click",function(){
        $("ul.menu-items > li").removeClass("active");
        $(this).addClass("active");
    })

    $(".attr,.attr2").on("click",function(){
        var clase = $(this).attr("class");

        $("." + clase).removeClass("active");
        $(this).addClass("active");
    })

    //-- Click on QUANTITY
    $(".btn-minus").on("click",function(){
        var now = $(".section > div > input").val();
        if ($.isNumeric(now)){
            if (parseInt(now) -1 > 0){ now--;}
            $(".section > div > input").val(now);
        }else{
            $(".section > div > input").val("1");
        }
    })            
    $(".btn-plus").on("click",function(){
        var now = $(".section > div > input").val();
        if ($.isNumeric(now)){
            $(".section > div > input").val(parseInt(now)+1);
        }else{
            $(".section > div > input").val("1");
        }
    })                        
}) 


            /* userProduct */
function myFunction() {
  var input, filter, i,div,second,str,str1;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  
  div=document.getElementById("mySearch");
  
  second=div.getElementsByClassName("second");
  
  for (i = 0; i < second.length; i++) {
    h5 = second[i].children[0];
    str=h5.children[2].children[1];
    str1=h5.children[2].children[0];
    if (str || str1) {
      if (str.innerHTML.toUpperCase().indexOf(filter) > -1 ||
    		  str1.innerHTML.toUpperCase().indexOf(filter) > -1) {
        second[i].style.display = "";
      } else {
        second[i].style.display = "none";
      }
    }       
  }
}


function sortByBrand() {
	  var div,rows, switching, i, x, y, shouldSwitch;
	  input = document.getElementById("myInput");
	  switching = true;
	 
	  while (switching) {	    
	    switching = false;
	    div = input.getElementsByTagName("div");
	    
	    for (i = 1; i < (input.length - 1); i++) {
	      
	      shouldSwitch = false;
	      
	      x = rows[i].getElementsByTagName("div")[0];
	      y = rows[i + 1].getElementsByTagName("div")[0];
	      
	      if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {	        
	        shouldSwitch= true;
	        break;
	      }
	    }
	    if (shouldSwitch) {
	       rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
	      switching = true;
	    }
	  }
	}
	
	
	/* Buy Now */
function msg(){
	alert("Item successfully added to cart");
}
</script>
</head>

<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
   <ul class="nav navbar-nav">
      <li class="active" style="font-size: 150%;"><a href="<c:url value="/" /> ">eShop</a></li>
      <li ><a href="<c:url value="/" /> "><span class="glyphicon glyphicon-home"></span>Home</a></li>
       <li ><a href="<c:url value="/userProduct" /> ">User Products</a></li>
    <c:if test="${pageContext.request.userPrincipal.name !=null}">
      <li><a href="<c:url value="/admin/getAllProducts" /> ">All Products</a></li>      
      <li ><a href="<c:url value="/admin/addProduct" /> ">Add Product</a></li>
    </c:if> 
     <li><a href="<c:url value="/sendMailPage" /> ">Mail</a></li>   
<!--      
     <li style="margin-left: 100px">
       <input class="fa fa-search" aria-hidden="true" type="text" name="search" placeholder="Search.."> 
      </li> -->
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
	       <li><a href="<c:url value="/cart"></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span>Cart ${totalproducts}</a></li>
         <li><a href="<c:url value="/j_spring_security_logout"></c:url>"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
	   </c:if>
   </ul>
     
  </div>
</nav>

