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
  conn=DriverManager.getConnection("jdbc:mysql://localhost:8080/user",
   "root","");
  out.write("Connected!");
}
catch(SQLException e) {
  System.out.println("Error!!!!!!" + e);
}
%>
</body>
</html>>