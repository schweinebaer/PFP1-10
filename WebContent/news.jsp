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
    System.out.println("Loading driver...");
    Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Driver loaded!");
} catch(Exception e){
	
};


String url = "jdbc:mysql://localhost:8080/user";
String username = "root";
String password = "";
Connection connection = null;
try {
    System.out.println("Connecting database...");
    connection = DriverManager.getConnection(url, username, password);
    System.out.println("Database connected!");
} catch (Exception e) {
    
} finally {
    System.out.println("Closing the connection.");
    if (connection != null) try { connection.close(); } catch (SQLException ignore) {}
};
%>




</body>
</html>