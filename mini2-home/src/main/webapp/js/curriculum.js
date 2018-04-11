/**
 * 
 */
"use strict";

let path = "/mini2-home";
let dataList;
let containerH = 0;
let writeType = "write";
let modifyId = -1;



$(document).ready(function() {
	if(user == "") $("#writeButton").remove();
	containerH = $("#titleContainer").height();
	TweenMax.to($("#contentContainer"), .5, { top : containerH })
	TweenMax.to($("#titleContainer"), .5, { left : $("#baseContainer").width() / 2 - 
                                                   $("#titleContainer").width() / 2 })
                                                   
	$("#submitButton").click(function(e){
		if(writeType == "read") 
		{
			TweenMax.to($("#writePopup"), 1, { top : $(window).height(), ease: Back.easeIn.config(2),
				onComplete: complete});
			return;
		}
		
		if($("input[name='title']").val() == "" && $("textarea[name='contents']").val() == "") 
		{
			alert("내용을 입력해 주세요!");
			return;
		}
		
		$.ajax({
			type : "POST",
			url : (writeType == "write") ? "insertcurriculum.do" : "modifycurriculum.do",
			data : $("#frm").serialize(),
			dataType : "json",
			success : function(data) {
				callAjax(path+"/curriculum/curriculum.json", null);				
			}
		});			
	})
	

	callAjax(path+"/curriculum/curriculum.json", null);
	setTitleAlign();
	writeButtonControll();
	setBackLayerMouseEvent();
	let x = $(this).width() / 2 - $("#baseContainer").width() / 2;
	let y = $(this).height() / 2 - $("#baseContainer").height() / 2; 
	$("#baseContainer").css({top: y, left: x});
	
	
})

function setTitleAlign()
{	
	//let x = 600 / 2 - $("#titleContainer").width() / 2;
	//TweenMax.to( $("#titleContainer"), 1, { left: x, } );
}

function callAjax(url, param)
{
	console.log(writeType)
	if(writeType == "write") $("#contentContainer").empty();
	containerH = $("#titleContainer").height();

	$.ajax({
		url : url,
		dataType : "json",
		data: param,
		success : (data) => 
		{		
			
			
			dataList = data;
			
			
			for(var i = 0; i < dataList.length; i++)
			{
				if(writeType == "write")
				{
					makeList(i, dataList[i]);
				} else 
				{
					if(modifyId == i)
					{
						$("#title" + i).text(dataList[i].title);
					}
				}
			}
			
			$(".noField").addClass("noField")
			$(".title").addClass("title")
			$(".date").addClass("date")
			$(".modify").addClass("modify")
			$(".delete").addClass("delete")
			
			TweenMax.to($("#writePopup"), 1, { top : $(window).height(), ease: Back.easeIn.config(2),
				onComplete: complete});
			

		}
	})
}


function makeList(i, data)
{
	var d = new Date(data.regDate)
	var day = d.getDate();
	var monthIndex = d.getMonth() + 1;
	var year = d.getFullYear();
	
	
	$("#contentContainer").append("<div id=contentContainer"+i+" class='listBox'></div>")
	
	$("div#contentContainer"+i).append("<div id=noField" + i + " class='noField'>" + data.boardNo + "</div>")
							   .append("<div id=title" + i + " class='title'>" + data.title + "</div>")
							   .append("<div id=date" + i + " class='date'>" + year + "/" + monthIndex + "/" + day  + "</div>");
	
	if(user != "")
	{
		$("div#contentContainer"+i).append("<div id=modify" + i + " class='modify'>수정</div>")
				   				   .append("<div id=delete" + i + "  class='delete'>삭제</div>");
		
		$("#delete" + i).attr("data-id", i);
		$("#delete" + i).click(function(){
			writeType = "write";
			
			callAjax(path+"/curriculum/deletecurriculum.json", {boardNo: dataList[$(this).data("id")].boardNo});
		})
		
		$("#modify" + i).attr("data-id", i);
		$("#modify" + i).click(function(){
			$("#frm").append("<input type='hidden' name='boardNo' value='1'>");
			writeType = "modify";
			modifyId = $(this).data("id")
			console.log(modifyId)
			setBackLayerControl("block");
			controlinBlackLayer();
			controlPopup();
			$("input[name='boardNo']").val(dataList[$(this).data("id")].boardNo);
			$("input[name='title']").val(dataList[$(this).data("id")].title);
			$("textarea[name='contents']").val(dataList[$(this).data("id")].contents);
		})
	} else
	{
		$(".title").css({ width: "424px" })
		$(".date").css({ left: "486px" })
	}

	$("#title" + i).attr("data-id", i);
	$("#title" + i).click(function()
	{
		writeType = "read";
		var id = $(this).data("id")
		setBackLayerControl("block");
		controlinBlackLayer();
		controlPopup();
		console.log(dataList[$(this).data("id")].contents)
		/*$("input[name='supportNo']").val(dataList[$(this).data("id")].supportNo);*/
		$("input[name='title']").val(dataList[$(this).data("id")].title);
		$("textarea[name='contents']").val(dataList[$(this).data("id")].contents);
		$("input[name='title']").attr({readonly : ""})
		$("textarea[name='contents']").attr({readonly : ""})
		
		if(user != "")
		{
			$('#writePopup').prepend("<img id='like' src='/mini2-home/image/curriculum/like.png' />")
			$('#writePopup').prepend("<img id='hate' src='/mini2-home/image/curriculum/hate.png' />")
			
			$("#like").mouseover(function(){
				TweenMax.to($(this), .5, {css:{scale : 1.5 }, ease:Elastic.easeOut.config(1, 0.5)})
			})
			
			$("#like").mouseout(function(){
				TweenMax.to($(this), .5, {css:{scale : 1 }, ease:Elastic.easeOut})
			})
			
			$("#hate").mouseover(function(){
				TweenMax.to($(this), .5, {css:{scale : 1.5}, ease:Elastic.easeOut.config(1, 0.5) })
			})
			
			$("#hate").mouseout(function(){
				TweenMax.to($(this), .5, {css:{scale : 1 }, ease:Elastic.easeOut})
			})
		}
		
		
	})

	
	var h = $(".listBox").height() + 10;
	containerH += h;
	$("#baseContainer").height(containerH);
	TweenMax.to( $("#contentContainer"+i), 1, { top : (i * h), scaleX : 1, 
                               ease: Elastic.easeOut.config(1, 1), delay : i / 10 });
	
	 
	if(i == dataList.length - 1)
	{
		$(window).trigger("resize");
	}
}

function controlPopup()
{
	var windowWidth = $( window ).width();
	var windowHeight = $( window ).height();
	
	let x = windowWidth / 2 - $("#writePopup").width() / 2;
	let y = windowHeight / 2 - $("#writePopup").height() / 2;
	
	if(writeType == "") $("#writePopup").css({top: -500, left: x});
	TweenMax.to($("#writePopup"), 1, { left : x, top : y, ease: Elastic.easeOut.config(1, 1)});
}

function controlinBlackLayer()
{
	var width = $(window).width();
    var height = $(window).height();
     
    //화면을 가리는 레이어의 사이즈 조정
    $(".inBlackLayer").width(width);
    $(".inBlackLayer").height(height);
    $(".inBlackLayer").css("opacity", 0);
    TweenMax.to( $(".inBlackLayer"), 1, { opacity : .7 } );
    
}

function writeButtonControll()
{
	
	$("#writeButton").click(function(){
		writeType = "write";
		setBackLayerControl("block");
		controlinBlackLayer();
		controlPopup();
	})
}

function setBackLayerMouseEvent()
{
	 $(".inBlackLayer").click(function(){
		 TweenMax.to($("#writePopup"), 1, { top : $(window).height(), ease: Back.easeIn.config(2),
			 								onComplete: complete});
    })
}
	 
function complete()
{
	writeType = "";
	setBackLayerControl("none")
	fieldEmpty();
	$("input[name='supportNo']").remove();
	$("input[name='title']").removeAttr("readonly")
	$("textarea[name='contents']").removeAttr("readonly")
	$("#like").remove();
	$("#hate").remove();
	$(window).trigger("resize");
	
}

function fieldEmpty()
{
	$("input[name='title']").val("");
	$("textarea[name='contents']").val("");
}

function setBackLayerControl(mode)
{
	$(".backLayer").css("display", mode)
}

$(window).on("resize", function(e){
	var width = $(window).width();
    var height = $(window).height();
	
	let x = width / 2 - $("#baseContainer").width() / 2;
	let y = height / 2 - (($("#baseContainer").height() + 80) / 2);
	TweenMax.to( $("#baseContainer"), 1, { left: x, top : y } );

    //화면을 가리는 레이어의 사이즈 조정
    $(".inBlackLayer").width(width);
    $(".inBlackLayer").height(height);
  
    console.log(writeType)
   if($(".backLayer").css("display") != "none") controlPopup();
})









