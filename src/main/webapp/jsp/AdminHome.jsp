<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <style>
        body{
    background-image:url(../image/prbg1.jpg);
    /* width: 10em; */
    overflow: hidden;
 
}
h1{
    position: relative;
    left: 17em;
    text-decoration: underline;
}
h2{
    text-align: center;
}
.main{
     width: 70em;
     position: relative;
     left: 5em;
}
 nav{

    /* width: 100%; */
    background-color: white;
    
} 
.container{

    display: flex;
    column-gap: 3em;
    position: relative;
    left: 3em;
    top: 1em;
     /* background-color:aquamarine;  */
    width: 50em;
    height: 3em;


}
form{
    background-color: white;
    height: 18em;
}

.but1{
    background-color: greenyellow;
    height: 2.5em;
    width: 13em;
    border: 2em;
    border-radius: 0.5em;
    
}
.but2{
    background-color: aqua;
    height: 2.5em;
    width: 13em;
    border: 2em;
    border-radius: 0.5em;
}
.but3{
    background-color: red;
    height: 2.5em;
    width: 13em;
    border: 2em;
    border-radius: 0.5em;
}
    </style>
</head>
<body>
    
    <h1 style="color: white;">ADMIN</h1>
    <div class="main">
    <nav>
       <div class="container">

        <div><a href="/admin/home" style="text-decoration: none;font-size: 20px;color: black;">Home</a></div>
        <div><a href="/logout" style="text-decoration: none;font-size: 20px;color: black;">Logout</a> </div>
        
      </div>
    </nav>
    <hr>
   <h1>${pass}</h1>
   <h1>${fail}</h1>
   
        <table cellspacing="30em">
           <tr><td ><strong><button class="but1"><a href="/admin/insert" style="text-decoration: none;font-size: 20px;color: black;">Insert Product</a></button></strong></td></tr>
           <tr><td ><strong><button class="but1"><a href="/admin/products" style="text-decoration: none;font-size: 20px;color: black;">View all Product</a></button></strong></td></tr>
           <tr><td><strong><button class="but2"><a href="/admin/update" style="text-decoration: none;font-size: 20px;color: black;">Update Product</a></button></strong></td></tr>
            <tr><td><strong><button class="but3"><a href="/admin/delete" style="text-decoration: none;font-size: 20px;color: black;">Delete Product</a></button></strong></td></tr>
            <tr><td ><strong><button class="but1"><a href="/admin/customers" style="text-decoration: none;font-size: 18px;color: black;">view all customers</a></button></strong></td></tr>
        </table>

</body>
</html>