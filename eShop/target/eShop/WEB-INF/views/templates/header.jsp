<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Online Shopping at eKart</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://use.fontawesome.com/13e76be964.js"></script>
  <link rel="stylesheet" type="text/css" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">

<style>


html {
  height: 100%;
  box-sizing: border-box;
}

body {
  position: relative;
  margin: 0;
  padding-bottom: 8rem;
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
    </ul>
    
     <ul class="nav navbar-nav navbar-right">
      <li><a href="<c:url value="/register" /> "><span class="glyphicon glyphicon-user"></span>Register</a></li>
      <li><a href="<c:url value="/login" /> "><span class="glyphicon glyphicon-log-in"></span>Log in</a></li>
    </ul>
     
  </div>
</nav>

