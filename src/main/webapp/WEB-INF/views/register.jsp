<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">
        <div class="page-header">
            <h3>Signup with eShop</h3>          
        </div>

        <form:form class="form-center" style="width:300px" action="${pageContext.request.contextPath}/register" method="post" commandName="customer">

        <div class="form-group">
            <label for="name">Name</label><form:errors path="customerName" cssStyle="color: #ff0000"/>
            <form:input path="customerName" id="name" class="form-Control" placeholder="Name"/>
			<p class="help-block">Write down your name</p>
        </div>
        
        <div class="form-group">
            <label for="username">Username</label><span style="color: #ff0000">${usernameMsg}</span><form:errors
                path="username" cssStyle="color: #ff0000"/>
            <form:input path="Username" id="username" class="form-Control" placeholder="Username"/>
        </div>

        <div class="form-group">
            <label for="email">Email</label><span style="color: #ff0000">${emailMsg}</span><form:errors
                path="customerEmail" cssStyle="color: #ff0000"/>
            <form:input path="customerEmail" id="email" class="form-Control" placeholder="E-mail"/>
			<p class="help-block">Write down here your Email-id</p>
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="customerPhone" id="phone" class="form-Control" placeholder="Mobile Number (For order status updates)"/>
			<p class="help-block">Enter your 10-digit mobile number</p>
        </div>

        <div class="form-group">
            <label for="password">Password</label><form:errors path="password" cssStyle="color: #ff0000"/>
            <form:password path="password" id="password" class="form-Control" placeholder="Password"/>
			<p class="help-block">Password should be at least 6 characters</p>
        </div>
        
        <br><br>
        <div class="control-group">
          <button type="submit" class="btn btn-success">SIGNUP</button>
        </div>
        <div class="container-fluid"><h6>Already have an account?</h6><a href="<c:url value="/login" />">Login!</a></div>

      </form:form>
</div>
