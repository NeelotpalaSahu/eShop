<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">

<input type="text" id="myInput" onkeyup="myFunction()"  placeholder="Search products by name and brand" title="Type in a name">

  <button onclick="sortByBrand()">Sort By Brand</button>
  
    	<div class="row" id="mySearch">
  <c:forEach items="${allProd}" var="p">
            <div class="col-md-4 second" >
						<div class="panel panel-info" id="third">
								<div class="panel-heading">
										<img style='height: 50%; width: 100%; object-fit: contain' src="F:/new workspace/eShop/src/main/webapp/WEB-INF/resources/${p.image}">
								</div>
								<br>
								<ul class="list-group list-group-flush text-center" id="fourth">
								        <h5 class="media-heading">Brand: <a href="#">${p.brand}</a></h5>
										<h6 class="media-heading">Product name : ${p.productName}</h6>
										<h5 class="media-heading">Price : Rs.${p.price}</h5>
								</ul>
								<div class="panel-footer">
								 <a class="btn btn-primary" href="<c:url value="/customer/productDescription/${p.productId}"/> ">Description</a>
								 <a class="btn btn-primary" onclick="msg()" href="<c:url value="/addToCart/${p.productId}"/> ">Buy Now</a>
								 </div>
						</div>
				</div>
	</c:forEach>
</div>
</div>


<div class="pagination">
  <a href="#">1</a>
  <a href="#">2</a>
  <a href="#">3</a>
  <a href="#">4</a>
  <a href="#">5</a>
</div>
