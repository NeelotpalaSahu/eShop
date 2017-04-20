<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">
        <div class="page-header">
            <h3>Add Product</h3>          
        </div>

        
<%--         <form:form class="form-center" style="width:300px" action="${pageContext.request.contextPath}/addProduct" method="post" commandName="product">

   <div class="form-group">
      <label for="productName">Product Name</label>
      <input type="text" path="productName" id="productName"   class="form-control"/>
   </div>
   <div class="form-group">
      <label for="description">Description</label>
      <input type="text" path="description" id="description"   class="form-control"/>
   </div>
   
   <div class="form-group">
      <label for="brand">Brand</label>
      <input type="text" path="brand" id="brand"   class="form-control"/>
   </div>
   
   <div class="form-group">
      <label for="price">Price</label>
      <input type="text"  path="price" id="price"   class="form-control"/>
   </div>
   <div class="form-group">
      <label for="stock">Stock</label>
      <input type="text" path="stock" id="stock"   class="form-control"/>
   </div>
                <button type="submit" class="btn btn-default">Submit</button>
                </form:form>
             --%>    
                
                
 <form:form class="form-center" style="width:300px" action="${pageContext.request.contextPath}/admin/addProduct" id="fileupload" method="post" commandName="product" enctype="multipart/form-data">

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
        
        <div class="fileupload fileupload-new" data-provides="fileupload">
    <span class="btn btn-default btn-file"><span class="fileupload-new">Select file</span>
    <span class="fileupload-exists">Change</span> <input type="file" class="file" name="file"/></span>
    <span class="fileupload-preview"></span>
    <a href="<c:url value="/productDetails" />" class="close fileupload-exists" data-dismiss="fileupload" style="float: none">×</a>
    
  </div>
        <br>${error }<br>
        <div class="control-group">
          <button type="submit" class="btn btn-success">Add</button>
        </div>
        

      </form:form>
                
</div>