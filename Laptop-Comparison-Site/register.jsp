<html>
<style>


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
#logini a{

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


.active {
  background-color:#6495ED;
}





.icon-bar a:hover {
   background-color: #000;
}


body{

  margin:0;
}
body,html{

  height:100%;
}
.registering{
position: absolute;
top: 45%;
left: 50%;
transform:  translate(-50%,-50%);


}

.registering input{

display:block;
width:320px;
height:40px;
padding:10px 20px;
font-family:sans-serif;
color:black;
background:rgba(0, 0, 0, 0.3);
border-radius: 5px;
box-shadow:inset 0px 5px 45px rgba(100,100,100,0.2), 0px 1px 1px rgba(255,255,255,0.2);
margin-bottom: 5px;



}
.registering #Sign-Up-Button{
background:#55acee;
font-size:18px;
text-align:center;
vertical-align:middle;
line-height: 20px;}

.registering h2{

  text-align:center;

  color: #292931;
  font-family: sans-serif;
  font-size:37px;
  margin:0;
}

.registering h3{
  font-size:17px;
  text-align:center;
}

#ab{

position: absolute;
top: 73%;
left: 50%;
transform:  translate(-50%,-50%);
 color: #292931;
 font-family:sans-serif;



}
#abc{
text-align:center}
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



</div>
<div class="registering">
  <h2>Sign up</h2>
  <h3>Please fill this from to create an Account</h3>
<form name="regis" onSubmit="return Ab();"  action="Register-1">

<input type="text" placeholder="Enter Username" name="Username"  id="Username">
<input type="text" placeholder="Enter Email" name="Email" id="Email-Id">
<input type="password" placeholder="Enter Password" name="Password" id="Password" >
<input type="password" placeholder="Re-Enter Password" name="PasswordA" id="Password-Again" >
<input type="submit" value="Submit" id="Sign-Up-Button" >

</form>
</div>
<div class="result-regis">




</div>
<script type="text/javascript">

function Ab(){
	var Username=document.regis.Username;
	var Email=document.regis.Email;
    var Password=document.regis.Password;
    var PasswordA =document.regis.PasswordA;
		 var error="";
		 
		  if(Username.value == ""){
			 error+="Please enter your username. \n"; 
			 
		  }
		  { if(Email.value == ""){
			  
		  error+="Please enter your email address. \n";
			
			
			    }
		  else{
			  var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        	
        	 if(Email.value.match(mailformat)){    Email.focus(); }
        	 else{  window.alert("You have entered Invalid email address");
        	 Email.focus();
        	 }
        	 }
   }
       
		  if(Password.value == ""){
			error+="Please enter your password. \n";
		  }
		  {  if(PasswordA.value == ""){
			error+="Please enter your password again. \n"
		  }
		  else{
			   if(PasswordA.value!=Password.value){
		        	  window.alert("your password does not matched.");
		        	 return false;
		          }  
		  }
		  }
       
          if(error != ""){
        	  window.alert(error);
        	  
        	   return false;
          }
		  return true;
	  }
	  


</script>



<div id="ab">
<%
if ((session.getAttribute("ha") == null) || (session.getAttribute("ha") == "")) {
%>
<br/>

<%} else {
	
	
	
%>
Registration successful for username : <%=session.getAttribute("ha")%><br>
<div id="abc">Now you can login</div>


<%
    }
%>

</div>



</body>


</html>
