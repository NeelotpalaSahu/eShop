<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<div class="row">
        <div class="span8">
    		
    	<form:form class="form-center" style="width:300px" action="${pageContext.request.contextPath}/addNewBillingAddress" method="post" commandName="billingAddress">	
    			
    			<div class="form-group">
    				<label for="streetAddress" class="control-label">	Street Address </label>
    		       <form:input path="streetAddress" id="streetAddress" class="form-Control" placeholder="Street Name and/or apartment number" />
    			</div>
     
    			<div class="form-group">
    				<label for="city" class="control-label"> City </label>
    				<form:input path="city" id="city" class="form-Control" placeholder="City" />
    			</div>
    			
    			<div class="form-group">
    				<label for="state" class="control-label">	State </label>
    		     <form:input path="state" id="state" class="form-Control" placeholder="State" />
    			</div>
    			
    			<div class="form-group">
    				<label for="country" class="control-label">	Country </label>
    		     <form:input path="country" id="country" class="form-Control" placeholder="Country" />
    			</div>
    			
    			<div class="form-group">
    				<label for="pin" class="control-label">	Pincode </label>
    		     <form:input path="pincode" id="pin" class="form-Control" placeholder="Pincode"/>
    			</div>
    			
    			<div class="control-group">
          <button type="submit" class="btn btn-success">Add</button>
        </div>
    	   </form:form>
      </div>
    </div>
 </div>
