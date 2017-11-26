<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<link rel="stylesheet" type="text/css" href="/mini2-home/css/support.css" />

<script src="/mini2-home/js/support.js"></script>

</head>
<body>
	<div id="baseContainer">
	
		<div id="titleContainer">
		</div>
		
		<div id="contentContainer">
			<div id="listBox">
				
				<td>ddsdfgsdfgsdfdd</td>
				<td>aaaa</td>
				<td>cccc</td>
			</div>
			<!-- http://html5around.com/wordpress/tutorials/node-js%EC%97%90%EC%84%9C-%EC%9B%B9-%ED%8E%98%EC%9D%B4%EC%A7%80-%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7-%EB%A7%8C%EB%93%A4%EA%B8%B0/ -->
		
		</div>
		
	</div>

	<h1>CURRICULUM</h1>
	<form id="frm">
		타이틀 : <input type="text" name="title">
		사이트 : <input type="text" name="site">
		<button id="submitButton" type="button">버튼</button>
	</form>
	
	<script type="text/javascript">
		
	
		$("#submitButton").click(function(e){
			console.log("ddd")
			$.ajax({
				type : "POST",
				url : "insertSupport.do",
				data : $("#frm").serialize(),
				dataType : "json",
				success : function(data) {
					callAjax();
					$("input").val("")
				}
			});			
		})
	</script>

</body>
</html>























