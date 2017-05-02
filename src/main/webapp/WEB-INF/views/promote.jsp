<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-wrapper">
    <div class="login-container">
           
         <form name="form-center" style="width:400px" action="${pageContext.request.contextPath}/sendMail" method="post">
                <div class="msg">${status}</div>
 
                <div class="form-group" style="width:400px">
                    <label for="mailId">Mail Id</label>
                    <input type="email" id="mailId" name="mailId" class="form-control" placeholder="Recipient's e-mail id"/>
               
     <select id="productName" name="productName"> 
      <c:forEach items="${allProd}" var="p">
         <option value="${p.productName}">${p.productName}</option>
      </c:forEach> 
     </select>
   </div>
                  
                  <button type="submit" class="btn btn-primary">Send e-mail</button>
            </form>
        </div>
    </div>

<!-- 
s95suraj@gmail.com -->