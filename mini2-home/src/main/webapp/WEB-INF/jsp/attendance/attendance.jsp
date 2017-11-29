<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>
<script
  src="https://code.jquery.com/jquery-3.2.1.js"
  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
  crossorigin="anonymous">
</script>

<style>
	html, body
	{
		width: 100%;
		height: 100%;
	}
	

	.person
	{
		position: absolute;
		background-color:red;
		width: 50px;
		height: 400px;
		top: 100px;
	}
	
	#contentContainer
	{
		margin-left: 300px;
		margin-bottom: 400px;
	}

</style>

</head>
<body>
	
	<div id="baseContainer">
	
		<div id="titleContainer">
			<h1>Attendance</h1>
		</div>
		
		<div id="contentContainer">
			<!-- http://html5around.com/wordpress/tutorials/node-js%EC%97%90%EC%84%9C-%EC%9B%B9-%ED%8E%98%EC%9D%B4%EC%A7%80-%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7-%EB%A7%8C%EB%93%A4%EA%B8%B0/ -->
		</div>
		
	</div>
	
	<script type="text/javascript">
		
		
	
	
		makeBar();
		function makeBar()
		{
			for(var i = 0; i < 14; i++)
			{
				$("#contentContainer").append("<div id=person"+i+" class='person'></div>")
				
				TweenMax.to($("#person"+i), 1, { left: 10 + (i * (60))})
				TweenMax.to($("#person"+i), 1, { css:{scaleY:Math.random(), transformOrigin:"center bottom" } })
				var number = 1 + Math.floor(Math.random() * 100);
				console.log(Math.random())
				
				var colorR = Math.floor((Math.random() * 256));
			    var colorG = Math.floor((Math.random() * 256));
			    var colorB = Math.floor((Math.random() * 256));
			    $("#person"+i).css("background-color", "rgb(" + colorR + "," + colorG + "," + colorB + ")");
			}
		}
	
	</script>
	
</body>
</html>