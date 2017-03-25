<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
			    	<img src="resources/images/5.jpg" alt="First slide">
			    </div>
			    
			    <div class="item">
			    	<img src="resources/images/6.jpg" alt="Second slide">        
			    </div>
			    
			    <div class="item">
			    	<img src="resources/images/7.jpg" alt="Third slide">
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
<div class="row">

  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
       <img class="team-pic" src="resources/images/10.jpg">
      <div class="caption">
       <center> <h4><a href="<c:url value="/" /> ">Western Wear</a></h4> </center>
      </div>
    </div>
  </div>
  
    <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
        <img class="team-pic" src="resources/images/13.jpg">
      <div class="caption">
        <center> <h4><a href="<c:url value="/" /> ">Ethnic Wear</a></h4> </center>
      </div>
    </div>
  </div>
  
    <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
       <img class="team-pic" src="resources/images/12.jpg">
      <div class="caption">
        <center> <h4><a href="<c:url value="/" /> ">Fashion</a></h4> </center>
      </div>
    </div>
  </div>
  
</div>

</div>
</div>
<br><br>
