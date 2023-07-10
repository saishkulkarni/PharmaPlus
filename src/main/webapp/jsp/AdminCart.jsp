<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@page import="com.protech.pharmaplus.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap"
	rel="stylesheet">

<style>
body {
	background-color: white;
}

.main {
	width: 70em;
	position: relative;
	left: 5em;
}

nav {
	/* width: 100%; */
	background-color: white;
}

.container {
	display: flex;
	column-gap: 3em;
	position: relative;
	left: 3em;
	top: 1em;
	/* background-color: aqua; */
	width: 50em;
	height: 3em;
}

#cart_imagehead {
	height: 5em;
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	background-image: radial-gradient(skyblue, white);
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande',
		'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	position: relative;
	top: 15px;
}

#cart_table {
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	font-size: medium;
	border-collapse: collapse;
	position: relative;
	top: 2em;
}

.cart_quantity {
	width: 3em;
	text-align: center;
}

#cart_head {
	background-image: linear-gradient(to top, gray, white);
}

#cart_total {
	position: relative;
	left: 65em;
	top: 50px;
	border-spacing: 2em;
}

td {
	text-align: left;
	border-bottom: -1em solid;
}

#cart_image {
	width: 250px;
	height: 200px;
	text-align: center;
}
</style>
</head>
<body>

	<%
	List<Product> list = (List<Product>) request.getAttribute("list");
	%>

	<div class="main">
		<nav>
			<div class="container">
				<div><a href="/admin/home" style="text-decoration: none;font-size: 20px;color: black;">Home</a></div>
			</div>
		</nav>



		<div id="cart_imagehead">
			<h1>Admin Cart Table</h1>
		</div>
		<center>
			<table style="text-align: center;" id="cart_table" cellspacing="5em"
				cellpadding="50em" border="2em">

				<tr id="cart_head">
					<td style="text-align: center; padding: 20px;"><h3>Product
							ID</h3></td>
					<td style="text-align: center; padding: 20px;"><h3>Product
							Brand</h3></td>
					<td style="text-align: center; padding: 20px;"><h3>Product
							Image</h3></td>
					<td style="text-align: center; padding: 20px;"><h3>Product
							Name</h3></td>
					<td style="text-align: center; padding: 20px;"><h3>Price</h3></td>
					<td style="text-align: center; padding: 20px;"><h3>Quantity</h3></td>
				</tr>
				<%
				for (Product prod : list) {
				%>
				<tr>
					<td style="text-align: center;"><%=prod.getId()%></td>
					<td id="cart_image"><%=prod.getBrand()%></td>
					<td id="cart_image">
						<%
						String base64 = Base64.encodeBase64String(prod.getImage());
						%> <img height="300" width="300" alt="unknown"
						src="data:image/jpeg;base64,<%=base64%>">
					</td>
					<td style="text-align: center;">
						<h3><%=prod.getName()%></h3>
					</td>
					<td style="text-align: center;"><%=prod.getPrice()%></td>
					<td style="text-align: center;"><%=prod.getSize()%></td>
				</tr>

				<%
				}
				%>
			</table>
			
		</center>
</body>
</html>