<%@include file="/WEB-INF/views/templates/header.jsp" %>

<c:if test="${getHome}">
	<jsp:include page="home.jsp"></jsp:include>
</c:if>

<c:if test="${getLogin}">
	<jsp:include page="login.jsp"></jsp:include>
</c:if>

<c:if test="${getAboutUs}">
	<jsp:include page="aboutUs.jsp"></jsp:include>
</c:if>

<c:if test="${getContactUs}">
	<jsp:include page="contactUs.jsp"></jsp:include>
</c:if>

<c:if test="${getRegister}">
	<jsp:include page="register.jsp"></jsp:include>
</c:if>

<c:if test="${msg}">
	<jsp:include page="register.jsp"></jsp:include>
</c:if>

<%@include file="/WEB-INF/views/templates/footer.jsp" %>