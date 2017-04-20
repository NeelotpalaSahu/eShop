<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<img src="/resources/images/6.jpg" alt="Second slide">
<div class="container">
	<div class="row">
            
		          <div class="col-sm-6 col-md-4">
					  <div class="thumbnail">
					    <img class="team-pic" src="resources/images/10.jpg">
					   </div>
					</div>
			     
			     <div class="col-xs-5" style="border:0px solid gray">
                   
                    <ul class="list-group list-group-flush">		
                    <h3>${p.productName}</h3>
                    <h5 class="media-heading"><small>Description </small><a href="#">${p.description}</a></h5>
                    <h5 class="media-heading"><small>Brand </small><a href="#">${p.brand}</a></h5>                  
                    <h5 class="media-heading"><small>Product Id </small><a href="#">${p.productId}</a></h5>                  
                    <h5 class="media-heading"><small>Price </small><a href="#">${p.price} INR</a></h5>
                    <h5 class="media-heading"><small>In Stock </small><a href="#">${p.stock}</a></h5>
                   </ul>
                   
                    <div class="section">
                        <h6 class="title-attr" style="margin-top:15px;" ><small>COLOR</small></h6>                    
                        <div>
                            <div class="attr" style="width:25px;background:#5a5a5a;"></div>
                            <div class="attr" style="width:25px;background:white;"></div>
                        </div>
                    </div>
                    <div class="section" style="padding-bottom:5px;">
                        <h6 class="title-attr"><small>Size</small></h6>                    
                        <div>
                            <span class="attr2">S</span>
                            <span class="attr2">M</span>
                            <span class="attr2">L</span>
                        </div>
                    </div>   
                   
                    <div class="section" style="padding-bottom:20px;">
                        <h6 class="title-attr"><small>Quantity</small></h6>                    
                        <div>
                            <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                            <input value="1" />
                            <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                        </div>
                    </div>                
           
                    <div class="section" style="padding-bottom:20px;">
                        <a class="btn btn-success" href="<c:url value="/cart/addToCart/{p.id}"/>" >
                        <span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true">  Add to Cart  </span></a> 
                    </div>                                        
          </div>                              
	</div>
</div>