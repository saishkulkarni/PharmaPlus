<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.protech.pharmaplus.dto.Customer"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PHARMA+</title>
<link rel="icon" href="../images/favicon.ico">
<link rel="stylesheet" href="../css/tri.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div id="parent">
		<div class="admin">
			<a href="/admin/login" class="admin" style="text-decoration: none;"><img
				height="60px" width="60px" alt="unknown"
				src="../images/adminlogo.png"></a>
		</div>
	</div>
	<section class="parent1">
		<div class="child1">
			<a href="/" style="text-decoration: none; color: white;"><h1>PHARMA+</h1></a>
		</div>
		<div id="child2">	
			<div id="child">
				<a href="/" style="text-decoration: none; color: white;">Home</a>
			</div>

			<div>
				<a href="/customer/products"
					style="text-decoration: none; color: white;">Products</a>
			</div>
			<div>
				<a href="/aboutus"
					style="text-decoration: none; color: white;">About us</a>
			</div>
			<%Customer customer=(Customer)session.getAttribute("customer");
			if(customer==null){
			%>
			
			<div>
				<a href="/customer/signup"
					style="text-decoration: none; color: white;">SignUp</a>
			</div>
			<div>
				<a href="/customer/login"
					style="text-decoration: none; color: white;">Login</a>
			</div>
			<%}else{%>
				<div id="child3">
					<a href="/customer/cart" class="cart" style="text-decoration: none; color: white;"><img src="../images/cart.jpeg" alt="Cart" width="30em" height="30em" style="border-radius: 5em;">Cart
					</a>   
				</div>
				<div>
					<a href="/logout"
						style="text-decoration: none; color: white;">Logout</a>
				</div>
				<%}%>

		</div>
	</section>
	<h1>${pass}</h1>
	<h2>${fail}</h2>
	
	<div id="carouselExampleSlidesOnly" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="https://consumer-app-images.pharmeasy.in/marketing/comp_cod.jpg"
					class="d-block w-100" alt="..." height="500em"
					style="margin: 0%; padding: 0%;">
			</div>
			<div class="carousel-item">
				<img
					src="https://consumer-app-images.pharmeasy.in/marketing/comp_50lac.jpg"
					class="d-block w-100" alt="..." height="500em">
			</div>
			<div class="carousel-item">
				<img
					src="https://www.intelikart.com/sites/default/files/photo-1622227922682-56c92e523e58.jpeg"
					class="d-block w-100" alt="..." height="500em">
			</div>
		</div>
	</div>
	<footer>
		<div class="footer">
			<div class="fchild">
				<div id="fchild1">Pharm+</div>
				<p style="color: white;">
					We would love to serve you and let enjoy <br> your culinary
					expirience. Excepteure sint <br> occaecat cupidatat non
					proident.
				</p>
				<p style="line-height: 2em;"></p>
			</div>
			<div id="fchild2" style="color: white;">
				<div id="fchild21">Contact info</div>
				<p>
					telephone:980830078 <br>email:gsvv@gmail.com <br>#3/2,10th
					c main road rajajianagar bangalore
				</p>
			</div>
			<div class="item2" style="color: white;">
				<div class="head">Opening Times</div>
				<p>Monday-Friday:10.00-23.00</p>
				<p>Saturday:10.00-19.00</p>
			</div>
		</div>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
		
		<script type="text/javascript">
		
		</script>
		
</body>
</html>