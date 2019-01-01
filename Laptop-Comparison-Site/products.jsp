<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

  <head>

  </head>



  <body>




    <div class="icon-bar">

<a class="active" href="home.html">Home</i></a>
<a class="products" href="/WEB_INF/products.jsp">Products</a>
<a class="about" href="">About</a>
 <a class="contact" href="">Contact Us</a>

<div id="logini">   <a href="register.html">Register</a>
 <a href="login.html">Login</a>
</div>
<form action="update.jsp">
<input type="text" placeholder="name" name="name"><br>
<input type="submit" value="Submit">

</form>






    
%>
  </body>





</html>
