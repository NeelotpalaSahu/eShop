<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
img {
    max-width: 100%;
    max-height: 100%;
}
</style>

<div class="container">
	 <div class="row">
		<!-- Carousel -->
    	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
			  	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
			
			    <div class="item active">
			    	<img src="resources/images/home1.jpg" alt="First slide">
			    </div>
			    
			    <div class="item">
			    	<img src="resources/images/home2.jpg" alt="Second slide">        
			    </div>
			    
			    <div class="item">
			    	<img src="resources/images/home3.jpg" alt="Third slide">
			    </div>
			    
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		    	<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		    	<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
		<!-- /carousel -->
	</div>
</div>

<br><br>

<div class="container-fluid cards-row">
<div class="container">
<div class="row" >

<a href="<c:url value="/userProduct/All About You" /> ">
  <div class="col-sm-4 col-md-4">						
    <div class="panel-heading">
       <img class="team-pic" src="resources/images/ALL ABOUT YOU.png">
      </div>
  </div>
  </a>
  
  <a href="<c:url value="/userProduct/AND" /> ">
   <div class="col-sm-4 col-md-4">						
    <div class="panel-heading">
       <img class="team-pic" src="resources/images/AND.jpg">
      </div>
  </div>
  </a>
  
  <a href="<c:url value="/userProduct/H&M" /> ">
    <div class="col-sm-4 col-md-4">						
    <div class="panel-heading">
       <img class="team-pic" src="resources/images/H&M.png">
      </div>
  </div>
  </a>
  
  <a href="<c:url value="/userProduct/Mango" /> ">
   <div class="col-sm-4 col-md-4">						
    <div class="panel-heading">
       <img class="team-pic" src="resources/images/MANGO.png">
      </div>
  </div>
  </a>
  
  <a href="<c:url value="/userProduct/Vero Moda" /> ">
   <div class="col-sm-4 col-md-4">						
    <div class="panel-heading">
       <img class="team-pic" src="resources/images/VERO MODA.jpg">
      </div>
  </div>
  </a>
  
  <a href="<c:url value="/userProduct/W" /> ">
   <div class="col-sm-4 col-md-4">						
    <div class="panel-heading">
       <img class="team-pic" src="resources/images/W.png">
      </div>
  </div>
  </a>
  
</div>

</div>
</div>
<br><br>
