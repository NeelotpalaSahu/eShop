<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">
<br>

<c:forEach items="${allProd}" var="p">
<div class= "cards-row">
<div class="col-md-4">

<pre>
<b>Product Id:</b> <span style="color: #181818">${p.productId}</span>
<b>Product Name:</b> <span style="color: #181818">${p.productName}</span>
<b>Brand:</b> <span style="color: #181818">${p.brand}</span>
<b>Description:</b> <span style="color: #181818">${p.description}</span>
<b>Price:</b> <span style="color: #181818">${p.price}</span>
<b>Stock:</b> <span style="color: #181818">${p.stock}</span>
<a href="<c:url value="/productDetails/${p.productId}"/> ">Details</a>
</pre>

</div>
</div>
</c:forEach>

</div>