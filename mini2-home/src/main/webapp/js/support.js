/**
 * 
 */

var path = "/mini2-home";

$("button").click(function(e){
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

$(document).ready(function() {
	callAjax();
})

function callAjax()
{
	$.ajax({
		url : path+"/supportlink/readSupport.json",
		dataType : "json",
		success : (data) => 
		{
			var members = data; // ECMA 5버젼 이후 방식					
			console.log(data);
		}
	})
}

$(window).on("resize", function(e){
	/*console.log($(this).width())
	console.log($("#listBox").width())*/
	//$("#listBox").top($(this).height() / 2)
	console.log($("#listBox").top);
})









