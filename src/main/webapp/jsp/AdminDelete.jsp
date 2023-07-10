<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete</title>
    <style>
        body{
    background-color: black;
    /* width: 10em; */
    background-image:url(../image/prbg1.jpg);
    overflow: hidden;
 
}
h1{
    position: relative;
    left: 14em;
    text-decoration: underline;
}
h2{
    text-align: center;
}
.main{
     width: 70em;
     position: relative;
     left: 5em;
     /* background-color: aliceblue; */
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
    /* background-color: white; */
    width: 50em;
    height: 3em;


}

form{
    background-color: white;
    height: 20em;
    
}
table{
    position: relative;
    left: 20em;
    
}
    </style>
</head>
<body>
    
    <h1 style="color: white;">DELETE PRODUCT</h1>
    <div class="main">
    <nav>
       <div class="container">
        <div><a href="/admin/home" style="text-decoration: none;font-size: 20px;color: black;">Home</a></div>
       </div>
    </nav>
    <hr>


    <form action="/admin/delete" method="post" >
        <h1>Delete Product</h1>
        <table cellspacing="25em">
            <tr>
                <td><label for="Product"><strong>Product Id</strong></label></td>
                <td><input type="text" name="id" id="product"></td>
            </tr>
            
            <tr>
                <td></td>
                <td><button style="background-color: orange; color: white; height: 2.5em; width: 9em; border: white;"><strong>Delete</strong></button></td>
            </tr>
        </table>
    </form>
    </div>
</body>
</html>