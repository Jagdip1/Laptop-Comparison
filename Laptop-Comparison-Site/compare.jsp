<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compare</title>
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
.comp{
position: absolute;
top: 40%;
left: 50%;
transform:  translate(-50%,-50%);


}
.comp input{
height:46px;
padding:3px 10px;
margin-right:10px;
margin-bottom: 10px;
text-align:left;
color:black;

}
.comp #compared{
color:black;
position:absolute;
right:41.5%;
margin-top:35px;
padding-top:0;
padding-bottom:0;

text-align:center;
}
</style>
<body>
      <div class="icon-bar">

  <a class="active" href="/WebDemo/home.jsp">Home</a>
  <a class="compare" href="/WebDemo/compare.jsp">Compare</a>
  <a class="about" href="">About</a>
   <a class="contact" href="">Contact Us</a>

<div id="logini">   <a href="/WebDemo/register.jsp">Register</a>
   <a href="/WebDemo/login.jsp">Login</a>
</div>






<div class="comp">
<form name="comp" onSubmit="return fn();"   action="compare" >
<input type="text" placeholder="Search Laptop.." name="search1" id="search1">
<input type="text" placeholder="Search Laptop.."  name="search2" id="search2"><br>
<input type="submit" value="Compare" id="compared">

</form>
</div>



</table>
<script>
function fn(){
	var search1=document.comp.search2;
	var search2=document.comp.search1
	;
	var error="";
	if(search1.value==""){
		error+="Search Box 1 : empty\n";
	}
	if(search2.value==""){
		
		error+="Search Box 2 : empty\n";
	}
	if(error!=""){
		window.alert(error);
		return false;
	}
	return true;
}

</script>
</body>
</html>