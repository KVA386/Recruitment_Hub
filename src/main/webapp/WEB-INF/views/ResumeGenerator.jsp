<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    if ((session.getAttribute("userdetails") == null) || (session.getAttribute("userdetails") == "")) {
%>
 <c:redirect url="./"></c:redirect>
<%}else{%>



<%@include file="include/header.jsp"%>
 			
		<br><br><p class="head1"><center><h3></h3> </center><a id="back1"
				href='<spring:url value="/home_page"/>'> Back</a>
     </p>
<div class="container1">
 <div class="row mt-3 field" >
 <div class="col-sm-6 mt-3 field">
 <div class="polaroid">
 <img src='<spring:url value="./img/Template2.png"></spring:url>' alt="image"  width="100%">

<div class="container2">
<p><a href='<spring:url value="/Resume2"/>' class=" col-sm-3 btn btn-danger">view</a></p>
</div>
</div>
 </div>
 <div class="col-sm-6 mt-3 field">
 <div class="polaroid">
 <img src='<spring:url value="./img/Template.png"></spring:url>' alt="image"  width="100%">
<div class="container2">
<p><a href='<spring:url value="/Resume"/>' class=" col-sm-3 btn btn-danger">view</a></p>
</div>
 </div>
 </div>
  <div class="col-sm-6 mt-3 field">
 <div class="polaroid">
 <img src='<spring:url value="./img/Template3.png"></spring:url>' alt="image"  width="100%">
<div class="container2">
<p><a href='<spring:url value="/Resume4"/>' class=" col-sm-3 btn btn-danger">view</a></p>
</div>
 </div>
 </div>
 
   <div class="col-sm-6 mt-3 field">
 <div class="polaroid">
 <img src='<spring:url value="./img/Template4.png"></spring:url>' alt="image"  width="100%">
<div class="container2">
<p><a href='<spring:url value="/Resume3"/>' class=" col-sm-3 btn btn-danger">view</a></p>
</div>
 </div>
 </div>
 </div>
 </div>
 
  </div>
 
  



 
<%}%>
 

 
 