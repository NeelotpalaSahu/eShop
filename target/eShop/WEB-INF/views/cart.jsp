<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">
<pre>
<b>Cart Id:</b> <span style="color: #181818">${p.id}</span>
<b>Quantity:</b> <span style="color: #181818">${p.quantity}</span>
<b>Total Price:</b> <span style="color: #181818">${p.totalPrice}</span>

<br>
<a href="<c:url value=""/> ">Payment Gateway</a>
</pre>

</div>