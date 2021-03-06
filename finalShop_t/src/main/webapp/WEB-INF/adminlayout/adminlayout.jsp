<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#left {
	width: 25%;
	float: left;
}

#content {
	width: 75%;
	float: right;
}

#footer {
	clear: both;
}
#outer{
	width:1000px;
	margin-left:auto;
	margin-right: auto; 
}
</style>
</head>
<body>
	<div id="outer" >
		<div id="header">
			<tiles:insertAttribute name="header"></tiles:insertAttribute>
		</div>
		<div id="left">
			<tiles:insertAttribute name="left"></tiles:insertAttribute>
		</div>
		<div id="content">
			<tiles:insertAttribute name="content"></tiles:insertAttribute>
		</div>
	</div>
</body>
</html>