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
		// ���� ������ �ε� �� ������ ���̺귯�� ȣ��
		quill = new Quill('#content', {
			theme : 'snow'
		});
		
		//���� ���� �Ķ���� Ȯ��
		var urlParams = new URL(location.href).searchParams;
		var param = urlParams.get('num');

		//���� ���� �Ķ���� ���� Ȯ�� : ������ ȣ�� �� -1 �ϴ� ���� list �����ʹ� 0���� �����Ѵ�
		if(param != null){
			var list = JSON.parse(sessionStorage.getItem("list"));
			$('#subject').val(list[parseInt(param)-1].subject);
			$('#name').val(list[parseInt(param)-1].name);
			
			//var selection = quill.getSelection(true);
			//quill.insertText(selection.index, list[parseInt(param)-1].content);
			
			$('.ql-editor').empty();
			$('.ql-editor').html(list[parseInt(param)-1].content)
			
			//�ۼ��Ǿ��ִ� ������ byte �� Ȯ��
			$('#textByte').text(quill.getLength() + ' byte');
			
			// �� ��ȸ�� ��������
			var hitCount = list[parseInt(param)-1].hitCount;
			list[parseInt(param)-1].hitCount = parseInt(hitCount) + 1; 
			sessionStorage.setItem("list", JSON.stringify(list));
		}
	};
	
	<!-- ����Ʈ �������� �̵� -->
	function fnList() {
		location.href="list";
	}
	
	<!-- �ű� ������ ���� -->
	function fnSave() {
		var list = JSON.parse(sessionStorage.getItem("list"));
		
		var today = new Date();   
		var year = today.getFullYear(); // �⵵
		var month = today.getMonth() + 1;  // ��
		var date = today.getDate();
		
		if(month < 10){ //�ۼ� ���� 10 ���� ���� ��� 0�� �����ش�
			month = '0' + month;
		}
		
		//�ű� ������ ���� �� num ��ȣ ��ü ����Ʈ ������ �� +1
		var data = {num : list.length +1,
				subject : $("#subject").val(),
				content : quill.root.innerHTML,
				name : $("#name").val(),
				created : year+''+month+''+date,
				hitCount : "0"};
		console.log(data);
		
		var urlParams = new URL(location.href).searchParams;
		var param = urlParams.get('num');

		//������ ���� Ȯ�� ���� ���ϰ�� �ش��ȣ ����Ʈ�� �ۼ� ������ ���� �ƴ� ��� �ű� ������ ����
		if(param != null){
			list[parseInt(param)-1].num = param;
			list[parseInt(param)-1].subject = data.subject;
			list[parseInt(param)-1].name = data.name;
			list[parseInt(param)-1].content = data.content;
		}else{
			list.push(data);
		}
		
		sessionStorage.setItem("list", JSON.stringify(list));
		
		alert('������ �Ϸ�Ǿ����ϴ�.');
		
		fnList();
	}
	
	//�Է½� ������ �� üũ
	function fnPress() {
		$('#textByte').text(quill.getLength() + ' byte');
		
	}
	
	//�Է½� ������ �� üũ
	function fnOnkeyup() {
		$('#textByte').text(quill.getLength() + ' byte');
		
	}
	
	//�Է½� ������ �� üũ
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
						<dt>��&nbsp;&nbsp;&nbsp;&nbsp;��</dt>
						<dd>
							<input type="text" name="subject" id="subject" size="60" maxlength="100"
								class="boxTF" />
						</dd>
					</dl>
				</div>
				<div class="bbsCreated_bottomLine">
					<dl>
						<dt>�ۼ���</dt>
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
				<input type="button" value="��  ��" class="btn2" onclick="fnSave();" />
				<input type="button" value="��  ��" class="btn2" onclick="fnList();" />
			</div>
			</div>
</body>
</html>