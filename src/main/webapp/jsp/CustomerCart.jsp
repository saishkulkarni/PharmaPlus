<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.apache.commons.codec.binary.Base64"%>
        <%@page import="com.protech.pharmaplus.dto.Customer"%>
        <%@page import="com.protech.pharmaplus.dto.Item"%>
        <%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">

    <style>
* {
	padding: 0;
	margin: 0;
}
.cart{
    color: beige;
    text-decoration: none;
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

#cart_imagehead
{
   height: 5em;
   width: 100%;
   display: flex;
   justify-content: center;
   align-items: center;
   background-image: radial-gradient(skyblue,white);
   font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
   position: relative;
   top: 15px;
}
#cart_table
{
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    font-size: medium;
    border-collapse: collapse;
    position: relative;
    top: 2em;
}
.cart_quantity
{
    width: 3em;
    text-align: center;
}
#cart_head
{
    background-image: linear-gradient(to top,  gray , white);
    
    
}
#cart_total
{
    position: relative;
    left: 65em;
    top: 50px;
    border-spacing: 2em;
}
td{
    text-align: left;
    border-bottom: -1em solid;
}
#cart_image{
    width: 250px;
    height: 200px;
    text-align: center;
}
    </style>
</head>
<body>
    <div id="nav_bar">
        <div class="cart">
            <a href="" class="cart"><img src="../image/cart2.png" alt="cart" width="25em" height="25em" style="border-radius: 5em;">
            </a>   
        </div>
        <div class="admin">
            <a href="./logadmin.html" class="admin" style="text-decoration: none;">Admin</a>
        </div>
    </div>

    <%
	List<Item> list = (List<Item>) request.getAttribute("list");
	%>


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
			<%Customer customer=(Customer)session.getAttribute("customer") ;
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
			<%} else{%>
					<div class="cart">
        <a href="/jsp/AddToCart.jsp" class="cart"><img src="data:image/jpeg;base64,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" alt="Cart" width="39em" height="39em" style="border-radius: 10em;">Cart</a>   
    </div>
			<div>
				<a href="/logout"
					style="text-decoration: none; color: white;">Logout</a>
			</div>
			<%}%>


		</div>
	</section>
    <div id="cart_imagehead">
        <h1>Cart Page</h1>
    </div>
    <center>
      <table style="text-align: center;" id="cart_table" cellspacing="5em" cellpadding="50em" border="2em">
        <tr id="cart_head">
            <td style="text-align: center;padding: 20px;"><h3>Product Image</h3></td>
            <td style="text-align: center;padding: 20px;"><h3>Product</h3></td>
            <td style="text-align: center;padding: 20px;"><h3>Price</h3></td>
            <td style="text-align: center;padding: 20px;"><h3>Quantity</h3></td>
            <td style="text-align: center;padding: 20px;"><h3>Total</h3></td>
            <td style="text-align: center;padding: 20px;"><h3>Remove</h3></td>
        </tr>

        <%
        for (Item prod : list) {
        %>
        <tr>
            <td id="cart_image"><%
                String base64 = Base64.encodeBase64String(prod.getImage());
                %> <img height="300" width="300" alt="unknown"
                src="data:image/jpeg;base64,<%=base64%>"></td>
            <td style="text-align: center;">
                <h3><%=prod.getName()%></h3>
            </td>
            <td style="text-align: center;"><h3><%=(prod.getPrice()/prod.getQuantity())%></h3></td>
            <td style="text-align: center;"><h3><%=prod.getQuantity()%></td>
            <td style="text-align: center;"><%=prod.getPrice()%></td>
            <td style="text-align: center;"><button style="padding: 5px;font-size: 15px;">Delete</button></td>
        </tr>
        
				<%
            }
            %>
        


    </table>

  
</center>
<a><button>Place Order</button></a>
    
</body>
</html>