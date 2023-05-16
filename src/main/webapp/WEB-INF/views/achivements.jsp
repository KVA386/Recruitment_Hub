<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    if ((session.getAttribute("userdetails") == null) || (session.getAttribute("userdetails") == "")) {
%>
 <c:redirect url="./"></c:redirect>
<%}else{%>

<%@include file="include/header.jsp"%>
<div class="container1">
         <div class="row"><div class="col-sm-12"><header>Profile</header></div></div>
         <div class="row"> <div class="progress-bar1 .bg-white">
            <div class="step col-sm-4">
               <p>
                Personal Details
               </p>
               <div class="bullet bg-danger">
                  <span>1</span>
               </div>
               <div class="check fas fa-check"></div>
            </div>
            <div class="step col-sm-4">
               <p>
                  Education
               </p>
               <div class="bullet bg-danger">
                  <span>2</span>
               </div>
               <div class="check fas fa-check"></div>
            </div>
            <div class="step col-sm-4">
               <p>
                  Skills
               </p>
               <div class="bullet bg-danger">
                  <span>3</span>
               </div>
               <div class="check fas fa-check"></div>
            </div>
            <div class="step col-sm-4">
               <p>
                  Projects
               </p>
               <div class="bullet bg-danger">
                  <span>4</span>
               </div>
               <div class="check fas fa-check"></div>
            </div>
            <div class="step col-sm-4">
              <p>
                 Achievements
              </p>
              <div class="bullet bg-primary">
                 <span>5</span>
              </div>
              <div class="check fas fa-check"></div>
           </div>
         </div>
         </div>
         <div class="form-outer">
            
   
               
              <form action='<spring:url value="/save_achivements"/>'  method="post">
               <div class="page slide-page">
              <div id="Achievements">
                 <div class="row"><div class=" col-sm-12 title mt-3">Acheivements:</div>
                 <div  class="col-sm-12 mt-3 ">${requestScope.message}<hr></div>
             
                 <label class=" col-sm-12 mt-3 col-form-label label text-left">Description:
                   </label>
                 <div  class="col-sm-10 mt-3 "><textarea rows="5" cols="80" name="message"  required>${sessionScope.achivements_details.message}</textarea></div>
                 
                  <div class="col-sm-12 mt-5 field">
                 <a href='<spring:url value="/projects"/>' class=" col-sm-3 mt-3 btn btn-danger">Previous</a>
							<div class="col-sm-6 mt-5"></div>
							<button class="col-sm-3  next-2 next mt-3">Next</button>
                     
                  </div>
                 
                 </div>              
                </div>
                
                              </form>
                
                </div>

         </div>
      </div>
      
    
</body>
</html>


 <%}%>

         