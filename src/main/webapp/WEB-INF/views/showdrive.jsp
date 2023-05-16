<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    if ((session.getAttribute("userdetails") == null) || (session.getAttribute("userdetails") == "")) {
%>
 <c:redirect url="./"></c:redirect>
<%}else{%>







<%@include file="include/header.jsp"%>
    
   <body>
 
     <p class="head1"><center><h3>Placement Drives</h3> </center><a id="back1"
				href='<spring:url value="/home_page"/>'> Back</a>
     </p>
     <hr>
   
      <div class="row">
      
      <c:forEach var="t" items="${sessionScope.pendinglist}"> 
  <div class="column">
  
    <div class="card">
   
      <p  id="left0"><i>Company Name : ${t.cname}</i></p>
      <p class="left1"><i>Package : ${t.package1}</i></p>
      
      <hr>
      <p class="left3"  ><b>Location : </b>${t.location}</p>
      <p class="left5" ><i><b>Drive Date : </b>${t.date}</i></p>
      
      <p class="left2"><b>Designation : </b> ${t.jobdesignation}</p>
     
      <p id="left4"><b>Apply Link :</b> <a  href="${t.link}">${t.link }</a></p><br><br>
       
        <div style="margin-top:-5px;"><a href="#" id="view">View</a>
       <a href='<spring:url value="/AppliedStudent?cid=${t.id}"/>'id="apply2">Apply</a></div>
     </div>
      
  </div>
  </div>
 </c:forEach>
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


 </script>
 
 	<script>
        function disableBtn(){
           document.getelementById("apply").disabled=true;
        }
</script>


<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('#dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
<script>
 function myFunction44() {
 var x = document.getElementById("dropdown-container1");
 if (x.style.display === "none") {
   x.style.display = "block";
 } else {
   x.style.display = "none";
 }
 var y = document.getElementById("dropdown-container2");
 if (y.style.display === "none") {
   y.style.display = "block";
 } else {
   y.style.display = "none";
 }

}
 </script>
</body>
</html>

</body>
</html>
<%}%>
         