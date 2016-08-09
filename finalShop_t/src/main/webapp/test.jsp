<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/392/Chart.min.js"></script>


</head>
<body>
	<canvas id="skills"></canvas>
	<script type="text/javascript">
		var pieData = [ {
			value : 25,
			label : 'Java',
			color : '#811BD6'
		}, {
			value : 10,
			label : 'Scala',
			color : '#9CBABA'
		}, {
			value : 30,
			label : 'PHP',
			color : '#D18177'
		}, {
			value : 35,
			label : 'HTML',
			color : '#6AE128'
		} ];
		var context = document.getElementById('skills').getContext('2d');
		var skillsChart = new Chart(context).Pie(pieData);
		//Doughnut Chart Options
		/* var doughnutOptions = {
		 //Boolean - Whether we should show a stroke on each segment
		 segmentShowStroke : true,
		
		 //String - The colour of each segment stroke
		 segmentStrokeColor : "#fff",
		
		 //Number - The width of each segment stroke
		 segmentStrokeWidth : 2,
		
		 //The percentage of the chart that we cut out of the middle.
		 percentageInnerCutout : 50,
		
		 //Boolean - Whether we should animate the chart	
		 animation : true,
		
		 //Number - Amount of animation steps
		 animationSteps : 100,
		
		 //String - Animation easing effect
		 animationEasing : "easeOutBounce",
		
		 //Boolean - Whether we animate the rotation of the Doughnut
		 animateRotate : true,

		 //Boolean - Whether we animate scaling the Doughnut from the centre
		 animateScale : true,
		
		 //Function - Will fire on animation completion.
		 onAnimationComplete : null
		 }

		 //Doughnut Chart Data
		 var doughnutData = [
		 {
		 value: 30,
		 color:"yellow"
		 },
		 {
		 value : 50,
		 color : "#1789D4"
		 },
		 {
		 value : 100,
		 color : "#CB4B16"
		 },
		 {
		 value : 40,
		 color : "#1F8261"
		 },
		 {
		 value : 120,
		 color : "#FFA500"
		 }

		 ]


		 //Get the context of the Doughnut Chart canvas element we want to select
		 var ctx = document.getElementById("doughnutChart").getContext("2d");

		 // Create the Doughnut Chart
		 var mydoughnutChart = new Chart(ctx).Doughnut(doughnutData, doughnutOptions);
		 */
	</script>
</body>
</html>