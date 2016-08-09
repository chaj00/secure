<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
   <link rel="stylesheet"
    href="/shop/resources/common/css/lavalamp_test.css" type="text/css" media="screen">
    <script type="text/javascript" 
    		src="/shop/common/js/jquery-1.2.3.min.js"></script>
    <script type="text/javascript"
     src="/shop/resources/common/js/jquery.easing.min.js"></script>
    <script type="text/javascript"
     src="/shop/resources/common/js/jquery.lavalamp.min.js"></script>
   
</head>
<body>
	<div style="margin-left: auto;margin-right: auto;width: 800px" >
		<h1 
		style=
		"float: left;
		font:30px Georgia Bold,sans-serif;
		text-align: center;color: #fff;text-shadow: 0px 3px 8px #2a2a2a">자바나라 쇼핑몰</h1>

		<div>
			<h5 style="float: right; margin-left: 10px">
			<a href="#">오늘의 날씨</a></h5>
			<h5 style="float: right; margin-left: 10px">
			<a href="#">게시판</a></h5>
			<h5 style="float: right; margin-left: 10px">e-book</h5>
			
					
			<h5 style="float: right; margin-left: 10px">
					님</h5>
			<%if(session.getAttribute("member")!=null){ %>
			<h5 style="float: right; margin-left: 10px">
					<a href="/shop/member/logout.do">로그아웃</a></h5>
			<%}else{ %>
		
			
			<h5 style="float: right; margin-left: 10px">
	<a href="#">회원가입</a></h5>
		
			<h5 style="float: right; margin-left: 10px">
		<a href="/shop/member/login.do">로그인</a></h5>
		<%} %>
		<h5 style="float: right; margin-left: 10px">
		<a href="/shop/admin.do">관리자</a></h5>
		</div>
		<div>
			<ul class="lavaLampNoImage" id="menu">
				<li class="current">
				<a href="/shop/product/list.do">Home</a></li>
				<li>
				<a href="/shop/product/list.do?category=CAT000000001">DRESS</a></li>
				<li><a href="/shop/product/list.do?category=CAT000000002">TOP</a></li>
				<li><a href="/shop/product/list.do?category=CAT000000003">BOTTOM</a></li>
				<li><a href="/shop/product/list.do?category=CAT000000004">OUTER</a></li>
				<li><a href="/shop/product/list.do?category=CAT000000005">ACC</a></li>
				<li><a href="/shop/product/list.do?category=CAT000000006">CARDIGAN</a></li>
			</ul>
		</div>
	</div>
</body>
</html>