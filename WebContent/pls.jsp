<%@ page import = "java.sql.*"%>
<html>
<head>
<title>Obtaining a Connection </title>
</head>
<body>
<%
Connection conn=null;
ResultSet result=null;
Statement stmt=null;
ResultSetMetaData rsmd=null;
try {
  Class c=Class.forName("com.mysql.jdbc.Driver");
}
catch(Exception e){
  out.write("Error!!!!!!" + e);
}
try {
  conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1/user","root","");
  out.write("Connected!");
}
catch(SQLException e) {
  System.out.println("Error!" + e);
}
PreparedStatement ps=(PreparedStatement)conn.prepareStatement("SELECT * from news");
result=ps.executeQuery();
while(result.next()){
	String id=result.getString("id");
	String news=result.getString("news");
	out.println("Id "+id+" News "+news+"<hr>");
}

%>
<h2>GEHT DAS?</h2>
</body>
</html>