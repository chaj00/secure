<%@page import="board.dto.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% ArrayList<BoardDTO> deptlist=
			(ArrayList<BoardDTO>)request.getAttribute("list"); 
	  
	%>
	<h1>부서목록조회^^</h1>
	<hr/>
	<table border='1' width='500'>
		<tr bgcolor='skyblue'>
			<th>부서코드</th><th>부서명</th>
			<th>위치</th><th>전화번호</th><th>삭제</th>
		</tr>	
		<%
		 int rows = deptlist.size();
		for (int i = 0; i <rows; i++) {
			BoardDTO board = deptlist.get(i);%>
			<tr>
				<td><%= board.getTitle() %></td>
				<td><%= board.getWriter()%></td>
				<td><%= board.getContent() %></td>
				<td><%= board.getBoardNum() %></td>
				
			</tr>
		<%}%>
	</table>
</body>
</html>






