<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/include.jsp" %>
<style>
div:not(.line){border:1px solid black; background: white;
float: left; display: grid;}
div.line{height: 20px; display: grid;}
span{transition-duration: 1s;}
span.green{color:green;}
span.red{color:red;}
select{height: 22px;}
</style>
</head>
<body>
		<div>
		<font>아이디</font><input type="text">
		<span></span>
		</div>
		
		<div>
		<font>비밀번호</font><input type="password">
		<span></span>
		<button class="passLook">비밀번호 보기</button>
		</div>
		
		<div>
		<font>비밀번호 재확인</font><input type="password">
		<span></span>
		<button class="passLook">비밀번호 보기</button>
		</div>
		
		<div class="line"></div>
		
		<div>
		<font>이름</font><input type="text">
		<span></span>
		</div>
		
		<div>
		<font>Email 아이디</font><input type="text">
		<span></span>
		</div>
		
		<div>
		<font>Email 도메인</font>
		<select>
			<option>@gmail.com</option>
			<option>@naver.com</option>
			<option>@daum.net</option>
		</select>
		<span></span>
		<button>직접 입력하기</button>
		</div>
		
		
		<script type="text/javascript">
			var path = '${pageContext.request.contextPath}';
			
			$("div.line").css({width: $(window).width()+'px'});
			
			$('div:not(.line)').css({width: ($(window).width()/3)+'px'});
			
			$("div").on("click", "input.change", function(e) {
				var span = $(this).next();
				var name = $(this).prev().text();
				var value = $(this).val();
				
				function s (text, bool) {
					if(bool) {
						span.attr("class", "green");
						//$("span:eq(0)").animate({color: '#13b940'}, 100);
					}
					else span.attr("class", "red");
					span.text(text);
				}
				
				var reg = /[]/;
				
				if (e.keyCode == 17) {
					s("Ctrl키는 사용 불가능합니다.");
					$(this).val("");
				} else if (!value) {
					s("이메일을 입력하세요.");
				} else if (!value.startWith("@")) {
					s("골뱅이를 입력하세요.");
				}
	    	});
			
			var select = $("select").clone();
			var selChk = false;
			
			$("button:eq(2)").click(function () {
				if(!selChk) {
					selChk = true;					
					$("select").replaceWith($("<input type='text' value='@' class='change'>"));
				} else {
					selChk = false;
					$("input.change").replaceWith(select);
				}
			})
			
			var chk = false;
			$("button.passLook").click(function () {
				if(!chk) {
					$(this).text("비밀번호 안 보기");
					$("input[type='password']").attr("type", "text").addClass("pass");
					chk = true;
				} else {
					$(this).text("비밀번호 보기");
					$("input.pass").attr("type", "password");
					chk = false;
				}
				}
			);
			
			$("input").keyup(function (e) {
				var span = $(this).next();
				var name = $(this).prev().text();
				
				function s (text, bool) {
					if(bool) {
						console.log("凸")
						span.attr("class", "green");
						//$("span:eq(0)").animate({color: '#13b940'}, 100);
					}
					else span.attr("class", "red");
					span.text(text);
				}
				
				if($(this)[0] === $("input:eq(0)")[0]) {
					$.ajax({
						url: path+"/member/main.json",
						data: "id="+$(this).val(),
						success: function (data) {
							if(!data) {
								s("이미 사용 중인 "+name+"입니다.");
								return;
							}
						}
					});
				}
				
				var reg = /[^a-zA-Z0-9]+/;
				var reg2 = /[^ㄱ-ㅎㅏ-ㅣ가-힣]/;
				var p1 = "";
				var p2 = "";
				
				var a = ["아이디", "비밀번호", "비밀번호 재확인"];
				var b = ["이름"];
				for (var i = 0; i < b.length; i++) {
					if (name == b[i]) {
						p1 = "은";
						p2 = "을"
					} else {
						p1 = "는";
						p2 = "를";
					}
				}

				if (e.keyCode == 17) {
					s("Ctrl키는 사용 불가능합니다.");
					$(this).val("");
				} else if(!$(this)) {
					s(name+p2+" 입력하세요.")	;
				} else if($(this).val().indexOf(" ") > -1) {
					s("공백을 입력하지 마세요.");
					$(this).val($(this).val().trim());
					$(this).val($(this).val().replace(/[ ]/, ''));
				} else if (!($(this)[0] === $("input:eq(3)")[0]) && $(this).val().length < 4) {
					s(name+p1+" 4자리 이상 입력하세요.");
				} else if ($(this).val().length > 20) {					
					s(name+p1+" 20자까지만 사용 가능합니다.");
				} else if (!($(this)[0] === $("input:eq(3)")[0]) && reg.test($(this).val())) {					
					s(name+p1+" 숫자와 영문만 입력 가능합니다.");
				} else if($(this)[0] === $("input:eq(3)")[0] && reg2.test($(this).val())) {
					s(name+p1+" 한글만 입력 가능합니다.");
				} else if($(this)[0] === $("input:eq(2)")[0] && $(this).val() != $("input:eq(1)").val()) {
					s("비밀번호와 "+name+"이 다릅니다.")
				} else {
					s("올바른 "+name+"입니다.", true);
				}
				
			}
			);
		</script>
</body>
</html>