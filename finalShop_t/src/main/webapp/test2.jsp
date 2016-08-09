<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		if (typeof jQuery == "undefined") {
			var jQPath = "http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/";
			document
					.write("<script src='",jQPath,"jquery.js' type='text/javascript'><\/script>");
		}
	</script>

	<script type="text/javascript" src="http://www.google.com/jsapi"></script>

	<script type="text/javascript">
		function drawVisualization() {
			var data = new google.visualization.DataTable();
			data.addColumn('string', 'Test Region');
			data.addColumn('number', 'Total');
			data.addRows(3);
			data.setValue(0, 0, 'HHSC');
			data.setValue(0, 1, 334);
			data.setValue(1, 0, 'SIT');
			data.setValue(1, 1, 510);
			data.setValue(2, 0, 'UAT');
			data.setValue(2, 1, 143);
			new google.visualization.PieChart(document
					.getElementById('visualization')).draw(data, {
				title : "Total by Test Region",
				'is3D' : true
			});
		}

		google.setOnLoadCallback(drawVisualization);
	</script>
	<div id="visualization" style="width: 600px; height: 400px;"></div>
</body>
</html>