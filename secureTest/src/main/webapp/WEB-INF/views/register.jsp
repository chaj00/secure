<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>
			<form class="form-horizontal" 
				action="/test/insert.do" method="POST">
				<fieldset>
					<div id="legend">
						<legend class="">아래 양식을 작성해주세요.</legend>
					</div>
					<div class="control-group">
						<!-- 부서코드 -->
						<label class="control-label" for="orgcode">제목</label>
						<div class="controls">
							<input type="text" id="title" name="title"
								placeholder="부서코드" class="input-xlarge"
								 required>

						</div>
					</div>

					
					
					<div class="control-group">
						<!-- 부서명-->
						<label class="control-label" for="orgname">작성자</label>
						<div class="controls">
							<input type="text" id="writer" name="writer"
								placeholder="부서명" class="input-xlarge" minlength="4" required>

						</div>
					</div>



				


					
					<div class="control-group">
						<!-- 부서위치-->
						<label class="control-label" for="orgloc">내용</label>
						<div class="controls">
							<input type="text" id="content" name="content"
								placeholder="부서위치" class="input-xlarge" minlength="4" >

						</div>
					</div>
					<div class="control-group">
						<!-- Button -->
						<div class="controls">
							<input type="submit" value="가입하기" class="btn btn-success"/>
						</div>
					</div>
				</fieldset>
			</form>

</body>
</html>