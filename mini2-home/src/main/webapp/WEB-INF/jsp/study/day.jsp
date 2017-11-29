<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/include/mir.jsp"%>
<%@ include file="/WEB-INF/jsp/include/include.jsp"%>
<c:choose>
	<c:when test="${not empty msg }">
		<script>
			alert('${msg}');
			location.href = '${pageContext.request.contextPath}/study/main.do'
		</script>
	</c:when>
	<c:otherwise>
		<style>
div[contenteditable=true] {
	color: gray;
	overflow: auto;
}
div.title {
	width: 530px;
	height: 50px;
	background: white;
	text-align: center;
	padding-top: 1vh;
}
div.title > div {
    width: 530px;
    height: 22px;
}
div.listBox {
	margin-top: 20px;
}
div.list {
	overflow: hidden;
	padding: 0.5vh;
	background: aliceblue; width: 30vw;
	margin-right: 2.7vw;
	display: inline-block;
	line-height: initial;
}
div.list>div:first-child {
	width: 22vw;
	display: inline-block;
	overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
div.list>div.object {
	font-size: 3vh;
    border-bottom: 1px solid black;
    height: 5vh;
    margin-left: 1vw;
    font-weight: bold;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
div.list button {
	float:right;
}
div.line {
	margin-top: 10px;
	width: 100%;
	height: 2px;
	background: black;
}
div.tt {
	width: 30vw;
	height: 18px;
}
div.ttt {
	overflow: auto;
	height: 377px;
    width: 450px;
}
</style>
		<body>
			<div class="title">
				<div contenteditable="true" class="classTitle">
					${list[0].classTitle }
				</div>
				<img class="plus"
				src="https://cdn4.iconfinder.com/data/icons/keynote-and-powerpoint-icons/256/Plus-128.png"
				width="18" style="float: right; margin: 0px 2px 0px 2px;">
				<img class="sub"
				src="https://maxcdn.icons8.com/Share/icon/color/User_Interface//submit_progress1600.png"
				width="18" style="float: right; margin: 0px 2px 0px 2px;">
			</div>

			<div class="listBox">
				<c:forEach begin="1" end="${list.size() }" var="i">
					<div class="list">
						<div>${list[(i-1)].classTitle }</div>
						<c:if test="${empty user }">
							<button>수정</button>
						</c:if>
						<button class="ii">글쓰기</button>
						<div class="line"></div>
						<c:forEach begin="0" end="9" var="z">
							<div class="object">${list[(i-1)].list[z].title }</div>				
						</c:forEach>
					</div>
				</c:forEach>
			</div>

			<script>
				var path = '${pageContext.request.contextPath}';
				
				function re() {
					var w = $(window).width()/2-$(".title").width()/2;
					$(".title").css({"margin-left": w+'px'});
				}
				
				document.onload = re();
				
				$(window).resize(function () {
					re();
				});

				if ($(".classTitle").text().trim() == "") $(".classTitle").attr("data-bool", "false");
				else {
					$(".classTitle").attr("data-bool", "true");
					$(".classTitle").attr("data-no", "${list[0].classNo}");
				}
				
				var chk = false;
				
				$(".sub").click(function () {
					var obj = $(".classTitle");
					var sb = false;
					
					var url;
					var data = "classRegDate="+${param.day}+"&classTitle="+obj.text();
					
					if (obj.attr("data-bool") == "false") {
						obj.attr("data-bool", "true");
						url = path+"/study/titleInsert.json";
						sb = true;
					} else {
						url = path+"/study/titleUpdate.json";
						data += "&classNo="+obj.attr("data-no");
					}
					
					$.ajax({
						url: url,
						type: "post",
						data: data,
						sussecc: function (data) {
							if (sb) obj.attr("data-no", data);
						}
					});
				});
				
				$(".plus").click(function () {
					if(!chk) {
						chk = true;
						
						var table = $("<div>").addClass("list").append($("<div>").addClass("tt").attr({"contenteditable": "true"}).text("제목을 입력하세요."))
						.append("<button type='button' id='submit'>제출</button><div class='line'></div>");
	
						table.append($("<div>").addClass("ttt").attr({"contenteditable": "true"}).text('내용을 입력하세요.'));
						
						table.css({height: $($(".list")[0]).height()+'px'});
						
						$(".listBox").append(table);
						
						$("#submit").click(function () {
							var title = $(".tt").text();
							$.ajax({
								url: path+"/study/insert.json",
								data: "classRegDate="+${param.day}+"&classTitle="+title+"&contents="+$(".ttt").text()+"&categoryNo=1",
								success: function (data) {
									chk = false;
									var l = $("<div>").addClass("list")
									.append($("<div>").text(title).attr("data-no", data.no));
									
									if (!sessionStorage.getItem("user"))
									l.append($("<button>").text("수정"));
									
									l.append($("<button>").text("글쓰기").addClass("ii"))
									.append($("<div>").addClass("line"))
									.append($("<div>").addClass("object").text("예시").attr("data-no", data.boardNo));
									
									for (var i = 0; i < 9; i++) {
										l.append($("<div>").addClass("object"));
									}
									
									$(".listBox > .list:last-child").remove();
									$(".listBox").append(l);
								}
							});
						});
					} else return;
				});
				
			</script>
		</body>
	</c:otherwise>
</c:choose>
</html>