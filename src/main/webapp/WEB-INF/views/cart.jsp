<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container"><h3>My Shopping Cart</h3></div>

<div class="container"> 
    <div class="row">    
        <div class="col-sm-12 col-md-10 col-md-offset-1">
        
        <div class="Absolute-Center is-Responsive"> 
             <c:if test="${hide}">
          <div style="height:100px;width:300px;color:grey;background-color:white;text-align:center;line-height:3;border: 1px double grey">
            <h2> <i class="fa fa-shopping-bag" aria-hidden="true"> Cart is Empty </i> </h2>
          <br><br>
             <a href="<c:url value="/userProduct" />">
             <button type="submit" class="btn btn-default">
             <span class="glyphicon glyphicon-shopping-cart"></span>
                Continue Shopping 
                   </button></a></div>
              </c:if>
            </div>
    
    <c:if test="${show}">
             
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product Image</th>
                        <th>Product Description</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${productInCart}" var="p">
                    <tr>
                        <td class="col-sm-6 col-md-4">
	                        <div class="media">
	                            <a href="<c:url value="/customer/productDescription/${p.productId}"/> "> <img  class="im" style='height: 20%; width: 40%; object-fit: contain' src="/eShop/resources/${p.image}"> </a>
	                            
	                        </div>
                        </td>
                        <td><div class="media-body">
	                                <h5 class="media-heading">${p.productName}</h5>
	                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span> <h5 class="media-heading"></h5>
                  
	                            </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                          <input type="email" class="form-control" id="exampleInputEmail1" value="${p.stock}">
                        </td>
                        <td class="col-sm-2 col-md-2 text-center"><strong>Rs.${p.price }</strong></td>
                        <td class="col-sm-2 col-md-2 text-center"><strong>Rs.${p.brand }</strong></td>
                        <td><a href="<c:url value="/deleteCartItem/${p.productId}" />">
                        <button type="submit" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove 
                        </button></a></td>
                    </tr>
                </c:forEach>
                          
                    <tr>
                        <td> Total items in the cart : <strong>${totalItem}</strong>  </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Sub-Total</h5></td>
                        <td class="text-right"><strong>Rs.${subtotal}</strong></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Estimated shipping</h5></td>
                        <td class="text-right"><strong>Rs.10.00</strong></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Grand Total</h5></td>
                        <td class="text-right"><strong>Rs.${grandtotal }</strong></td>
                    </tr>
         
                    <tr>
                    	<td> <a href="<c:url value="/deleteCart" />">
                    	     <button type="submit" class="btn btn-danger">
                             <span class="glyphicon glyphicon-remove"></span>
                             Clear All Items 
                             </button>
                        </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <a href="<c:url value="/userProduct" />">
                        <button type="submit" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span>
                             Continue Shopping 
                        </button></a></td>
                        
                        <td>
                        <div class="form-group">
                         <a href="<c:url value="/billingAddress" />">
                       <button type="submit" class="btn btn-primary">
                       Check Out
                        </button> </a></div></td>
                        
                    </tr>
                </tbody>
            </table>
            
           </c:if>
        </div>
    </div>
</div>
