<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@page import="com.protech.pharmaplus.dto.Customer"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<style>
* {
	padding: 0;
	margin: 0;
}

#parent {
	display: flex;
	justify-content: end;
	background-color: rgba(27, 27, 27, 2);
	height: 50px;
	width: 100%;
	position: sticky;
	top: 0px;
	z-index: 2;
	align-items: center;
}

.admin {
	color: beige;
	position: relative;
	left: -20px;
}

.admin:hover {
	color: red;
}

.parent1 {
	display: flex;
	justify-content: center;
	background-color: black;
	height: 100px;
	align-items: center;
	position: sticky;
	top: 50px;
	z-index: 10
}

.child1 {
	color: white;
	position: relative;
	left: -15rem;
}

#child2 {
	width: 50%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	font-size: 20px;
	font-family: 'Times New Roman', Times, serif;
}


.login {
	height: 500px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.tab {
	border: 2px solid black;
	background-color: white;
	padding: 60px;
}

input[id="user"] {
	border-color: black;
	border-width: 1px;
	border-radius: 3px;
}

input[id="password"] {
	border-color: black;
	border-width: 1px;
	border-radius: 3px;
}

* {
	padding: 0%;
	margin: 0%;
}
</style>
</head>
<body>
	<div id="parent">
		<div class="admin">
			<a href="adminlogin.jsp" class="admin" style="text-decoration: none;"><img
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
			<%Customer customer=(Customer)session.getAttribute("customer");
			if(customer==null){
			%>
			<div>
				<a href="/customer/login"
					style="text-decoration: none; color: white;">Login</a>
			</div>
			<div>
				<a href="/customer/signup"
					style="text-decoration: none; color: white;">SignUp</a>
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
				
			<div>
				<a href="/aboutus"
					style="text-decoration: none; color: white;">About us</a>
			</div>
	
		</div>
	</section>
	<div class="login">
		<form action="/customer/login" method="post">
			<table class="tab"
				style="height: 300px; width: 300px; border-radius: 10px;">
				<tr>
					<th>${fail}</th>
				</tr>

				<tr>
					<th
						style="font-size: 20px; font-style: normal; text-align: center;">USER
						LOGIN</th>
				</tr>
				<tr>

					<td><input type="text" name="user" id="user"
						placeholder="Enter email/mobile"
						style="width: 200px; height: 25px; font-size: 12px; background-color: lightgoldenrodyellow;">
					</td>

				</tr>
				<tr>
					<td><input type="password" name="password" id="password"
						placeholder="password"
						style="width: 200px; height: 25px; font-size: 12px; background-color: lightgoldenrodyellow;">
					</td>
				</tr>
				<tr>
					<td>
						<button
							style="width: 200px; height: 30px; background-color: orange; border-style: none; border-radius: 2px;">Login</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>