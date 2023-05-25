<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("org.mariadb.jdbc.Driver");


	Connection conn = null;
	String host = "jdbc:mariadb://localhost:3306/mingyeong";
	String id = "root";
	String ps = "1234";
	conn = DriverManager.getConnection(host, id, ps);

	
	String sql ="DELETE FROM saram WHERE id='test1'";
	PreparedStatement pstmt = conn.prepareStatement(sql);

	
	ResultSet rs = pstmt.executeQuery();

%>
</body>
</html>