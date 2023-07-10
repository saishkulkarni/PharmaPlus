<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
    <style>
        body{
    background-color: black;
    width: 100%;
    background-image: url(../image/prbg1.jpg);
    overflow: hidden;
}
h1{
    position: relative;
    left: 14em;
    text-decoration: underline;
}
.main{
     width: 70em;
     position: relative;
     left: 4.5em;
}
 nav{

    width: 100%;
    background-color:white
    
} 
.container{
    display: flex;
    column-gap: 3em;
    position: relative;
    left: 1.5em;
    top: 1em;
    /* background-color: white; */
    width: 50em;
    height: 3em;


}

form{
    border: solid white;
    background-color:rgb(193, 230, 230);
    /* width: 78em; */
}
table{
    position: relative;
    left: 10em;
    top: -1em;
    font-size: 1em;

}
.td2{
    width: 55em;
    height: 1.45em;
}
.td1{
    text-align: right;
    position: relative;
    left:-2em ;
}

    </style>
</head>
<body>
    <h1 style="color: white;">UPDATE PRODUCT</h1>
    <div class="main">
    <nav>
       <div class="container">
        <div><a href="/admin/home" style="text-decoration: none;font-size: 20px;color: black;">Home</a></div>
      </div>
    </nav>
    <hr>

    <form action="/admin/update" method="post" enctype="multipart/form-data">
        
        <h2 style="position: relative; left: 18em;">Update Product Details</h2>
        <table cellpadding="" cellspacing="8em">
            <tr>
                <td class="td1"><label for="id"><strong>Id</strong></label></td>
                <td><input type="text" name="id" id="id" placeholder="Product Id" class="td2"></td>
            </tr>
           
            <tr>
                <td class="td1" ><label for="fname"><strong>Name</stong></label></td>
                <td><input type="text" name="name" id="fname" placeholder="Full name"  class="td2"></td>
            </tr>
            <tr>
                <td class="td1" ><label for="brand"><strong>Brand</strong></label></td>
                <td><input type="text" name="brand" id="brand" placeholder="adidas"  class="td2"></td>
            </tr>
            <tr>
                <td class="td1"  ><label for="price"><Strong>Price</Strong></label></td>
                <td><input type="text" name="price" id="price" placeholder="price"  class="td2"></td>
            </tr>
            <tr>
                <td class="td1" ><label for="img"><strong>Image</strong></label></td>
                <td ><input type="file"  name="pic" src="" class="td2" id="img" style="border: 1px solid; background-color: white;"></td>
            </tr>
          
            <tr>
                <td><td>
                <td style="position: relative; left: -47em;"><button value="Insert" style="background-color: orange; border: 10px white; height: 2.2em; width: 8em;  font-size: 1em; color: aliceblue;"><strong>Update</strong></button></td>
            </tr>
        </table>
    
    </form>
    </div>
</body>
</html>