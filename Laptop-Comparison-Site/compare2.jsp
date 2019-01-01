<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{margin:0;}
body, html{
  height: 100%;
}

* {
  box-sizing: border-box;
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
table, th, td{
font-size:20px;
border: 1px solid;
text-align:center;
border-collapse:collapse;
padding:10px;

margin-top:4%;
margin-left:30%

}

table#ab tr:nth-child(even) {
background-color:#eee;
}

table#ab tr:nth-child(odd) {


}

table#ab th{

background-color:#292931;
color:white;
}
#result{
text-align:center;
font-size:20px;
padding-top:20px;

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
</div></div>
<table id="ab" >
<tr>
<th>Specification</th>
<th><%= session.getAttribute("name") %></th>
<th><%= session.getAttribute("name1") %></th>
</tr>
<tr>
<td>Processor</td>
<td><%= session.getAttribute("processor") %></td>
<td><%= session.getAttribute("processor1") %></td>
</tr>
<tr>
<td>CPU Clock Speed</td>
<td><%= session.getAttribute("procpow") %></td>
<td><%= session.getAttribute("procpow1") %></td>
</tr>
<tr>

<td>Storage</td>
<td><%= session.getAttribute("rom") %></td>
<td><%= session.getAttribute("rom1") %></td>
</tr>
<tr>
<td>Ram</td>
<td><%= session.getAttribute("ram") %></td>
<td><%= session.getAttribute("ram1") %></td>
</tr>

<tr>
<td>Screen</td>
<td><%= session.getAttribute("screen") %></td>
<td><%= session.getAttribute("screen1") %></td>
</tr>
<tr>
<td>Graphics Card</td>
<td><%= session.getAttribute("graphicscard") %></td>
<td><%= session.getAttribute("graphicscard1") %></td>
</tr>

<tr>
<td>Price</td>
<td><%= session.getAttribute("price") %></td>
<td><%= session.getAttribute("price1") %></td>
</tr>


</table>

<%if((session.getAttribute("msg")==null)||(session.getAttribute("msg")=="")){ %>
<% session.invalidate(); %>
          <%}else{if(session.getAttribute("msg")=="price of one laptop much higher than other"){ %>
 <script> window.alert("Result will not be Generated\nComparison is unfair because price of one laptop is much higher");     </script> 
 <%session.invalidate(); %>
 <%}else{ %>  
 <div id="result"> Result : <%= session.getAttribute("msg")%>
 </div>
 <%session.invalidate(); %>
 <%}} %>
</body>
</html>