<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>

    <%@ page language="java"  contentType="text/html; charset=UTF-8" %>
    <!-- for jstl tag -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- end of jstl tag -->

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page |HOSPITAL MANAGEMENT SYSTEM</title>
<%@include file="component/allcss.jsp"%>
<!-- customs css for this page -->
<style type="text/css">
.my-card {
	box-shadow: 0px 0px 10px 1px #00bfff;
	/*box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3);*/
}
</style>
<!-- end of customs css for this page -->

</head>
<body>
<%@include file="component/navbar.jsp"%>
<!-- carousel code -->


	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="3" aria-label="Slide 4"></button>
			<!-- <button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="4" aria-label="Slide 5"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="5" aria-label="Slide 6"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="6" aria-label="Slide 7"></button> -->
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/h1.avif" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/doct1.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/h2.avif" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/h3.avif" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<!-- <div class="carousel-item">
				<img src="img/hospital1.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/hospital2.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/hospital3.jpg" class="d-block w-100" alt="...">
			</div> -->

		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<!-- end of carousel code -->



	<!-- First Div Container -->
	<div class="container p-3">
		<p class="text-center mt-2 mb-5 fs-2 myP-color">Some key Features of our Hospital</p>
		<div class="row">
			<!-- 1st col -->
			<div class="col-md-8 p-5">

				<div class="row">
					<div class="col-md-6 ">
						<div class="card my-card">
							<div class="card-body">
								<p class="fs-5 myP-color">Advance Healthcare Technology</p>
								<p>Our hospital prides itself on offering the most 
								advanced healthcare technology, ensuring cutting-edge treatments,
								 precise diagnoses, and superior patient care outcomes.</p>
							</div>
						</div>
					</div>

					<div class="col-md-6 ">
						<div class="card my-card">
							<div class="card-body">
								<p class="fs-5 myP-color">Good access to surgical specialists.</p>
								<p>Our hospital ensures patients have swift access to highly 
								skilled surgical specialists, facilitating timely 
								consultations and personalized treatment plans for optimal care outcomes.</p>
							</div>
						</div>
					</div>

					<div class="col-md-6 mt-2">
						<div class="card my-card">
							<div class="card-body">
								<p class="fs-5 myP-color">Top-rated pharmacies</p>
								<p>Our hospital partners with top-rated pharmacies, 
								ensuring patients have access to high-quality medications, expert advice, 
								and convenient prescription services for optimal health outcomes.</p>
							</div>
						</div>
					</div>

					<div class="col-md-6 mt-2">
						<div class="card my-card">
							<div class="card-body">
								<p class="fs-5 myP-color">Home nursing services</p>
								<p>Our home nursing services provide compassionate care 
								tailored to your needs, ensuring comfort and support in 
								familiar surroundings. Our skilled nurses deliver expert medical 
					        assistance with daily activities. </p>
							</div>
						</div>
					</div>
				</div>


			</div>
			<!-- End of 1st col -->

			<!-- 2nd col -->
			
				<div class="col-md-4 mt-2 mys-card">
					<img class="mt-3" alt="" src="img/d1.jpg" height="440px"
						width="470px">
				</div>
			
			<!-- End of 2nd col -->

		</div>
	</div>
	<!-- End of First Div Container -->

	<hr>

	<!-- Second Div Container -->

	<div class="container p-2">
		<p class="text-center fs-2 myP-color">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card my-card">
					<div class="card-body text-center">
						<img alt="" src="img/d4.jpg" height="300px" width="230px">
						<p class="fw-bold fs-5">Dr. Mukherjee</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card my-card">
					<div class="card-body text-center">
						<img alt="" src="img/d3.jpg" height="300px" width="230px">
						<p class="fw-bold fs-5">Dr. Dey</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card my-card">
					<div class="card-body text-center">
						<img alt="" src="img/d2.jpg" height="300px" width="230px">
						<p class="fw-bold fs-5">Dr. Joshi</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card my-card">
					<div class="card-body text-center">
						<img alt="" src="img/d1.jpg" height="300px" width="230px">
						<p class="fw-bold fs-5">Dr. Jha</p>
						<p class="fs-7">(Dean)</p>
					</div>
				</div>
			</div>
			
			</div>

		</div>

	</div>

	<!-- Second Div Container -->





	<!-- footer -->
	<%@include file="component/footer.jsp"%>
	<!-- end footer -->
</body>
</html>