<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>SessionStorage Write</title>
<link rel="stylesheet" type="text/css" href="/board/css/created.css" />
<link rel="stylesheet" type="text/css" href="/board/css/style.css" />
<link rel="stylesheet" type="text/css" href="/board/css/quill.snow.css" />
<script src="/board/js/jquery-3.7.1.min.js"></script>
<script src="/board/js/quill.js"></script>
<script type="text/javascript">
	var quill;

	window.onload = function() {
		quill = new Quill('#content', {
			theme : 'snow'
		});
		
		var urlParams = new URL(location.href).searchParams;

		var param = urlParams.get('num');

		if(!this.isNaN(param)){
			var list = JSON.parse(sessionStorage.getItem("list"));
			$('#subject').val(list[parseInt(param)-1].subject);
			$('#name').val(list[parseInt(param)-1].name);
			
			var selection = quill.getSelection(true);
			quill.insertText(selection.index, list[parseInt(param)-1].content);
			
			$('#textByte').text(quill.getLength() + ' byte');
			
			var hitCount = list[parseInt(param)-1].hitCount;
			list[parseInt(param)-1].hitCount = parseInt(hitCount) + 1; 
			sessionStorage.setItem("list", JSON.stringify(list));
		}
	};
	
	function fnList() {
		location.href="list";
	}
	
	function fnSave() {
		var list = JSON.parse(sessionStorage.getItem("list"));
		
		var today = new Date();   
		var year = today.getFullYear(); // 년도
		var month = today.getMonth() + 1;  // 월
		var date = today.getDate();
		
		if(month < 10){
			month = '0' + month;
		}
		
		var data = {num : list.length +1,
				subject : $("#subject").val(),
				content : $('#content').text(),
				name : $("#name").val(),
				created : year+''+month+''+date,
				hitCount : "0"};
		console.log(data);
		
		var urlParams = new URL(location.href).searchParams;
		var param = urlParams.get('num');

		if(!this.isNaN(param)){
			list[parseInt(param)-1].num = param;
			list[parseInt(param)-1].subject = data.subject;
			list[parseInt(param)-1].name = data.name;
			list[parseInt(param)-1].content = data.content;
		}else{
			list.push(data);
		}
		
		sessionStorage.setItem("list", JSON.stringify(list));
		
		alert('저장이 완료되었습니다.');
		
		fnList();
	}
	
	function fnPress() {
		$('#textByte').text(quill.getLength() + ' byte');
		
	}
	
	function fnOnkeyup() {
		$('#textByte').text(quill.getLength() + ' byte');
		
	}
	
	function fnOnkeydown() {
		$('#textByte').text(quill.getLength() + ' byte');
		
	}
</script>
</head>
<body>
	<div id="bbs">
			<div id="bbsCreated">
				<div class="bbsCreated_bottomLine">
					<dl>
						<dt>제&nbsp;&nbsp;&nbsp;&nbsp;목</dt>
						<dd>
							<input type="text" name="subject" id="subject" size="60" maxlength="100"
								class="boxTF" />
						</dd>
					</dl>
				</div>
				<div class="bbsCreated_bottomLine">
					<dl>
						<dt>작성자</dt>
						<dd>
							<input type="text" name="name" id="name" size="35" maxlength="20"
								class="boxTF" />
						</dd>
					</dl>
				</div>
				<div id="content" onkeypress="fnPress();" onkeyup="fnOnkeyup();" onkeydown="fnOnkeydown();"></div>
			</div>
			<div class="textByte">
				<b id="textByte">0 byte</b>
			</div>
			<div id="divBtn">
				<input type="button" value="저  장" class="btn2" onclick="fnSave();" />
				<input type="button" value="취  소" class="btn2" onclick="fnList();" />
			</div>
			</div>
</body>
</html>