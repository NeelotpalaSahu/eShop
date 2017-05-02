<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h4>Shipping address page</h4>

<div class="container">
	<div class="row">

  <c:forEach items="${shippingAddressList}" var="sa">
     <div class="col-md-4" >

        <h5 class="media-heading"> ShippingId : ${sa.shippingId} </h5>
        <h5 class="media-heading"> CustomerId : ${sa.customerId } </h5>
        <h5 class="media-heading"> StreetAddress : ${sa.streetAddress } </h5>
        <h5 class="media-heading"> City : ${sa.city} </h5>
        <h5 class="media-heading"> State : ${sa.state} </h5>
        <h5 class="media-heading"> Country : ${sa.country} </h5>
        <h5 class="media-heading"> Pincode : ${sa.pincode} </h5>
        <h5 class="media-heading"> CustomerUsername : ${sa.customerUsername} </h5>
     </div>
 </c:forEach>
 </div></div>
 
 <div class="control-group">
   <a href="<c:url value="/addNewShippingAddress" />">
     <button type="submit" class="btn btn-primary"> Add New Shipping Address </button></a>

    <a href="<c:url value="/userProduct" />">
      <button type="submit" class="btn btn-primary"> Add more products </button></a>
                
              <a href="<c:url value="/paymentDetails" />">
              <button type="submit" class="btn btn-primary"> Make payment </button></a>
          </div>