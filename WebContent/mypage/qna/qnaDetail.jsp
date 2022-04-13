<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 루트 폴더에 부트스트랩을 참조하는 링크 -->
<link rel="stylesheet" href="resource/css/bootstrap.css">
<title>작성한 게시글</title>
</head>
<body>
	<!-- 게시판 글 보기 양식 영역 시작 -->
	<div style="margin: 13px 13px 13px 13px;" class="container">

		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글 보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">카테고리</td>
						<td colspan="2">${qnaVO.category2}</td>
					</tr>
					<tr>
						<td>답변 방법</td>
						<td colspan="2"> ${qnaVO.contactChannel} </td>
					</tr>
					<tr>
						<td>답변 연락처</td>
						<td colspan="2"> ${qnaVO.contactAddress} </td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td class="" colspan="2"> ${qnaVO.boardDate} </td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="height: 200px; text-align: left;"> ${qnaVO.question} </td>
					</tr>
					<tr>
						<td>답변</td>
						<td colspan="2" style="height: 200px; text-align: left;"> 
						
						<c:choose>
							<c:when test = "${qnaVO.answer == null}" >
								등록된 답변이 없습니다. 조금만 기다려주세요.
							</c:when>
							<c:otherwise>
								${qnaVO.answer}
							</c:otherwise>
						</c:choose>
						 
						
						</td>
					</tr>
				</tbody>
			</table>
			
			<!-- 해당 글의 작성자가 본인이라면 수정과 삭제가 가능하도록 코드 추가 -->
			<!-- 
			<a href="update.jsp?bbsID=" class="btn btn-primary">수정</a>
			-->
			<a href="HmallServlet?command=delete_qna&board_num=${qnaVO.boardNo}" class="btn btn-primary">삭제</a>
			
			<p onClick="self.close();" align="right" class="btn btn-primary">닫기</p>
		</div>
	</div>
	<!-- 게시판 글 보기 양식 영역 끝 -->
	
	<!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>