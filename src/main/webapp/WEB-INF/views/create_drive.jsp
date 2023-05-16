<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    if ((session.getAttribute("tpodetails") == null) || (session.getAttribute("tpodetails") == "")) {
%>
 <c:redirect url="./"></c:redirect>
<%}else{%>
<%@include file="include/header2.jsp"%>
<link rel="stylesheet" type="text/css" href="<spring:url value='/css/create_drive.css'/>" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
$(document.ready(function)){
$(function){
var dtToday=new Date();
var month=dtToday.getMonth()+1;
var day=dtToday.getDate();
var year=datToday.getFullYear();
if(month<10)
	month='0'+month.toString();
if (day<10)
	day='0'+day.ttoString();
var maxDate=year+"-"+month+"-"+day;
$("#d1").attr("min",maxDate);
});
</script>
		<div class="container1">
			<br><br> <p class="head1"><center><h3></h3> </center><a id="back1"
				href='<spring:url value="/tpodashboard"/>'> Back</a>
     </p>
			<div class="row">
			
				<div class="col-sm-12">
					<header>Placement Drive</header>
				</div>
			</div>
	
		
			<div class="row">
			<div class="form-outer">
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
				<form action='<spring:url value="/save_create_drive"/>' method="post">
					<div class="page slide-page ">
						<div id="personal">
							<div class="row">
								<div class=" col-sm-12 title">Create Drive:</div>
								<div class="col-sm-12 mt-3 ">
									<hr>
										<h3 style="color:green;">${requestScope.message}</h3>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label d-flex  label ">
									Company Name:</label>
								<div class="col-sm-5 mt-3">
									<input type="text" name="cname"  required>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label label ">
									Package:</label>
								<div class="col-sm-5 mt-3 ">
									<input type="text" name="package1"  required>
								</div>
                            <label class=" col-sm-1 mt-3 col-form-label label ">Job Location:</label>
								<div class="col-sm-5 mt-3 ">
									<input type="text" name="location"  required>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label label ">Apply Link:</label>
								<div class="col-sm-5 mt-3 ">
									<input type="text" name="link"  required>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label label ">Job Role:</label>
								<div class="col-sm-5 mt-3 ">
									<input type="text" name="jobdesignation"  required>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label label ">Drive Date:</label>
								<div class="col-sm-5 mt-3 ">
									<input type="date" name="date" placeholder="dd-MMM-yy" id="d1" required>
								</div>
								
								
								
								<label class=" col-sm-1 mt-3 col-form-label label ">Eligibility Criteria:</label>
								<div class="col-sm-11 mt-3 ">
									<textarea name="criteria" rows="5" cols="80" type="text" required></textarea>
								</div>
								
                                   <label class=" col-sm-1 mt-3 col-form-label label ">10th marks:</label>
								<div class="col-sm-11 mt-3 ">
									<input type="text" name="tenth"  required>
								</div>
								
								<label class=" col-sm-1 mt-3 col-form-label label ">12th marks:</label>
								<div class="col-sm-11 mt-3 ">
									<input type="text" name="twleve"  required>
								</div>
								
								<label class=" col-sm-1 mt-3 col-form-label label ">Overall cgpa:</label>
								<div class="col-sm-11 mt-3 ">
									<input type="text" name="cgpa"  required>
								</div>
								
								
								<label class=" col-sm-2 mt-3 col-form-label label ">
									Job Description:</label>
								<div class="col-sm-10 mt-3 ">
									<textarea name="jD" rows="5" cols="80" type="text" required></textarea>
								</div>
								
								<label class=" col-sm-1 mt-3 col-form-label label ">Selection Process:</label>
								<div class="col-sm-5 mt-3 ">
									<textarea rows="5" cols="80" name="process" type="text" required></textarea>
								</div>	<br><br><br><br>
							
								<button id="next1" class="col-sm-3 next-1 next ">Submit</button>
								<div class="col-sm-12 mt-5"></div>
								<div class="col-sm-12 mt-5 field">
								    <div class="col-sm-9"></div>
									

</div>
								</div>
							</div>
						</div>
				</form>
		
		
		
		
		
		
		
			
</body>
</html>



<%}%>