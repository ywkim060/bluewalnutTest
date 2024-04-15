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
		// 최초 페이지 로드 시 에디터 라이브러리 호출
		quill = new Quill('#content', {
			theme : 'snow'
		});
		
		//전달 받은 파라미터 확인
		var urlParams = new URL(location.href).searchParams;
		var param = urlParams.get('num');

		//전달 받은 파라미터 여부 확인 : 데이터 호출 시 -1 하는 이유 list 데이터는 0부터 시작한다
		if(param != null){
			var list = JSON.parse(sessionStorage.getItem("list"));
			$('#subject').val(list[parseInt(param)-1].subject);
			$('#name').val(list[parseInt(param)-1].name);
			
			//var selection = quill.getSelection(true);
			//quill.insertText(selection.index, list[parseInt(param)-1].content);
			
			$('.ql-editor').empty();
			$('.ql-editor').html(list[parseInt(param)-1].content)
			
			//작성되어있는 데이터 byte 수 확인
			$('#textByte').text(quill.getLength() + ' byte');
			
			// 글 조회수 업데이터
			var hitCount = list[parseInt(param)-1].hitCount;
			list[parseInt(param)-1].hitCount = parseInt(hitCount) + 1; 
			sessionStorage.setItem("list", JSON.stringify(list));
		}
	};
	
	<!-- 리스트 페이지로 이동 -->
	function fnList() {
		location.href="list";
	}
	
	<!-- 신규 데이터 저장 -->
	function fnSave() {
		var list = JSON.parse(sessionStorage.getItem("list"));
		
		var today = new Date();   
		var year = today.getFullYear(); // 년도
		var month = today.getMonth() + 1;  // 월
		var date = today.getDate();
		
		if(month < 10){ //작성 월이 10 보다 작을 경우 0을 합쳐준다
			month = '0' + month;
		}
		
		//신규 데이터 저장 시 num 번호 전체 리스트 데이터 수 +1
		var data = {num : list.length +1,
				subject : $("#subject").val(),
				content : quill.root.innerHTML,
				name : $("#name").val(),
				created : year+''+month+''+date,
				hitCount : "0"};
		console.log(data);
		
		var urlParams = new URL(location.href).searchParams;
		var param = urlParams.get('num');

		//수정글 여부 확인 수정 글일경우 해당번호 리스트에 작성 데이터 저장 아닐 경우 신규 데이터 인입
		if(param != null){
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
	
	//입력시 데이터 수 체크
	function fnPress() {
		$('#textByte').text(quill.getLength() + ' byte');
		
	}
	
	//입력시 데이터 수 체크
	function fnOnkeyup() {
		$('#textByte').text(quill.getLength() + ' byte');
		
	}
	
	//입력시 데이터 수 체크
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