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
						<legend class="">�Ʒ� ����� �ۼ����ּ���.</legend>
					</div>
					<div class="control-group">
						<!-- �μ��ڵ� -->
						<label class="control-label" for="orgcode">����</label>
						<div class="controls">
							<input type="text" id="title" name="title"
								placeholder="�μ��ڵ�" class="input-xlarge"
								 required>

						</div>
					</div>

					
					
					<div class="control-group">
						<!-- �μ���-->
						<label class="control-label" for="orgname">�ۼ���</label>
						<div class="controls">
							<input type="text" id="writer" name="writer"
								placeholder="�μ���" class="input-xlarge" minlength="4" required>

						</div>
					</div>



				


					
					<div class="control-group">
						<!-- �μ���ġ-->
						<label class="control-label" for="orgloc">����</label>
						<div class="controls">
							<input type="text" id="content" name="content"
								placeholder="�μ���ġ" class="input-xlarge" minlength="4" >

						</div>
					</div>
					<div class="control-group">
						<!-- Button -->
						<div class="controls">
							<input type="submit" value="�����ϱ�" class="btn btn-success"/>
						</div>
					</div>
				</fieldset>
			</form>

</body>
</html>