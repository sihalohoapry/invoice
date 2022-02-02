<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<spring:url var="css" value="/resources/style" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<spring:url var="vendorBootstrapJs"
	value="/resources/vendor/bootstrap/js" />
<spring:url var="vendorJquery" value="/resources/vendor/jquery" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>Invoice | ${title}</title>
<script>
	window.menu = '${title}';
</script>

<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
<link href="${css}/main.css" rel="stylesheet" />
</head>

<body>
	<div class="page-dashboard">
		<div class="d-flex" id="wrapper" data-aos="fade-right">
			<!-- Sidebar -->
			<%@include file="./shared/sidebar.jsp"%>
			<!-- /#sidebar-wrapper -->


			<!-- Page Content -->

			<c:if test="${userClickHome == true }">
				<%@include file="dahboard.jsp"%>
			</c:if>

			<c:if test="${userClickListInvoice == true}">
				<%@include file="list-invoice.jsp"%>
			</c:if>
			<!-- /#page-content-wrapper -->
		</div>
	</div>
	<!-- Bootstrap core JavaScript -->
	<script src="${vendorJquery}/jquery.slim.min.js"></script>
	<script src="${vendorBootstrapJs}/bootstrap.bundle.min.js"></script>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script>
		AOS.init();
	</script>
	<!-- Menu Toggle Script -->
	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
	</script>
	<script src="${vendorJquery}/myapp.js"></script>




</body>
</html>
