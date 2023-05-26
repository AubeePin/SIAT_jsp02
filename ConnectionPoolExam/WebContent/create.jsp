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

//디비 연결 ->클래스에 있는거 연결
Connection conn = ConnectionPool.get();

String sql = "INSERT INTO saram VALUES('hong','gildong',11)";

PreparedStatement pstmt = conn.prepareStatement(sql);

pstmt.executeUpdate();

%>
</body>
</html>