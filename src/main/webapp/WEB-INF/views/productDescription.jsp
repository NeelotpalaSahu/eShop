<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<div class="row">
            
		          <div class="col-sm-6 col-md-4">
					 <div class="panel-heading" style="background-color:transparent;">
										<img class="im" style='height: 50%; width: 100%; object-fit: contain' src="/eShop/resources/${p.image}">
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
                   
                    
                          
                    <div class="section" style="padding-bottom:20px;">
                       <a class="btn btn-primary" onclick="msg()" href="<c:url value="/addToCart/${p.productId}"/> ">
								  <span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true">  Add to Cart  </span></a> 
                    </div>                                        
                                        
	</div>
</div>