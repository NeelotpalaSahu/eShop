<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-wrapper">
    <div class="login-container">
        <div id="login-box">

             <h3>Login to eKart</h3>

            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>

            <form name="loginForm" style="width:400px" action="<c:url value="/j_spring_security_check" />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" class="form-control" placeholder="Username"/>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Password"/>
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
    </div>
</div>
