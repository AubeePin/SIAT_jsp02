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

<!-- Step 3 Connection Object -->


<%
	Connection conn = null;

try{
	//String host = "jdbc:mysql://localhost:3306/"
	String host = "jdbc:mariadb://localhost:3306/mingyeong";
	String id = "root";
	String ps = "1234";//루프의 비번 다르게 입력하면 실패뜸.

	conn = DriverManager.getConnection(host,id,ps);
	//여기에 COnnection맨앞 넣으면 지역변수 바깥은 전역변수
	out.print("연결 객체 생성 성공...<br>");
	}catch(SQLException err){
		out.print("연결 객체 생성 실패...<br>" + err.getMessage());
	}

%>


<!-- Step 4 Statement Object -->
<%

String sql = "SELECT * FROM saram";//saram 테이블 모든 데이터 꺼내오기.

PreparedStatement pstmt = conn.prepareStatement(sql);
out.print("구문 생성 성공...<br>");
%>

</body>
</html>