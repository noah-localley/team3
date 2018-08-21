<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>사이트이름</title>
<link href="/medical/resources/djcss/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="/medical/resources/djcss/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<header>
		<%@ include file="../common/header.jsp"%>
	</header>
	<%@ include file="../common/line.jsp"%>

	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-md-3">
					<%@ include file="../doctor/menuDoctor.jsp"%>
				</div>
				<div class="col-sm-9 col-md-9">
					<div class="well">
						<div class="mail-box">
							<aside class="lg-side">
								<div class="inbox-head">
									<h3>내 답변한 글 목록</h3>
									<small>*답변한 글 제목을 클릭하세요</small>
								</div>
								<div class="inbox-body">
									<div class="mail-option">


										<table class="table table-inbox table-hover">

											<tbody>
												<tr class="unread">
													<td>답변<br>번호
													</td>
													<td>내 답변한 글 제목</td>
													<td class="view-message">작성 날짜</td>
												</tr>
												<c:if test="${cnt>0 }">
													<c:set value="0" var="a"></c:set>
													<c:set value="0" var="b"></c:set>
													<c:forEach var="dto" items="${dtos}">
														<tr>
															<td>${dto.boardno}<c:set var="number"
																	value="${number-1 }"></c:set>
															</td>
															<td>${dto.boardtitle}</td>
															<td><fmt:formatDate type="both" pattern="yyyy-MM-dd"
																	value="${dto.boarddate}" /></td>
														</tr>
														<c:set var="b" value="${b+1 }"></c:set>
														<c:set var="a" value="${a+1 }"></c:set>
													</c:forEach>
												</c:if>
												<!-- 게시글이 없으면 -->
												<c:if test="${cnt==0 }">
													<tr>
														<td colspan="6" align="center">게시글이 없습니다. 글을 작성해
															주세요.!!</td>
													</tr>
												</c:if>
											</tbody>
										</table>
									</div>
								</div>
							</aside>
							<table align="center">
								<tr>
									<th align="center">
											<c:if test="${cnt>0}">
											<!-- 처음[◀◀] / 이전블록 [◀] -->
											<c:if test="${startPage > pageBlock }">
												<a href="reBoard" style="font-size: 15px;">[◀◀]</a>
												<a href="reBoard?pageNum=${startPage-pageBlock}"
													style="font-size: 15px;">[◀]</a>
											</c:if>
											<!-- 페이지 블록 -->
											<c:forEach var="i" begin="${startPage }" end="${endPage }">
												<c:if test="${i == currentPage }">
													<span> <b style="font-size: 20px;">[${i }]</b></span>
												</c:if>
												<c:if test="${i != currentPage }">
													<a href="reBoard?pageNum=${i}" style="font-size: 15px;">[${i }]</a>
												</c:if>
											</c:forEach>
											<!-- 다음블록[▶] / 끝[▶▶] -->
											<c:if test="${pageCnt > endPage }">
												<a href="reBoard?pageNum=${startPage+pageBlock}"
													style="font-size: 15px;">[▶]</a>
												<a href="reBoard?pageNum=${pageCnt}"
													style="font-size: 15px;">[▶▶]</a>
											</c:if>
											</c:if>
									</th>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>


	</section>


	<footer>
		<%@ include file="../common/footer.jsp"%>
	</footer>


</body>
</html>