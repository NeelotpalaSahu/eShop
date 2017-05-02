<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
body {
    margin-top: 20px;
}
</style>

<div class="container">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
        <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Date: ${date}</em>
                    </p>
                    <p>
                        <em>Receipt Id: 34522677W</em>
                    </p>
                </div>
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                            <div class="col-md-4" >
					               
					               ${b.customerUsername},
					               ${b.streetAddress },${b.city}
					               ${b.state},${b.country}-${b.pincode}
					               
					          </div>
				     </address>
                </div>
              <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                             <div class="col-md-4" >						
						        ${sa.customerUsername},
					               ${sa.streetAddress },${sa.city}
					               ${sa.state},${sa.country}-${sa.pincode}
					              </div>
  						
                    </address>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h3>Receipt</h3>
                </div>
             </div>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Quantity</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                         <c:forEach items="${productInCart}" var="p">
                        <tr>
                            <td class="col-md-9"><em>${p.productName}</em></td>
                            <td class="col-md-1" style="text-align: center">${p.stock}</td>
                            <td class="col-md-1 text-center">Rs.${p.price }</td>
                            <td class="col-md-1 text-center">Rs.${p.brand }</td>
                        </tr>
                        </c:forEach>
                        <tr>
                            <td> Total items in the cart : <strong>${totalItem}</strong>  </td>
                            <td>   </td>
                            <td class="text-right">Sub-total: </td>
                            <td class="text-right"><strong>Rs.${subtotal}</strong></td>
                          </tr>
                         <tr>
                          <td> </td>
                          <td> </td>
                            <td class="text-right">Estimated shipping: </td>
                            <td class="text-right"><strong>Rs.10.00</strong></td>
                          </tr>
                        <tr>
                            <td> <h4>Thank you for shopping on eShop</h4> 
                                 <h5>Your order has been confirmed. We will get back to you soon.</h5> </td>
                            <td>   </td>
                            <td class="text-right">Grand Total: </td>
                            <td class="text-right text-danger"><strong>Rs.${grandtotal }</strong></td>
                        </tr>
                    </tbody>
                </table>
               
  <div class="control-group"> 
     <a href="<c:url value="/" />">
      <button type="submit" class="btn btn-default"> Print Your Receipt </button></a>
   </div>
                </div>
            </div>
        </div>
        
<br><br>
