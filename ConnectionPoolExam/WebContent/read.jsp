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
Connection conn = ConnectionPool.get();

String sql = "SELECT * FROM saram";

PreparedStatement pstmt = conn.prepareStatement(sql);

ResultSet rs = pstmt.executeQuery();

while(rs.next()){
	out.print(rs.getString("id"));
	out.print(rs.getString("name"));
	out.print(rs.getString("age"));
	out.print("<br>");
}

%>


</body>
</html>