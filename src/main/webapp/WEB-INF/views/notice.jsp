



<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    if ((session.getAttribute("tpodetails") == null) || (session.getAttribute("tpodetails") == "")) {
%>
 <c:redirect url="./"></c:redirect>
<%}else{%>
<%@include file="include/header2.jsp"%>
<link rel="stylesheet" type="text/css" href="<spring:url value='/css/create_drive.css'/>" />
		<div class="container1">
		<br><br>
		<p class="head1"><a id="back1"
				href='<spring:url value="/tpodashboard"/>'> Back</a>
			<div class="row">
				<div class="col-sm-12">
					<header>Important Notice</header>
				</div>
			</div>
		
		
			<div class="row">
			<div class="form-outer">
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
				<form action='<spring:url value="/savenotice"/>' method="post">
					<div class="page slide-page ">
						<div id="personal">
							<div class="row">
								<div class=" col-sm-12 title">Important Notice:</div>
								<div class="col-sm-12 mt-3 ">
									<hr>
									<h4 style="color:red;">${requestScope.error}</h4>
								</div>
								
								<label class=" col-sm-1 mt-3 col-form-label label ">Notice:</label>
								<div class="col-sm-11 mt-3 ">
									<textarea name="notice" rows="5" cols="80" type="text" required></textarea><br><br>
								</div>

								<button id="next2" class="col-sm-3 next-1 next ">Submit</button>
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