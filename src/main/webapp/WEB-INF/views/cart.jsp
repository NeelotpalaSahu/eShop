<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="top">Total items in the cart <strong>${totalItem}</strong></div>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${productInCart}" var="p">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h5 class="media-heading">${p.productName}</h5>
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="email" class="form-control" id="exampleInputEmail1" value="${p.stock}">
                        </td>
                        <td class="col-sm-2 col-md-2 text-center"><strong>Rs.${p.price }</strong></td>
                        <td class="col-sm-2 col-md-2 text-center"><strong>Rs.${p.brand }</strong></td>
                        <td class="col-sm-2 col-md-2">
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span>
                            <a href="<c:url value="/deleteCartItem/${p.productId}" />">Remove</a> 
                        </button></td>
                    </tr>
                </c:forEach>
                
    <c:if test="${show }">
                    <tr>
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
                        <td><h5>Estimated shipping</h5></td>
                        <td class="text-right"><strong>Rs.10.00</strong></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Grand Total</h5></td>
                        <td class="text-right"><strong>Rs.${grandtotal }</strong></td>
                    </tr>
          </c:if>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span>
                            <a href="<c:url value="/userProduct" />"> Continue Shopping </a>
                        </button></td>
                        <td>
                        <button type="button" class="btn btn-success">
                             <span class="glyphicon glyphicon-play"></span>
                            <a href="<c:url value="/cart/paymentDetails" />"> Checkout </a>
                        </button></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%-- 
 <style>
.top
{
height:50px;
width:100%;
background-color:blue;
color:yellow;
font-size:30px;
}
</style>
<div style="width:100%;height:75px;"></div>
<div class="top"><strong>${totalItem} ${msg}</strong></div>
<br>
<c:forEach items="${productInCart}" var="p">
<pre>
Product Id      :  ${p.productId }
Product Name    :  ${p.productName }
Product Qty     :  ${p.stock }
Product Price   :  ${p.price }
Total           :  ${p.brand }

<a href="<c:url value="/deleteCartItem/${p.productId}" />">Remove</a> 


</pre>

</c:forEach>
<c:if test="${show }">
<pre>
Sub Total       :    ${subtotal}
Tax             :    20
Grand Total     :	${grandtotal }

<a href="<c:url value="/info" />">Check Out</a> 

</pre>


</c:if> --%>