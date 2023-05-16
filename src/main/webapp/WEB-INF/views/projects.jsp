<%@include file="include/header.jsp"%>
 <div class="container1">
         <div class="row"><div class="col-sm-12"><header>Profile</header></div></div>
         <div class="row"> <div class="progress-bar1 .bg-white">
            <div class="step col-sm-4">
               <p>
                Personal Details
               </p>
               <div class="bullet bg-danger ">
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
               <div class="bullet bg-primary">
                  <span>4</span>
               </div>
               <div class="check fas fa-check"></div>
            </div>
            <div class="step col-sm-4">
              <p>
                 Achievements
              </p>
              <div class="bullet">
                 <span>5</span>
              </div>
              <div class="check fas fa-check"></div>
           </div>
         </div>
         </div>
         <div class="form-outer">
            <form action='<spring:url value="/save_projects"/>' method="post">
               <div class="page slide-page">
            
              <div id="Project"> 
                 <div class="row"><div class=" col col-lg-12 title mt-3">Projects:</div>
                 <div  class="col col-lg-12 mt-3 ">${requestScope.message}<hr></div>
                 <div  class="col col-lg-12 mt-3 "> <label class=" col col-lg-12 mt-3 col-form-label label text-left">Title:
                   </label><input type="text" style="height:40px" name="title1" value="${sessionScope.project_details.title1}" required></div>
                   <div  class="col col-lg-12 mt-3 "> <label class=" col col-lg-12 mt-3 col-form-label label text-left">Description:
                   </label><input type="text"  style="height:40px" name="description1" value="${sessionScope.project_details.description1}" required></div>
                     <div  class="col-sm-12 mt-3 "><hr></div>
                   
                   <div  class="col col-lg-12 mt-3 "> <label class=" col col-lg-12 mt-6 col-form-label label text-left">Title:
                   </label><input type="text" style="height:40px" name="title2" value="${sessionScope.project_details.title2}" required></div>
                   <div  class="col col-lg-12 mt-3 "> <label class=" col col-lg-12 mt-3 col-form-label label text-left">Description:
                   </label><input type="text"  style="height:40px" name="description2" value="${sessionScope.project_details.description2}" required></div>
                     <div  class="col-sm-12 mt-3 "><hr></div>
                   
                    <div class="col col-lg-12" id="space"></div>
                 <div class="col-sm-12 mt-7 field">
                  <a href='<spring:url value="/skills"/>' class=" col-sm-3 mt-3 btn btn-danger">Previous</a>
							<div class="col-sm-6 mt-5"></div>
							<button class="col-sm-3  next-2 next mt-3">Next</button>
                    
                  
                 </div>              
                </div>
               </form>
         </div>
      </div>
     </div>
    

</body>
</html>

         