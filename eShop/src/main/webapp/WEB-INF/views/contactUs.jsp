<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

   <div style="text-align: center;">
      <img src="resources/images/contact-us.jpg" class="center"> 
   </div>

<div class="container">
<div class="row">
 <div class="col-md-8">
  <form name="sentMessage" id="contactForm" novalidate="novalidate">
   <div class="row">
   <div class="col-md-6">
   <div class="form-group">
     <label>Your Name</label><input type="text" name="name" class="form-control" placeholder="Enter your name"/>
   </div>
   <div class="form-group">
     <label>E-mail</label><input type="text" name="email" class="form-control" placeholder="Enter your e-mail"/>
   </div>
   <div class="form-group">
     <label>Mobile Number</label><input type="text" name="mobilenumber" class="form-control" placeholder="Mobile number"/>
   </div>
   
   <div class="col-md-12">
     <div class="form-group">
     <label>Enter your message</label>
       <textarea class="form-control" placeholder="Your Message *" id="message" data-validation-required-message="Please enter a message."></textarea>
       <p class="help-block text-danger"></p>
     </div>
   </div>
   
   <div class="clearfix">
     <div class="col-lg-6 text-center">
     <div id="success"><button type="submit" class="btn btn-xl get">Send Message</button></div>
     </div>
   </div>
</div>
</div>
</form>
</div>

<div class="col-md-4">
   <p style="color:hsl(0,0%,40%);"><strong><i class="fa fa-map-marker"></i> Address</strong><br>
     A-14/28B, DLF Phase 1, Gate no. 10, Above Fitline, Gurugram, Haryana, 122001
   </p>
   <p style="color:hsl(0,0%,40%);"><strong><i class="fa fa-phone"></i>Contact Number</strong><br>
     (+91)9711887025
   </p>
   <p style="color:hsl(0,0%,40%);">
   <strong><i class="fa fa-envelope"></i>Email Address</strong><br>
     info@ekart.com
   </p>
</div>
</div>
</div>
