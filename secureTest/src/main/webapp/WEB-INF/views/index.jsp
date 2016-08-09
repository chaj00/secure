<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
<script type="text/javascript">
	  $(document).ready(function(){
			$("#sql").on("click",function(){
				$("#sqlform").toggle()
			});
			$("#unionsql").on("click",function(){
				$("#unionsqlform").toggle()
			});
	  });
	 
	
</script>
</head>
<body>
	<h1>시큐어 코딩 테스트</h1>
	<hr />
	
	<ul>
		<li id="sql" style="cursor: text;"><h2>SQL Injection 테스트</h2></li>
	</ul>
	
	<div class="sql" id="sqlform" style="display:none">
		<font color="white" size="5" margin="1"
			style="background-color: green; font-weight: bold">
			&nbsp;&nbsp;&nbsp; SQL 인젝션 &nbsp;&nbsp;&nbsp;</font>
		<hr />
		<form action="/test/test1.do" id="myform1" method="post">
			
			  1. SQL Injection(인증우회)<br />
		      	아이디: <input type="text" name="id" id="id_test1">
		      	  PASSWORD: <input
					type="password" name="pass" id="pass_test1">
					 <input
					type="submit" id="run1" value="실행">  
		             
		 
		</form>

	
	</div>
	<!-- sql union injection -->
	<ul>
		<li id="unionsql" style="cursor: text;"><h2>SQL Injection 테스트 - union sql삽입</h2></li>
	</ul>
	
	<div class="sql" id="unionsqlform" style="display:none">
		<font color="white" size="5" margin="1"
			style="background-color: green; font-weight: bold">
			&nbsp;&nbsp;&nbsp; SQL 인젝션 (Union SQL삽입)&nbsp;&nbsp;&nbsp;</font>
		<hr />
		<form action="/test/test2.do" id="myform1" method="post">
			
			  2. SQL Injection(union sql삽입)<br />
		      	검색: <input type="text" name="search" id="search">
		      	
					 <input
					type="submit" id="run2" value="실행">  
		             
		 
		</form>

	
	</div>
	
	<ul>
		<li id="xss" style="cursor: text;"><h2><a href="/test/insert.do">XSS테스트</a></h2></li>
	</ul>
	<ul>
		<li id="xss" style="cursor: text;"><h2><a href="/test/list.do">결과확인</a></h2></li>
	</ul>
	<div id="result" style="color:red">
		<h3>${result}</h3>
	</div>
</body>
</html>