<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    if ((session.getAttribute("tpodetails") == null) || (session.getAttribute("tpodetails") == "")) {
%>
 <c:redirect url="./"></c:redirect>
<%}else{%>
<%@include file="include/header2.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<spring:url value='/css/showapplied.css'/>" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

 
</head>
<br><br><br><br><br>
<div class="container1">
			<div class="row">
				<div class="col-sm-12">
					 <p class="head1"><center><header><h3>Applied Students</h3></header></center><a id="back1"
				href='<spring:url value="/tpodashboard"/>'> Back</a>
     </p><br><hr>
					
				</div>
			</div>
		
<div class="container">
			<div class="heading_container heading_center">
			
				
					
					<form action='<spring:url value="/searchCat"/>' method="post">
					<div class="row">
					<div class="col col-4">
					<select class="form-control" name="category" type="text">
					<c:forEach var="t" items="${sessionScope.tpodriveList}">
					<option value="${t.id}"> ${t.cname}</option>
					</c:forEach>
					</select>
					</div>
					<div class="col col-4">
					<button class="btn btn-danger">Filter</button>
					</div>
					</form>
					</div>
			</div><br>
		
			<div class="box-outer1" >
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-4">
								<table cellpadding="0" cellspacing="0" width="640" align="center"> 
								
								<thead>
        <tr>
            <th>No</th>
            <th>EmailId</th>
            <th></th>
            <th>Name</th>
            <th>Company Name</th>
            <th>Selection</th>
            
        </tr>
        
    </thead>
                  
								<c:forEach var="a" items="${sessionScope.appliedstudentList}" varStatus="counter">
								
					<table cellpadding="0" cellspacing="0" width="680" align="center"> 			
						
 <tbody>
 
        <tr>
        <form action='<spring:url value="/save_selected?cid=${a.cid.id}&email=${a.email}&name=${a.name}"/>' method="post">
            <tr><td> ${counter.count}</td>     
            <td>${a.email}</td>
            <td>${a.name}</td>
            <td>${a.cid.cname}</td>
            <td><button id="button" class="btn btn-danger">Select</button></td>
        </tr>
        </form>
        </tbody>
        </table>
         </c:forEach>
  
  </table>
  
        	</div>
        	</div>
			</div>
			 
			</div>
		  
			</div>
			</div>
			
  </section>
  
  
  
  
  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}


function myFunc(e){
 e.innerHTML="<p style='color:#fff'>Applied</p>";
  
}



var dropdown = document.getElementsByClassName("sub1");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });
}
 </script>

</body>
</html>




<%}%>