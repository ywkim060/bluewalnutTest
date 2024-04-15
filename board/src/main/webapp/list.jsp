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
	var currentPage = 10; // pagging 기준 갯수

	window.onload = function() {
		<!--sessionstorage 에 Lits 데이터 존재 여부 확인 후 기초 데이터 저장 -->
		if(sessionStorage.getItem("list") == null) {
			
			var list = [
			{
				num : 1,
				subject : "1번째 이야기 데이터 입니다.",
				content : "1번째 내용 입니다.",
				name : "김태가",
				created : "20240401",
				hitCount : "0"
			}, {
				num : 2,
				subject : "2번째 이야기 데이터 입니다.",
				content : "2번째 내용 입니다.",
				name : "김태나",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 3,
				subject : "3번째 이야기 데이터 입니다.",
				content : "3번째 내용 입니다.",
				name : "김태다",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 4,
				subject : "4번째 이야기 데이터 입니다.",
				content : "4번째 내용 입니다.",
				name : "김태라",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 5,
				subject : "5번째 이야기 데이터 입니다.",
				content : "5번째 내용 입니다.",
				name : "김나마",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 6,
				subject : "6번째 이야기 데이터 입니다.",
				content : "6번째 내용 입니다.",
				name : "김나나",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 7,
				subject : "7번째 이야기 데이터 입니다.",
				content : "7번째 내용 입니다.",
				name : "김나임",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 8,
				subject : "8번째 이야기 데이터 입니다.",
				content : "8번째 내용 입니다.",
				name : "김나수",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 9,
				subject : "9번째 이야기 데이터 입니다.",
				content : "9번째 내용 입니다.",
				name : "김나도",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 10,
				subject : "10번째 이야기 데이터 입니다.",
				content : "10번째 내용 입니다.",
				name : "김나임",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 11,
				subject : "11번째 이야기 데이터 입니다.",
				content : "11번째 내용 입니다.",
				name : "김나한",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 12,
				subject : "12번째 이야기 데이터 입니다.",
				content : "12번째 내용 입니다.",
				name : "김나지",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 13,
				subject : "13번째 이야기 데이터 입니다.",
				content : "13번째 내용 입니다.",
				name : "김나도",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 14,
				subject : "14번째 이야기 데이터 입니다.",
				content : "14번째 내용 입니다.",
				name : "김나한",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 15,
				subject : "15번째 이야기 데이터 입니다.",
				content : "15번째 내용 입니다.",
				name : "김나지",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 16,
				subject : "16번째 이야기 데이터 입니다.",
				content : "16번째 내용 입니다.",
				name : "김나주",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 17,
				subject : "17번째 이야기 데이터 입니다.",
				content : "17번째 내용 입니다.",
				name : "김나호",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 18,
				subject : "18번째 이야기 데이터 입니다.",
				content : "18번째 내용 입니다.",
				name : "김나조",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 19,
				subject : "19번째 이야기 데이터 입니다.",
				content : "19번째 내용 입니다.",
				name : "김나사",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 20,
				subject : "20번째 이야기 데이터 입니다.",
				content : "20번째 내용 입니다.",
				name : "김나바",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 21,
				subject : "21번째 이야기 데이터 입니다.",
				content : "21번째 내용 입니다.",
				name : "김나타",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 22,
				subject : "22번째 이야기 데이터 입니다.",
				content : "22번째 내용 입니다.",
				name : "김나차",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 23,
				subject : "23번째 이야기 데이터 입니다.",
				content : "23번째 내용 입니다.",
				name : "김나파",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 24,
				subject : "24번째 이야기 데이터 입니다.",
				content : "24번째 내용 입니다.",
				name : "김나자",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 25,
				subject : "25번째 이야기 데이터 입니다.",
				content : "25번째 내용 입니다.",
				name : "김나사",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 26,
				subject : "26번째 이야기 데이터 입니다.",
				content : "26번째 내용 입니다.",
				name : "김나호",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 27,
				subject : "27번째 이야기 데이터 입니다.",
				content : "27번째 내용 입니다.",
				name : "김나마",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 28,
				subject : "28번째 이야기 데이터 입니다.",
				content : "28번째 내용 입니다.",
				name : "김나지",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 29,
				subject : "29번째 이야기 데이터 입니다.",
				content : "29번째 내용 입니다.",
				name : "김나훈",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 30,
				subject : "30번째 이야기 데이터 입니다.",
				content : "30번째 내용 입니다.",
				name : "김나동",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 31,
				subject : "31번째 이야기 데이터 입니다.",
				content : "31번째 내용 입니다.",
				name : "김나강",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 32,
				subject : "32번째 이야기 데이터 입니다.",
				content : "32번째 내용 입니다.",
				name : "김나상",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 33,
				subject : "33번째 이야기 데이터 입니다.",
				content : "33번째 내용 입니다.",
				name : "김나당",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 34,
				subject : "34번째 이야기 데이터 입니다.",
				content : "34번째 내용 입니다.",
				name : "김나로",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 35,
				subject : "35번째 이야기 데이터 입니다.",
				content : "35번째 내용 입니다.",
				name : "김나러",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 36,
				subject : "36번째 이야기 데이터 입니다.",
				content : "36번째 내용 입니다.",
				name : "김나더",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 37,
				subject : "37번째 이야기 데이터 입니다.",
				content : "37번째 내용 입니다.",
				name : "김나서",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 38,
				subject : "38번째 이야기 데이터 입니다.",
				content : "38번째 내용 입니다.",
				name : "김나임",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 39,
				subject : "39번째 이야기 데이터 입니다.",
				content : "39번째 내용 입니다.",
				name : "김나돌",
				created : "20240402",
				hitCount : "0"
			}, {
				num : 40,
				subject : "40번째 이야기 데이터 입니다.",
				content : "40번째 내용 입니다.",
				name : "김나주",
				created : "20240402",
				hitCount : "0"
			} ];

			<!-- sessionStorage list 데이터 set -->
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
		var len = $('#serachKey').val(); //그리드 페이지덩 보여 줄 데이터 수 
		
		var endPage = parseInt(num) * parseInt(len); //현재 페이지 * 페이지당 데이터 수
		var startPage = endPage - parseInt(len);  //마지막 데이터 순번 * 페이지당 데이터 수
		
		if(list.length < endPage) { //전체 데이터 수 보다 마지막 데이터 순번이 작은지 확인
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

				if (len - 1 == i) { //페이지당 데이터 수 -1을 하는 이유는 list 데이터 시작 번호 0
					break;
				}
			}
		} else {
			data += "<tr id='listData'><td class='noData' colspan='5'>조회된 데이터가 없습니다.</td></tr>";
		}

		$("#tbBody").empty();
		$("#tbBody").html(data);

		data = "";

	}
	
	<!-- 작성자 이름 마스킹 처리 처음과 마지막 글자만 빼고 중간 데이터 마스킹 처리 -->
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
	
	<!-- 페이지 당 데이터 수 변경 시 발생하는 이벤트 -->
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
			page = Math.ceil(total / len); //페이지 수 계산시 소수점 올림처리를 위한 계산
			
			if(page > currentPage) { //페이지 수가 기준 페이지 수 보다 작을 시 페이지 수 / 기준 페이지
				page = page / currentPage;
			}
			
			if(page < 1){ //전체 페이지 수가 1보다 작을 시 1 페이지 처리
				page = 1;
			}
			var pageNum = 1;
			
			if(num <= page){ //현재 페이지가 pagging과 같거나 작을 경우와 아닌 경우를 나눔
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
	
	<!-- 클릭한 페이지 데이터 로드 -->
	function fnMovePage(text) {
		console.log(text);
		listMapping(text);
		pagingMapping(text);
		
	}
	
	<!-- pagging 이전 페이지 -->
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
	
	<!-- pagging 다음 페이지 -->
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
	
	<!-- 글작성 페이지로 이동 -->
	function fnWrite() {
		location.href="write";
	}
	
	<!-- 글수정 페이지로 이동 : 이동시 데이터 seq 번호 파라미터 전달 -->
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
						<th class="num">순번</th>
						<th class="subject">제목</th>
						<th class="name">작성자</th>
						<th class="created">작성일</th>
						<th class="hitCount">조회수</th>
					</tr>
				</thead>
				<tbody id="tbBody">
					<tr id=listData>
						<td class="noData" colspan="5">조회된 데이터가 없습니다.</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="divBtn">
			<input type="button" id="btnWrite" value="회원 글쓰기"
				onclick="fnWrite();" />
		</div>
		<div class="divPaging">
			<a href="#" class="sib-paging-prev" title="이전 10 페이지 목록으로 이동" onclick="fnPrePage();">
				<span class="sib-ico-set-paging-prev"></span>
			</a>
			<span id="pagingNumberSpan">
				<strong class='page'>1</strong>
			</span>
			<a href="#" class="sib-paging-next" title="다음 10 페이지 목록으로 이동" onclick="fnNextPage();">
				<span class="sib-ico-set-paging-next"></span>
			</a>
		</div>
	</div>
</body>
</html>