<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.protech.pharmaplus.dto.Customer"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./pro.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">

    <style>
*{
	padding: 0;
	margin: 0;
}

#parent {
	display: flex;
	justify-content: end;
	background-color: rgba(27, 27, 27, 1);
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
.parent1{
    display: flex;
    justify-content: center;
    background-color: black;
height: 100px;
align-items: center;
}
.child1{
    color: white;
    position: relative;
    left: -15rem;
}
#child2{
    width: 50%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-size: 20px;
    font-family: 'Times New Roman', Times, serif;
}
.cart1:hover{
color: aqua;
}
        
a{
    font-family: 'Open Sans', sans-serif;
    font-weight: 400;
}
h1{
    font-family: 'Open Sans', sans-serif;
    font-weight: 400;

}

        #nav_bar{
    width: 100%;
    height: 3em;
    background-color: black;
    display: flex;
    justify-content: end;
    align-items: center;

}
.cart{
    color: white;
    font-size: 1em;
    position: relative;
     left: -5em;

}
/* img:hover{
    background-color: red;
} */
.admin:hover{
    color: red;
}
*{
    margin: 0;
    padding: 0;
}
.admin{
    color: white;
    font-size: 1em;
    position: relative;
     left: -3em; 
}
#nav_main{
    width: 100ew;
    height: 6em;
    background-color: bisque;
    display: flex;
    justify-content: center;
    align-items: center;
}
#nav_child1{
    width: 30%;
    text-align: center;
}
#nav_child2{
    width: 50%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-size: 1.3em;
    font-family: 'Times New Roman', Times, serif;
    
}
.nav_child:hover{
    color: red;
}
#nav_child3{
    width: 20%;
    display: flex;
    justify-content: end;
}

h1{
    font-size: 50px;
    font-family:'Times New Roman', Times, serif;
    font-weight: lighter;
}



.container-fluid{
     background-image:url(../image/prbgg.jpg);
     /* background-image: url(../image/1682498717547.jpg);
     background-repeat: no-repeat;
     background-size: cover; */
     height: 500px;
     display: flex;
     justify-content: center;
     align-items: center;
}
.tab{
    border: 2px solid black;
    background-color: white;
    /* background-image: linear-gradient(blue,red,orange,green); */
    /* border-radius: 10px; */
    /* display: flex; */
    /* justify-content: center; */
    padding: 60px;
    width: 100px;
    height: 100px;
    
}
input[id="user"]
{
    border-color: black;
    border-width: 1px;
    border-radius: 3px;
    border-style: solid;

}
input[id="pass"]
{
    border-color: black;
    border-width: 1px;
    border-radius: 3px;
    border-style: solid;
    
}
input[value="Submit"]
{
    border-color: blue;
    border-width: 1px;
    border-radius: 3px;
    color: black;
}
    </style>
</head>
<body>
      <div id="parent">
   
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

        <div class="container-fluid">
            <form action="/admin/login" method="post" >
                <table class="tab" style="height: 300px; width: 300px; border-radius: 10px;" >
                <tr>
                <th>${fail}</th>
                </tr>
                    <tr>
                        <th style="font-size: 20px; font-style:normal;text-align: center;">
                            ADMIN LOGIN
                        </th>
                    </tr>
                    <tr>
                       
                        <td>
                            <input type="text" name="user" id="user" placeholder="Enter email/mobile" style="width: 200px; height: 25px;font-size: 12px;background-color:lightgoldenrodyellow;">
                        </td>
                        
                    </tr>
                    <tr>
                        
                        <td>
                            <input type="password" name="pass" id="pass" placeholder="Password" style="width: 200px; height: 25px;font-size: 12px;">
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td>
                            <button style="width: 50px; height: 30px; font-size: 18px; background-color: orange;border-style: none;width: 200px;border-radius: 2px;">Login</button>
                        </td>
                       
                    </tr>
                
            </table>
            </form>
        </div> 
        
        
</body>
</html>