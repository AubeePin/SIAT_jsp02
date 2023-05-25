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

<!-- Step 5 SQL Activate -->

<%

//pstmt.executeQuery(); // Read 즉 가지고 나오는 데이터가 있을경우 사용
pstmt.executeUpdate(); // Create, Update, Delete 즉 가지고 나오는 데이터가 없는 경우 사용
out.print("테이블 삭제 성공...<br>");
%>

<!-- Step 6 ResultSet Object -->

<!--  
C R U D 중에서 반환데이터가 있는 경우는 R 만이다.
C U D의 경우는 반환되는 데이터가 없다. 따라서 CUD 는 step 6 이 생략된다.
성공했을 경우는 1이 반환되고 실패햇을 경우에는 0이 반환된다.
-->

<!-- Step 7 Connection Close -->

<!--  
자바 버전 8미만까지는 Connection을 닫아주는게 필수 였으나
8이후 부터는 생략 가능 즉 닫지 않아도 문제가 없다. 자동으로 닫아준다.
-->

pstmt.colse();
conn.close();




</body>
</html>