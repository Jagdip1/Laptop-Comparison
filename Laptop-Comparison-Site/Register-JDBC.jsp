<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.io.*,java.util.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Connection c=null;
try{
Class.forName("com.mysql.cj.jdbc.Driver");
 c =DriverManager.getConnection("jdbc:mysql://localhost:3306/jagdip?userSSL=false","root","");
if(c!=null){out.println("connection established");}
else{out.println("not established");}

Statement st=c.createStatement();
ResultSet r=st.executeQuery("select * from student");
while(r.next()){
	
	out.println("the name is "+r.getString(2)+"  the rool no is "+r.getInt(1));  out.println("<br>");

	
	
}

}
catch(Exception e){out.println(e);}



%>
</body>
</html>