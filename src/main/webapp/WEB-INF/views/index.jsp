<%@include file="/WEB-INF/views/template/header.jsp" %>

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

<c:if test="${allProduct}">
	<jsp:include page="allProduct.jsp"></jsp:include>
</c:if>

<c:if test="${userProduct}">
	<jsp:include page="userProduct.jsp"></jsp:include>
</c:if>

<c:if test="${addProduct}">
	<jsp:include page="addProduct.jsp"></jsp:include>
</c:if>

<c:if test="${editProduct}">
	<jsp:include page="editProduct.jsp"></jsp:include>
</c:if>

<c:if test="${productDetails}">
	<jsp:include page="productDetails.jsp"></jsp:include>
</c:if>

<c:if test="${myCart}">
	<jsp:include page="cart.jsp"></jsp:include>
</c:if>

<%@include file="/WEB-INF/views/template/footer.jsp" %>