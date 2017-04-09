<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">
       <div class="row">
                    
                    <div class="post-img-content">
                       <img src="http://placehold.it/350x260" class="img-responsive"  />
                     </div>
                 
                 <div class="price col-md-6">
                     <h2>Product Details</h2>
                      <h5 class="price-text-color">
                         <pre>
                            <b>Product Id:</b> <span style="color: #181818">${p.productId}</span>
                            <b>Product Name:</b> <span style="color: #181818">${p.productName}</span>
                            <b>Brand:</b> <span style="color: #181818">${p.brand}</span>
                            <b>Description:</b> <span style="color: #181818">${p.description}</span>
                            <b>Price:</b> <span style="color: #181818">${p.price}</span>
                            <b>Stock:</b> <span style="color: #181818">${p.stock}</span>
                          </pre>
                        </h5>
                        
                 <div class="separator clear-right">
                   <p class="btn-add"><i class="fa fa-shopping-cart"></i><a href="<c:url value="/addToCart/${p.productId}" />" class="hidden-sm">Add to cart</a></p>
                 </div>
                 
            </div>
      </div>
</div>
        