<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "util.*" %>
<%@ page import = "java.sql.*" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
Integer age = Integer.parseInt(request.getParameter("age"));



//디비 연결 ->클래스에 있는거 연결
Connection conn = ConnectionPool.get();

String sql = "INSERT INTO saram VALUES(?,?,?)";

PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.setString(2,name);
	pstmt.setInt(3,age);

pstmt.executeUpdate();

%>
</body>
</html>