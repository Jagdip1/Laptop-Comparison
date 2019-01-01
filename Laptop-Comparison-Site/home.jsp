<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
  <head>
    <title>Home</title>
    <script src="jquery-3.3.1.min.js"></script>
<script src="/js/my.js"></script>
  </head>
  <meta name="viewport" content="width=device-width, initial-scale=1">


<style>


body{margin:0;}
body, html{
  height: 100%;
}

* {
  box-sizing: border-box;
}

.bg-img {
  background-image: url("rawpixel-1046250-unsplash-new.jpg");

  min-height: 800px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  margin-left:3px;
margin-right:3px;


}






.icon-bar {
    width: 100%;
    background-color: #292931;
    overflow: auto;
}

.active, .about, .contact, .compare{
    float: left;
    width: 15%;
    text-align: center;
    padding: 11px 0;
    transition: all 0.6s ease;
    color: white;
    font-size: 17px;
    text-decoration: none;
    font-family: sans-serif;
}
#logini a,input{

  float:right;
  padding:10px;
  text-decoration:none;
  text-align:center;
  color:white;
  font-family: cursive;


}
#logini a:hover{
background-color: #55acee;

}
.icon-bar a:hover {
   background-color: #000;
}

.active {
    background-color:#6495ED;

}
footer{
text-align:center;
color: #292931;
font-size:17px;

}
footer .main:hover{


color:black;


}
.name{




}
.user {
float:right;
margin-right:0px;
font-family:cursive;
color:white;

background-color:#292931;
border:1px solid black;
text-align:center;
text-decoration:none;
padding-left:10px;
padding-right:10px;
padding-top:4px;
padding-bottom:7px;
}
.user a{

color:white;
text-decoration:none;
padding-left:2px;
padding-right:2px;


}
.user a:hover{background-color: #55acee;
}
</style>
    <body bgcolor="white">
      <div class="icon-bar">

  <a class="active" href="/WebDemo/home.jsp">Home</a>
  <a class="compare" href="/WebDemo/compare.jsp">Compare</a>
  <a class="about" href="">About</a>
   <a class="contact" href="">Contact Us</a>

<div id="logini">   <a href="/WebDemo/register.jsp">Register</a>
   <a href="/WebDemo/login.jsp">Login</a>
</div>

 </div><div class="name">
<% 
if ((session.getAttribute("send") == null) || (session.getAttribute("send") == "")) {
%> 


<%} else{if(session.getAttribute("send") == "invalid credentials"){
%><script>window.alert("invalid login details \nPlease register first"); </script>
<%
session.invalidate();

%>
<% }else{  %>
<div class="user"><%=session.getAttribute("send")%><br>
<a href='logout.jsp'>Logout</a></div>
<%
    }}                                               
%>
  </div>
     


<div class="bg-img">
</div>

<footer><p>© 2018 Jagdip World Corporation</p>
 <div class="main">
<p><a href="/WebDemo/home.jsp" style="text-decoration:none; padding-bottom:5px; color:#292931;">Lapcomp.com</a> </p>

</div>
  
</footer>


    </body>


</html>
