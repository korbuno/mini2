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
	
	#baseContainer
	{
		position: absolute;
	}
	
	#contentContainer
	{
		position: relative;
		/* background-color: gray; */
		top: 100px;
	}
	
	.graph
	{
		position: absolute;
		transform: scaleY(0);
		box-shadow: 5px -5px 8px #999999;
	}
	
	#titleContainer
	{
		position: absolute;
	}
	
	.nameField
	{
		
		position: absolute;
		text-shadow: 2px 2px 4px #333333;
		
	}
	
	#tooltip
	{
		position: absolute;
		border: 3px solid gray;
		border-radius: 5px 20px;
		background-color:rgb(125, 245, 216);
		font-size: 16px;
		width : 70px;
		height : 44px;
		transform: scaleY(0);
		pointer-events: none;
	}
	

</style>

</head>
<body>

		<div class="leftter">
			<c:import url="/WEB-INF/jsp/include/left.jsp" />
		</div>
				
		<!-- 컨텐츠창 ---------------------------------------------------->
		<div class="contents container-fluid">
			<div id="baseContainer">
	
		<div id="titleContainer">
			<h1>Attendance</h1>
		</div>
		
		<div id="contentContainer">
			<!-- http://html5around.com/wordpress/tutorials/node-js%EC%97%90%EC%84%9C-%EC%9B%B9-%ED%8E%98%EC%9D%B4%EC%A7%80-%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7-%EB%A7%8C%EB%93%A4%EA%B8%B0/ -->
		</div>
		
		</div>
		<!-- ------------------------------------------------------- -->	
		
		<!-- 푸터 ---------------------------------------------------->
		<div class="footer">
			<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		</div>
		<!-- ----------------------------------------------------- -->
		
	</div>
	
	
	<script type="text/javascript">
	
		"use strict";
		let graphWidth = 0;
		let graphHeight = 400;
		let total = 0;
		let memberList;
		let attendList;
		let totalDay = 0;
		let personClickId = 0;

		 		 
		
		function initSetVars()
		{
			graphWidth += (total * 60);
			 $("#contentContainer").css({width: graphWidth, height: graphHeight});
			 $("#titleContainer").css({left: $("#contentContainer").width() / 2 - $("#titleContainer").width() / 2});
		}
		
		function tooltipComplete(tooltip)
		{
			tooltip.remove();
			//console.log(tooltip)
		}
		
		function makeBar()
		{
			/*
				스케일 조절법
				마우스 엔블레이드
			*/
			for(var i = 0; i < total; i++)
			{
				$("#contentContainer").append("<div id=graph"+i+" class='graph'></div>");
				$("#contentContainer").append("<div id=person"+i+" class='person'></div>")
				$("#person"+i).append("<h4 class='nameField'></h4>")
				$("#graph"+i).attr("data-id", i);
				
				$("#graph"+i).mouseover(function(e){
					
					/* TweenMax.from($(this), .5, { scaleY : .5, ease: Elastic.easeOut.config(1, 0.5) }) */
					if($("#tooltip") != null) $("#tooltip").remove();
					
					$(this).append("<div id='tooltip'></div>")
					
					$("#tooltip").css({top : e.offsetY - $("#tooltip").height() - 10, 
		                   			  left : e.offsetX - $("#tooltip").width() - 10})
					$("#tooltip").text("출석일수 : " + attendList[$(this).data("id")].attend + "일");
					TweenMax.to( $('#tooltip'), .5,{css:{scale:1}, ease:Elastic.easeOut})
					$(this).mousemove(function(e){
						
						TweenMax.to($("#tooltip"), .5, {top : e.offsetY - $("#tooltip").height() - 10, 
			                  						 	left : e.offsetX - $("#tooltip").width() - 10,
			                  						 	ease : Circ.easeout})	
						
					})
				})
				
				$("#graph"+i).mouseout(function(e){
					
					TweenMax.to( $('#tooltip'), .2,{css:{scale:0}, ease:Circ.easeOut, onComplete : tooltipComplete,
					onCompleteParams : [$("#tooltip")]})
					
				})
				
				$("#person"+i).attr("data-id", i);
				$("#person"+i).click(function(){
					personClickId = $(this).data("id");

					

					var today = new Date();
					var dd = today.getDate();
					var mm = today.getMonth()+1; //January is 0!
					var yy = today.getFullYear()
					if(dd<10) {
					    dd='0'+dd
					} 
					if(mm<10) {
					    mm='0'+mm
					} 
					today = yy+'/' + mm+'/'+dd;
					if(attendList[personClickId].regDate == today.substring(2, today.length))
					{
						alert("출석은 하루에 한번만 가능 합니다");
						return;
					}
					
					   $.ajax({
						type : "POST",
						url : "insertAttendance.json",
						data : { attendanceNo : attendList[personClickId].attendanceNo, 
							     attend : attendList[personClickId].attend + 1 },
						dataType : "json",
						success : function(data) {
							attendList = data;
							TweenMax.to($("#graph"+personClickId), .5, { css:{scaleY:data[personClickId].attend / totalDay, 
												transformOrigin:"center bottom"},
												ease: Elastic.easeOut.config(1, 0.5),
												onUpdate : graphUpdate, onUpdateParams:[$("#graph"+personClickId)]})
						}
					});    
				})
				
				$(".graph").css({width: 50, height: graphHeight});
				$("#graph"+i).css({ textAlign : "center", fontSize: "22px", fontWeight: "bold", left: (i * 60)})
				$("#person"+i+"> h4").text(memberList[i].name)
				$("#person"+i+"> h4").css({left : (i * 60), top : graphHeight + 20, opacity : 0});
				//console.log(attendList[i].attend / totalDay * 100)
				//console.log(Math.floor(attendList[i].attend / totalDay * 100))
				TweenMax.to($("#graph"+i), 1, { css:{scaleY:attendList[i].attend / totalDay, 
												transformOrigin:"center bottom"},
												ease: Elastic.easeOut.config(1, 0.5), delay:i / 10,
												onUpdate : graphUpdate, onUpdateParams:[$("#graph"+i)]})
												
				TweenMax.to($("#person"+i+"> h4"), .5, { css:{opacity:1, top: graphHeight - 20},
												ease: Elastic.easeOut.config(1, 0.5), delay:i / 10})												
				var number = 1 + Math.floor(Math.random() * 100);
				
				var colorR = Math.floor((Math.random() * 256));
			    var colorG = Math.floor((Math.random() * 256));
			    var colorB = Math.floor((Math.random() * 256));
			    $("#graph"+i).css("background-color", "rgb(" + colorR + "," + colorG + "," + colorB + ")");

			}			
		}
		
		function graphUpdate(graph)
		{
			graph.text(Math.floor(graph.css('transform').split(',')[3] * 100) + "%");
			
		}
		
		function initAjax()
		{
			$.ajax({
				type : "POST",
				url : "readMember.json",
				dataType : "json",
				success : function(data) {
					memberList = data.member;
					attendList = data.attendance;
					total = memberList.length;
					totalDay = data.totalDay;
					
					initSetVars();
					makeBar();
					
					let x = $(document).width() / 2 - $("#baseContainer").width() / 2;
					let y = $(document).height() / 2 - (($("#baseContainer").height() + 180) / 2);
					$("#baseContainer").css({ left: x, top : y });
				}
			});	
		}


		$(window).on("resize", function(e){
			let x = $(this).width() / 2 - $("#baseContainer").width() / 2;
			let y = $(this).height() / 2 - (($("#baseContainer").height() + 180) / 2);
			TweenMax.to( $("#baseContainer"), .5, { left: x, top : y } );
		})
	
		$(document).ready(function(){
			initAjax();
		})
	
	</script>
	
</body>
</html>