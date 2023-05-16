<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    if ((session.getAttribute("userdetails") == null) || (session.getAttribute("userdetails") == "")) {
%>
 <c:redirect url="./"></c:redirect>
<%}else{%>
<%@include file="include/header.jsp"%>
    
   <body>
    
    
    <p class="head1"><center><h3>Selection Status of Drive</h3> </center><a id="back1"
				href='<spring:url value="/home_page"/>'> Back</a>
     </p>
    <hr>
    <c:forEach var="t" items="${sessionScope.selectedList}"> 
      <div class="row">
  <div class="column">
    <div class="card2">
   
      <h3 style="color:Green; margin-top:25px;text-align:center;">&#128144; &#128079; Congratulation!!  &#128079; &#128144;</h3> 
      <br>
      <h5  class="side">Company Name : ${t.cid.cname}</h5>
      <h6 class="side1">Package : ${t.cid.package1}</h6>
      <hr>
      <p id="l3"><b>Designation :</b> Graduate Trainee Engineer</p>
       
       <br>
      <p id="l3"><b>Location : </b>${t.cid.location}</p>
     <div><p  id="apply1">Selected</p></div> 
          <br><br>  
   
     </div>
  </div>
   
  <br>
  <br>
  </div>
   </c:forEach>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
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
   