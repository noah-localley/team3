<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../admin_setting.jsp" %>
<html>
<head>

<title> 관리자 페이지 - 정보관리</title>
</head>
<body>
	<div id="wrapper">

	    <!-- Navigation -->
	    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	        <div class="navbar-header">
	            <a class="navbar-brand" href="memberList"> 관리자 </a>
	        </div>
	
	        <ul class="nav navbar-right navbar-top-links">
	        	<li onclick="main">Main</a></li>
	            <li onclick="main"><i class="fa fa-sign-out fa-fw"></i> Logout </a></li>
	        </ul>
	        <!-- /.navbar-top-links -->
	
	        <div class="navbar-default sidebar" role="navigation">
	            <div class="sidebar-nav navbar-collapse">
	                <ul class="nav" id="side-menu">
	                    <li>
                        	<a href="#">회원관리<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="memberList">일반회원목록</a>
                                </li>
                                <li>
                                    <a href="doctorList">의사회원목록</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
	                    <li>
	                        <a href="hospitalList">병원관리</a>
	                    </li>
	                    
	                    <li>
                        	<a href="#">정보관리<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="drugList">약정보목록</a>
                                </li>
                                <li>
                                    <a href="diseaseList">질병정보목록</a>
                                </li>
                                <li>
                                    <a href="exerciseList">운동정보목록</a>
                                </li>
                                <li>
                                    <a href="foodList">음식정보목록</a>
                                </li>
                                <li>
                                    <a href="apreventionList">예방정보목록</a>
                                </li>
                                <li>
                                    <a href="requestList">요구사항목록</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
	                    <li>
	                        <a href="eventRequestList">광고관리</a>
	                    </li>
	                    <li>
	                    	<a href="#">결산<span class="fa arrow"></span></a>
	                    	<ul class="nav nav-second-level">
                                <li>
                                    <a href="pointList">포인트결제내역목록</a>
                                </li>
                                <li>
                                    <a href="cashList">현금결제내역목록</a>
                                </li>
                            </ul>
	                    </li>
	                </ul>
	            </div>
	        </div>
	    </nav>
	
	    <div id="page-wrapper">
	        <div class="row">
	            <div class="col-lg-12">	
	                <h1 class="page-header">정보관리 - 약정보목록</h1>		<!-- 페이지 제목 -->
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
                                    <button type="button" onclick="window.location='drugAdd'">
                                    	추가
                                    </button>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <button type="button" onclick="drugdeleteCheck();">
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
		                                            <th>약번호</th>
		                                            <th>약이름</th>
		                                            <th>제조업체</th>
													<th>약효분류코드</th>
		                                            <th>약효분류</th>
		                                            <th>전문/일반</th>
		                                            <th>허가일자</th>
													<th>등록일자</th>
		                                        </tr>
	                                        </thead>
	                                        <tbody>
		                                        <c:if test="${cnt > 0}">
													<c:forEach var="dto" items="${dtos}">
													<input type="hidden" id="pageNum" name="pageNum" value="${pageNum}">
														<tr>
															<td class="center"><input type="checkbox" name="checkOne" value="${dto.guestNo}"></td>
															<td>${dto.drugCode}</td>
															<td>${dto.drugName}</td>
															<td>${dto.drugCompany}</td>
															<td>${dto.drugGroupCode}</td>
															<td>${dto.drugGroup}</td>
															<td>${dto.pro_usual}</td>
															<td>${dto.admitDate}</td>
															<td>${dto.registDate}</td>
														</tr>
													</c:forEach>
												</c:if>
											</tbody>
										</table>

										<!-- 페이지 컨트롤 -->
										<table align="center">
											<tr>
												<th align="center"><c:if test="${cnt > 0}">
														<!-- 맨끝[◀◀] / 이전[◀] -->
														<c:if test="${startPage > pageBlock}">
															<a href="drugList">[맨앞]</a>
															<a href="drugList?pageNum=${startPage - pageBlock}">[이전]</a>
														</c:if>

														<c:forEach var="i" begin="${startPage}" end="${endPage}">
															<c:if test="${i == currentPage}">
																<span><b>[${i}]</b></span>
															</c:if>
															<c:if test="${i != currentPage}">
																<a href="drugList?pageNum=${i}">[${i}]</a>
															</c:if>
														</c:forEach>

														<!-- 맨끝[▶▶] / 다음▶] -->
														<c:if test="${pageCount > endPage}">
															<a href="drugList?pageNum=${startPage + pageBlock}">[다음]</a>
															<a href="drugList?pageNum=${pageCount}">[맨뒤]</a>
														</c:if>
													</c:if></th>
											</tr>
										</table>

										<table align="center">
											<form action="drugList" class="search_box" method="post">
												<tr>
													<td>
														<select class="input" name="sc">
															<option value="0">약이름</option>
									 						<option value="1">제조업체</option>
									 						<option value="2">등록일자</option>
									 						<option value="3">허가일자</option>
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