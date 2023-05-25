<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- step 1 SQL Packages Import -->
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- step 2 JDBC Driver Load -->
<%
	
	try{
	
	Class.forName("org.mariadb.jdbc.Driver");
//Class.forName("com.mysql.jdbc.Driver"); //MYSQL 사용시
	out.print("드라이버 로그 성공...<br/>");

	}catch(ClassNotFoundException err){
		
		out.print("드라이버 로드 실패...<br/>" + err.getMessage());
	}
%>

</body>
</html>