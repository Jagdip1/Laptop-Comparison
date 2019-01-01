<html>
<head>
<title>Login</title>
  </head>
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
  body{

    margin:0;
  }
  body,html{

    height:100%;
  }

  .active {
    background-color:#6495ED;
  }





  .icon-bar a:hover {
     background-color: #000;
  }



#login {
position: absolute;
top: 43%;
left: 50%;
transform: translate(-50%,-50%);


}


#login input{
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
#login #login-btn{
  background:#55acee;
  font-size:18px;
  text-align:center;
  vertical-align:middle;
  line-height: 20px;


}

#login h2{
margin:10px;;
text-align:center;

color: #292931;
font-family: sans-serif;
font-size:37px;



}
.name{
float:right;
margin-top:10px;
margin-right:6px;
font-family:sans-serif;
color:black;

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

</div>
 <div class="name">


 </div> 
 

  <div id="login">
    <h2>Login</h2>
<form name="login" onSubmit="return A();" action="login-1" >

  <input type="text" placeholder="Username" name="Username" id="Username">
  <input type="password" placeholder="Password" name="Password" id="Password" >
  <input type="submit" value="Sign In" id="login-btn" >

  </form>
  </div>
  
  
  <script type="text/javascript">
  
  function A(){
	  
	  var Username=document.login.Username;
	  var Password=document.login.Password;
	 var error="";
	  if(Username.value == ""){
		  
	error+="Please enter your username. \n";
		
	  }
	  if(Password.value == ""){
		error+="Please enter your Password. \n";
		
	  }
	  
	  if(error !=""){
		  window.alert(error);
		  return false;
		  
	  }
	  return true;
  }
  </script>
 <script type="text/javascript">


 
 </script> 
  
 
 

</body>




</html>
