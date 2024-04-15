<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>SessionStorage List</title>
<link rel="stylesheet" type="text/css" href="/board/css/list.css" />
<script src="/board/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	var currentPage = 10; // pagging ���� ����

	window.onload = function() {
		<!--sessionstorage �� Lits ������ ���� ���� Ȯ�� �� ���� ������ ���� -->
		if(sessionStorage.getItem("list") == null) {
			
			var list = [
			{
				num : 1,
				subject : "1��° �̾߱� ������ �Դϴ�.",
				content : "1��° ���� �Դϴ�.",
				name : "���°�",
				created : "20240401",
				hitCount : "0"
			}, {
				num : 2,
				subject : "2��° �̾߱� ������ �Դϴ�.",
				content : "2��° ���� �Դϴ�.",
				name : "���³�",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 3,
				subject : "3��° �̾߱� ������ �Դϴ�.",
				content : "3��° ���� �Դϴ�.",
				name : "���´�",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 4,
				subject : "4��° �̾߱� ������ �Դϴ�.",
				content : "4��° ���� �Դϴ�.",
				name : "���¶�",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 5,
				subject : "5��° �̾߱� ������ �Դϴ�.",
				content : "5��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 6,
				subject : "6��° �̾߱� ������ �Դϴ�.",
				content : "6��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 7,
				subject : "7��° �̾߱� ������ �Դϴ�.",
				content : "7��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 8,
				subject : "8��° �̾߱� ������ �Դϴ�.",
				content : "8��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 9,
				subject : "9��° �̾߱� ������ �Դϴ�.",
				content : "9��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 10,
				subject : "10��° �̾߱� ������ �Դϴ�.",
				content : "10��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 11,
				subject : "11��° �̾߱� ������ �Դϴ�.",
				content : "11��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 12,
				subject : "12��° �̾߱� ������ �Դϴ�.",
				content : "12��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 13,
				subject : "13��° �̾߱� ������ �Դϴ�.",
				content : "13��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 14,
				subject : "14��° �̾߱� ������ �Դϴ�.",
				content : "14��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 15,
				subject : "15��° �̾߱� ������ �Դϴ�.",
				content : "15��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 16,
				subject : "16��° �̾߱� ������ �Դϴ�.",
				content : "16��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 17,
				subject : "17��° �̾߱� ������ �Դϴ�.",
				content : "17��° ���� �Դϴ�.",
				name : "�質ȣ",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 18,
				subject : "18��° �̾߱� ������ �Դϴ�.",
				content : "18��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 19,
				subject : "19��° �̾߱� ������ �Դϴ�.",
				content : "19��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 20,
				subject : "20��° �̾߱� ������ �Դϴ�.",
				content : "20��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 21,
				subject : "21��° �̾߱� ������ �Դϴ�.",
				content : "21��° ���� �Դϴ�.",
				name : "�質Ÿ",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 22,
				subject : "22��° �̾߱� ������ �Դϴ�.",
				content : "22��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 23,
				subject : "23��° �̾߱� ������ �Դϴ�.",
				content : "23��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 24,
				subject : "24��° �̾߱� ������ �Դϴ�.",
				content : "24��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 25,
				subject : "25��° �̾߱� ������ �Դϴ�.",
				content : "25��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 26,
				subject : "26��° �̾߱� ������ �Դϴ�.",
				content : "26��° ���� �Դϴ�.",
				name : "�質ȣ",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 27,
				subject : "27��° �̾߱� ������ �Դϴ�.",
				content : "27��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 28,
				subject : "28��° �̾߱� ������ �Դϴ�.",
				content : "28��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 29,
				subject : "29��° �̾߱� ������ �Դϴ�.",
				content : "29��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 30,
				subject : "30��° �̾߱� ������ �Դϴ�.",
				content : "30��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 31,
				subject : "31��° �̾߱� ������ �Դϴ�.",
				content : "31��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 32,
				subject : "32��° �̾߱� ������ �Դϴ�.",
				content : "32��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 33,
				subject : "33��° �̾߱� ������ �Դϴ�.",
				content : "33��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 34,
				subject : "34��° �̾߱� ������ �Դϴ�.",
				content : "34��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 35,
				subject : "35��° �̾߱� ������ �Դϴ�.",
				content : "35��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 36,
				subject : "36��° �̾߱� ������ �Դϴ�.",
				content : "36��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 37,
				subject : "37��° �̾߱� ������ �Դϴ�.",
				content : "37��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 38,
				subject : "38��° �̾߱� ������ �Դϴ�.",
				content : "38��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 39,
				subject : "39��° �̾߱� ������ �Դϴ�.",
				content : "39��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 40,
				subject : "40��° �̾߱� ������ �Դϴ�.",
				content : "40��° ���� �Դϴ�.",
				name : "�質��",
				created : "20240402",
				hitCount : "0"
			} ];

			<!-- sessionStorage list ������ set -->
			sessionStorage.setItem("list", JSON.stringify(list));
			
			<!-- data mapping / page mapping -->
			listMapping(1);
			pagingMapping(1);
		} else {
			<!-- data mapping / page mapping -->
			listMapping(1);
			pagingMapping(1);
		}
	}

	<!-- grid list data mapping -->
	function listMapping(num) {
		var list = JSON.parse(sessionStorage.getItem("list"));
		var data = "";
		var len = $('#serachKey').val(); //�׸��� �������� ���� �� ������ �� 
		
		var endPage = parseInt(num) * parseInt(len); //���� ������ * �������� ������ ��
		var startPage = endPage - parseInt(len);  //������ ������ ���� * �������� ������ ��
		
		if(list.length < endPage) { //��ü ������ �� ���� ������ ������ ������ ������ Ȯ��
			endPage = list.length;
		}
		
		console.log(startPage);
		console.log(endPage);
		
		if (list.length > 0) {
			for (var i = startPage; i < endPage; i++) {
				data += "<tr><td class='num' onclick='fnReWrite(text);'>" + list[i].num + "</td>";
				data += "<td class='subject' onclick='fnReWrite("+ list[i].num +")'>" + list[i].subject + "</td>";
				data += "<td class='name' onclick='fnReWrite("+ list[i].num +")'>" + masking(list[i].name) + "</td>";
				data += "<td class='created' onclick='fnReWrite("+ list[i].num +")'>" + list[i].created + "</td>";
				data += "<td class='hitCount' onclick='fnReWrite("+ list[i].num +")'>" + list[i].hitCount
						+ "</td></tr>";

				if (len - 1 == i) { //�������� ������ �� -1�� �ϴ� ������ list ������ ���� ��ȣ 0
					break;
				}
			}
		} else {
			data += "<tr id='listData'><td class='noData' colspan='5'>��ȸ�� �����Ͱ� �����ϴ�.</td></tr>";
		}

		$("#tbBody").empty();
		$("#tbBody").html(data);

		data = "";

	}
	
	<!-- �ۼ��� �̸� ����ŷ ó�� ó���� ������ ���ڸ� ���� �߰� ������ ����ŷ ó�� -->
	function masking(name) {
	  if (name.length > 2) {
	    var originName = name.split('');
	    originName.forEach(function (splitName, i) {
	    						if (i === 0 || i === originName.length - 1) return;
	      							originName[i] = '*';
			    			});
		var joinName = originName.join();
		return joinName.replace(/,/g, '');
	  } else {
	    var pattern = /.$/;
	    return name.replace(pattern, '*');
	  }
	}
	
	<!-- ������ �� ������ �� ���� �� �߻��ϴ� �̺�Ʈ -->
	function fnChange() {
		listMapping(1);
		pagingMapping(1)
	}
	
	<!-- pagging mapping -->
	function pagingMapping(num) {
		var list = JSON.parse(sessionStorage.getItem("list"));
		var total = list.length;
		var len = $('#serachKey').val();
		var page = 0;
		var pageData = "";
		
		if(total < len){
			pageData += "<strong>1</strong>";
		}else {
			page = Math.ceil(total / len); //������ �� ���� �Ҽ��� �ø�ó���� ���� ���
			
			if(page > currentPage) { //������ ���� ���� ������ �� ���� ���� �� ������ �� / ���� ������
				page = page / currentPage;
			}
			
			if(page < 1){ //��ü ������ ���� 1���� ���� �� 1 ������ ó��
				page = 1;
			}
			var pageNum = 1;
			
			if(num <= page){ //���� �������� pagging�� ���ų� ���� ���� �ƴ� ��츦 ����
				for (var i = 0; i < page; i++) {
					if(num == pageNum){
						pageData += "<strong class='page'>"+ pageNum +"</strong>";
						pageNum++;
					}else{
						pageData += "<a class='page' href='#' onclick=fnMovePage(text)>"+ pageNum +"</a>";
						pageNum++;
					}
				}
			}else {
				var sPage = page + 1;
				var ePage = sPage + currentPage;
				
				for (var i = sPage; i < ePage; i++) {
					if(num == sPage){
						pageData += "<strong class='page'>"+ sPage +"</strong>";
						sPage++;
					}else{
						pageData += "<a class='page' href='#' onclick=fnMovePage(text)>"+ sPage +"</a>";
						sPage++;
					}
				}
			}
		}
		$("#pagingNumberSpan").empty();
		$("#pagingNumberSpan").html(pageData);
	}
	
	<!-- Ŭ���� ������ ������ �ε� -->
	function fnMovePage(text) {
		console.log(text);
		listMapping(text);
		pagingMapping(text);
		
	}
	
	<!-- pagging ���� ������ -->
	function fnPrePage() {
		var pre = parseInt($('#pagingNumberSpan > strong').text());
		if(pre => 1) {
			pre = pre -1;
		}
		
		if(pre > 0) {
			listMapping(pre);
			pagingMapping(pre);
		}
	}
	
	<!-- pagging ���� ������ -->
	function fnNextPage() {
		var next = parseInt($('#pagingNumberSpan > strong').text());
		if(next => 1) {
			next = next +1;
		}
		
		var list = JSON.parse(sessionStorage.getItem("list"));
		var len = $('#serachKey').val();
		
		if(next > 0 && next <= Math.ceil(list.length / len)) {
			listMapping(next);
			pagingMapping(next);
		}
	}
	
	<!-- ���ۼ� �������� �̵� -->
	function fnWrite() {
		location.href="write";
	}
	
	<!-- �ۼ��� �������� �̵� : �̵��� ������ seq ��ȣ �Ķ���� ���� -->
	function fnReWrite(num) {
		location.href="write?num="+num;
	}
	
</script>
</head>
<body>
	<div class="firstDiv">
		<div id="divSerach">
			<select id="serachKey" onchange="fnChange();">
				<option value="10">10</option>
				<option value="20">20</option>
				<option value="30">30</option>
				<option value="40">40</option>
				<option value="50">50</option>
			</select>
		</div>
		<div>
			<table id="divTable">
				<thead id="tbHead">
					<tr>
						<th class="num">����</th>
						<th class="subject">����</th>
						<th class="name">�ۼ���</th>
						<th class="created">�ۼ���</th>
						<th class="hitCount">��ȸ��</th>
					</tr>
				</thead>
				<tbody id="tbBody">
					<tr id=listData>
						<td class="noData" colspan="5">��ȸ�� �����Ͱ� �����ϴ�.</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="divBtn">
			<input type="button" id="btnWrite" value="ȸ�� �۾���"
				onclick="fnWrite();" />
		</div>
		<div class="divPaging">
			<a href="#" class="sib-paging-prev" title="���� 10 ������ ������� �̵�" onclick="fnPrePage();">
				<span class="sib-ico-set-paging-prev"></span>
			</a>
			<span id="pagingNumberSpan">
				<strong class='page'>1</strong>
			</span>
			<a href="#" class="sib-paging-next" title="���� 10 ������ ������� �̵�" onclick="fnNextPage();">
				<span class="sib-ico-set-paging-next"></span>
			</a>
		</div>
	</div>
</body>
</html>