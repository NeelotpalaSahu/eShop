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

<c:if test="${productDescription}">
	<jsp:include page="productDescription.jsp"></jsp:include>
</c:if>

<c:if test="${cart}">
	<jsp:include page="cart.jsp"></jsp:include>
</c:if>

<c:if test="${billingAddresspages}">
	<jsp:include page="billingAddress.jsp"></jsp:include>
</c:if>

<c:if test="${addNewBillingAddress}">
	<jsp:include page="addNewBillingAddress.jsp"></jsp:include>
</c:if>

<c:if test="${shippingAddressPage}">
	<jsp:include page="shippingAddress.jsp"></jsp:include>
</c:if>

<c:if test="${addNewShippingAddress}">
	<jsp:include page="addNewShippingAddress.jsp"></jsp:include>
</c:if>

<c:if test="${payment}">
	<jsp:include page="paymentDetails.jsp"></jsp:include>
</c:if>

<c:if test="${mail}">
	<jsp:include page="promote.jsp"></jsp:include>
</c:if>

<c:if test="${pagination}">
	<jsp:include page="pagination.jsp"></jsp:include>
</c:if>

<c:if test="${receipt}">
	<jsp:include page="receipt.jsp"></jsp:include>
</c:if>

<%@include file="/WEB-INF/views/template/footer.jsp" %>