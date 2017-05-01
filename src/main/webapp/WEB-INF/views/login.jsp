<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 
<div class="container">
 <div class="Absolute-Center is-Responsive" id="login-box" style="background-color:#2E4053; color:#ffffff">
    <div class="login-container">  
    
 
             <h3>Login to eShop</h3>

            <c:if test="${not empty msg}">
                <div class="msg" style="color:white">${msg}</div>
            </c:if>

            <form name="loginForm" style="width:400px" action="<c:url value="/j_spring_security_check" />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <div class="form-group">
                    <label for="username" class="control-label">Username</label>
                    <input type="text"style="width:80%; background-color:white" id="username" name="username" class="form-control" placeholder="Username"/>
                </div>
                <div class="form-group">
                    <label for="password" class="control-label">Password</label>
                    <input type="password" style="width:80%; background-color:white" id="password" name="password" class="form-control" placeholder="Password"/>
                </div>
<br>
               <div class="form-group">
                <button type="submit" class="btn btn-primary">LOGIN</button>
                <label><input type="checkbox"> Remember me</label>
               </div>
               <div class="container-fluid">
                <span class="psw"><a href="<c:url value="/login" /> ">Forgot password?</a></span>
               </div>
               
            </form>

        </div>
    </div>
</div>
