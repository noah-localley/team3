<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../admin_setting.jsp" %>
<html>
<head>
<title> 신고게시판 </title>
</head>
<body>
	<div id="wrapper">

	   <jsp:include page="./admin_nav.jsp"></jsp:include>
	
	    <div id="page-wrapper">
	        <div class="row">
	            <div class="col-lg-12">	
	                <h1 class="page-header">신고게시판</h1>		<!-- 페이지 제목 -->
	            </div>
	            <!-- /.col-lg-12 -->
	        </div>
	        <!-- /.row -->
	        <div class="row">
	            <div class="col-lg-8">
	                <!-- /.panel -->
	                <div class="panel panel-default">
	                    <div class="panel-heading">
	                        <div class="pull-right">
	                            <div class="btn-group">
	                            	<button type="button" onclick="window.location=''">
                                    	추가
                                    </button>
                                    <button type="button" style="margin-left: 10px;">
                                    	삭제
                                    </button>
	                            </div>
	                        </div>
	                    </div>
	                    <!-- /.panel-heading -->
	                    <div class="panel-body">
	                        <div class="row">
	                            <div class="col-lg-4">
	                                <div class="table-responsive">
	                                    <table class="table table-bordered table-hover table-striped">
	                                        <thead>
	                                        <tr>
	                                        	<th>전체선택&nbsp;<input type="checkbox" name="checkAll" id="checkAll"></th>
	                                            <th>글번호</th>			
	                                            <th>분류</th>			
	                                            <th>제목</th>			
	                                            <th>내용</th>			
	                                            <th>작성자</th>			
	                                            <th>등록일</th>		
	                                        </tr>
	                                        </thead>
	                                        <tbody>
	                                        
	                                        <c:if test="${cnt > 0}">
	                                        	<input type="hidden" id="pageNum" name="pageNum" value="${pageNum}">
												<c:forEach var="dto" items="${dtos}">
													<tr>
														<td style="width:10%"><input type="checkbox" name="checkOne" value="${dto.boardno}"></td>
													    <td onclick="?num=${dto.boardno}&pageNum=${pageNum}&number=${number+1}">
													    	${number}
													    	<c:set var="number" value="${number-1}"></c:set>
													    </td>
														<td onclick="?num=${dto.boardno}&pageNum=${pageNum}&number=${number+1}">
															<c:if test="${dto.kind == 3}">
																공지
															</c:if>
															<c:if test="${dto.kind == 4}">
																신고
															</c:if>
														</td>
														<td onclick="?num=${dto.boardno}&pageNum=${pageNum}&number=${number+1}">${dto.boardtitle}</td>
														<td onclick="?num=${dto.boardno}&pageNum=${pageNum}&number=${number+1}">${dto.boardcontent}</td>
														<td onclick="?num=${dto.boardno}&pageNum=${pageNum}&number=${number+1}">${dto.boardwriter}</td>
														<td onclick="?num=${dto.boardno}&pageNum=${pageNum}&number=${number+1}">${dto.boarddate}</td>
		                                        	</tr>
		                                       	</c:forEach>
		                                       </c:if>
	                                        </tbody>
	                                    </table>
	                                    
	                                    
	                                    <!-- 페이지 컨트롤 -->
										<table align="center">
											<tr>
												<th align="center">
													<c:if test="${cnt > 0}">
														<!-- 맨끝[◀◀] / 이전[◀] -->
														<c:if test="${startPage > pageBlock}">
															<a href="">[맨앞]</a>
															<a href="?pageNum=${startPage - pageBlock}">[이전]</a>
														</c:if>
									
														<c:forEach var="i" begin="${startPage}" end="${endPage}">
															<c:if test="${i == currentPage}">
																<span><b>[${i}]</b></span>
															</c:if>
															<c:if test="${i != currentPage}">
																<a href="?pageNum=${i}">[${i}]</a>
															</c:if>
														</c:forEach>
														
														<!-- 맨끝[▶▶] / 다음▶] -->
														<c:if test="${pageCount > endPage}">
															<a href="?pageNum=${startPage + pageBlock}">[다음]</a>
															<a href="?pageNum=${pageCount}">[맨뒤]</a>
														</c:if>
														
														
													</c:if>
												</th>
											</tr>
										</table>
										
	                                    <table align="center">
	                                    	<form action="" class="search_box" method="get">
	                                  			<tr>
	                                       			<td>
		                                        		<select class="input" name="sc" >
									 						<option value=0>회원ID</option>
									 						<option value=1>회원명</option>
									 						<option value=2>병원명</option>
									 						<option value=3>전문분야</option>
									 					</select>
								 					</td>
								 					<td>
								 						<input type="text" id="search" name="search">
								 					</td>
								 					<td>
								 						<input type="submit" value="검색">
								 					</td>
							 					</tr>
						 					</form>
						 				</table>
	                                </div>
	                                <!-- /.table-responsive -->
	                            </div>
	                        </div>
	                        <!-- /.row -->
	                    </div>
	                    <!-- /.panel-body -->
	                </div>
	                <!-- /.panel -->
	            </div>
	            <!-- /.col-lg-4 -->
	        </div>
	        <!-- /.row -->
	    </div>
	    <!-- /#page-wrapper -->
	
	</div>
	<!-- /#wrapper -->
    </body>
</html>