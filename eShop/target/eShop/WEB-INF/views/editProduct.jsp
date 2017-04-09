<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <div class="container-fluid">
 <form:form class="form-center" style="width:300px" action="${pageContext.request.contextPath}/editProduct" method="post" commandName="product">
   
        <div class="form-group">
            <label for="productName">Product Name</label><form:errors path="productName" cssStyle="color: #ff0000"/>
            <form:input path="productName" id="productName"  class="form-Control" placeholder="productName"/>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <form:input path="description" id="description" class="form-Control" placeholder="description"/>
        </div>

		 <div class="form-group">
            <label for="brand">Brand</label>
            <form:input path="brand" id="brand" class="form-Control" placeholder="brand"/>
        </div>
        
         <div class="form-group">
            <label for="price">Price</label>
            <form:input path="price" id="price" class="form-Control" placeholder="price"/>
        </div>
        
         <div class="form-group">
            <label for="stock">Stock</label>
            <form:input path="stock" id="stock" class="form-Control" placeholder="stock"/>
        </div>
        
        <br><br>
        <div class="control-group">
          <button type="submit" class="btn btn-success">Update</button>
        </div>
 
 </form:form>
</div> --%>




<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Update Product</h1>
        </div>

        <form:form style="width:400px" action="${pageContext.request.contextPath}/updateProduct" method="post" modelAttribute="product">
           <form:hidden path="productId"/>
		
        <div class="form-group">
            <label for="productName">Product Name</label><form:errors path="productName" cssStyle="color: #ff0000"/>
            <form:input path="productName" id="productname"  class="form-Control"/>
        </div>
        
        <div class="form-group">
            <label for="description">Product Description</label><form:errors path="description" cssStyle="color: #ff0000"/>
            <form:input path="description" id="description"  class="form-Control"/>
        </div>

       <div class="form-group">
            <label for="price">Price</label>
            <form:input path="price" id="price"  class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="brand">Brand</label>
            <form:input path="brand" id="brand"  class="form-Control"/>
        </div>

		<div class="form-group">
            <label for="stock">Stock</label>
            <form:input path="stock" id="stock"  class="form-Control"/>
        </div>
		
        <br><br>
        <input type="submit" value="Update" class="btn btn-default">
        </form:form>
        </div>
       </div>
       