<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
  <h3>Login to eKart</h3>
<form style="width:400px" action="login.jsp" method="post">
   <div class="form-group">
     <label><b>Username</b></label> <input type="text" name="name" class="form-control" placeholder="Username"/>
   </div>
   <div class="form-group">
     <label><b>Password</b></label> <input type="password" name="password" class="form-control" placeholder="Password"/>
   </div>
   <div class="form-group">
     <button type="submit" class="btn btn-primary">LOGIN</button>
       <label><input type="checkbox"> Remember me</label>
   </div>
   <div class="container-fluid">
       <span class="psw"><a href="<c:url value="/login" /> ">Forgot password?</a></span>
   </div>
</form>
</div>
