<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}


.pagination a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color .3s;
}

.pagination a.active {
    background-color: #4CAF50;
    color: white;
}

.pagination a:hover:not(.active) {background-color: #ddd;}

</style>

<script>
function myFunction() {
  var input, filter, i,div,second,str,str1;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  
  div=document.getElementById("mySearch");
  
  second=div.getElementsByClassName("second");
  
  for (i = 0; i < second.length; i++) {
    h5 = second[i].children[0];
    str=h5.children[2].children[1];
    str1=h5.children[2].children[0];
    if (str || str1) {
      if (str.innerHTML.toUpperCase().indexOf(filter) > -1 ||
    		  str1.innerHTML.toUpperCase().indexOf(filter) > -1) {
        second[i].style.display = "";
      } else {
        second[i].style.display = "none";
      }
    }       
  }
}


function sortByBrand() {
	  var div,rows, switching, i, x, y, shouldSwitch;
	  input = document.getElementById("myInput");
	  switching = true;
	 
	  while (switching) {	    
	    switching = false;
	    div = input.getElementsByTagName("div");
	    
	    for (i = 1; i < (input.length - 1); i++) {
	      
	      shouldSwitch = false;
	      
	      x = rows[i].getElementsByTagName("TD")[0];
	      y = rows[i + 1].getElementsByTagName("TD")[0];
	      
	      if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {	        
	        shouldSwitch= true;
	        break;
	      }
	    }
	    if (shouldSwitch) {
	       rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
	      switching = true;
	    }
	  }
	}
</script>

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
										<h5 class="media-heading">Price : Rs. ${p.price}</h5>
								</ul>
								<div class="panel-footer">
								 <a class="btn btn-primary" href="<c:url value="/customer/pd/${p.productId}"/> ">Description</a>
								 <a class="btn btn-primary" href="<c:url value="/customer/buyProduct/${p.productId}"/> ">Buy Now</a>
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
