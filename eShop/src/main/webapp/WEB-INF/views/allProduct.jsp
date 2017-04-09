<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <div class="container">
    	<div class="row">
  <c:forEach items="${allProd}" var="p">
            <div class="col-md-4">
						<div class="panel panel-info">
								<div class="panel-heading">
										<img style='height: 50%; width: 100%; object-fit: contain' src="F:/new workspace/eShop/src/main/webapp/WEB-INF/resources/${p.image}">
								</div>
								<div class="panel-body text-center">
										<p class="lead" style="font-size:20px">Product Id  <strong>${p.productId}</strong></p>
								</div>
								<ul class="list-group list-group-flush text-center">
										<h6 class="media-heading">Product name : ${p.productName}</h6>
										<h5 class="media-heading">Brand name : ${p.brand}</h5>
										<h5 class="media-heading">Price : Rs. ${p.price}</h5>
										<h5 class="media-heading">Stock : ${p.stock}</h5>
								</ul>
								<div class="panel-footer">
								   <a class="btn btn-primary" href="<c:url value="/editProduct/${p.productId}"/> ">Edit</a>
								   <a class="btn btn-primary" href="<c:url value="/delete/${p.productId}" /> ">Delete</a>
								 </div>
						</div>
				</div>
	</c:forEach>
</div>
</div>