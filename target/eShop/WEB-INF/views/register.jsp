<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">
  <h3>Signup with eKart</h3>
<form class="form-horizontal" style="width:300px" action="register" method="post" commandName="customer">
    <div class="control-group">
      <label class="control-label" for="name">Name</label>
      <div class="controls">
        <input type="text" path="name" id="name" placeholder="Name" class="form-control">
        <p class="help-block">Write down your name</p>
      </div>
    </div>
   <div class="control-group">
     <label>E-mail</label> <input type="email" path="email" class="form-control" placeholder="E-mail"/>
     <p class="help-block">Write down here your Email-id</p>
   </div>
    <div class="control-group">
      <label class="control-label" for="password">Password</label>
      <div class="controls">
        <input type="password" path="password" id="password" placeholder="Password" class="form-control">
        <p class="help-block">Password should be at least 6 characters</p>
      </div>
   </div>
<!--    <div class="control-group">
      <label class="control-label"  for="confirm-password">Password (Confirm)</label>
      <div class="controls">
        <input type="password" id="confirm-password" name="confirm-password" placeholder="Password (Confirm)" class="form-control">
        <p class="help-block">Please confirm password</p>
      </div>
    </div> -->
    <div class="control-group">
     <label>Mobile Number</label>
     <input type="tel" path="contactNumber" name="contactNumber" class="form-control" placeholder="Mobile Number (For order status updates)"/>
     <p class="help-block">Enter your 10-digit mobile number</p>
   </div>
   <div class="control-group">
      <label class="control-label"  for="Sex">Sex</label>
   <div class="radio">
     <label><input type="radio" path="sex" name="optradio">Male</label>
     <label><input type="radio" path="sex" name="optradio">Female</label>
   </div>
   </div>
   <div class="control-group">
      <button type="submit" class="btn btn-success">SIGNUP</button>
   </div>
   <div>
      <span class="container-fluid" ><h6>Already have an account?</h6><a href="<c:url value="/login" /> ">Login!</a></span>
   </div>
 </form>
</div>
