<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h4>Billing address page</h4>

<div class="container">
	<div class="row">

  <c:forEach items="${billingAddressList}" var="b">
    <div class="col-md-4" >

            <h5 class="media-heading"> BillingId : ${b.billingId} </h5>
            <h5 class="media-heading">CustomerId : ${b.customerId } </h5>
            <h5 class="media-heading">StreetAddress : ${b.streetAddress } </h5>
            <h5 class="media-heading">City : ${b.city} </h5>
            <h5 class="media-heading">State : ${b.state} </h5>
            <h5 class="media-heading">Country : ${b.country} </h5>
            <h5 class="media-heading">Pincode : ${b.pincode} </h5>
            <h5 class="media-heading">CustomerUsername : ${b.customerUsername} </h5>
    </div>
 </c:forEach>
 </div></div>

<div class="control-group">
   <a href="<c:url value="/addNewBillingAddress" />">
      <button type="submit" class="btn btn-primary">Add New Billing Address </button></a>
      
   <a href="<c:url value="/shippingAddress" />"> 
          <button type="submit" class="btn btn-primary"> Proceed for Shipping Address </button> </a> 
   </div>
