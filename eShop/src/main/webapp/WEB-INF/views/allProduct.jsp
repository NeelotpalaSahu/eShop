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
<img class="team-pic" src="resources/images/original.png">
<br>
		<a href="<c:url value="/editProduct/${p.productId}"/> ">Edit</a>		 <a href="<c:url value="/delete/${p.productId}" /> ">Delete</a>
</pre>

   <%-- <form:form class="form-center" style="width:300px" action="${pageContext.request.contextPath}/addProduct" method="post" commandName="product">
      <button type="submit" class="btn btn-default"><a href="<c:url value="/addProduct" /> ">Add</a></button>
   </form:form>
   <form:form class="form-center" style="width:300px" action="${pageContext.request.contextPath}/editProduct" method="post" commandName="product">
      <button type="submit" class="btn btn-default"><a href="<c:url value="/editProduct/${p.productId}" /> ">Edit</a></button>
   </form:form>
    --%>

</div>
</div>   
</c:forEach>			
 </div>
