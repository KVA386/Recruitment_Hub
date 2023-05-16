




<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    if ((session.getAttribute("tpodetails") == null) || (session.getAttribute("tpodetails") == "")) {
%>
 <c:redirect url="./"></c:redirect>
<%}else{%>
<%@include file="include/header2.jsp"%>
<body>
		 <c:forEach var="t" items="${sessionScope.tpodriveList}"> 
      <div class="row">
  <div class="column">
    <div class="card">
    <h3>Drive</h3><br><br>
      
      <p>Company Name:${t.cname}</p>
      <p>Package:${t.package1}</p>
       <p>Job Location:${t.location}</p>
        <p>Apply Link:<a>${t.link}</a></p>
       <p>Eligibility Criteria:${t.criteria}</p>
        <p>Selection Process:${t.process}</p>
          <p>Job Description:${t.jD}</p>
          <br><br>  
    </div>
  </div>
   
  <br>
  <br>
  </div>
 </c:forEach>
  

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