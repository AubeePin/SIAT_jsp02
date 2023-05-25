<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbconnect.jsp" %>
<%
	
	String sql ="DELETE FROM saram WHERE id='test2'";
	PreparedStatement pstmt = conn.prepareStatement(sql);

	
	ResultSet rs = pstmt.executeQuery();

%>
</body>
</html>