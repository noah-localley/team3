<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../admin_setting.jsp" %>
<html>
<head>
<title> 관리자 페이지 - 광고관리</title>
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
	                <h1 class="page-header">광고관리</h1>		<!-- 페이지 제목 -->
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
                                    <select class="btn btn-default btn-xs dropdown-toggle">
						 				<option value="#">게시중</option>
						 				<option value="#">승인대기</option>
						 			</select>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <button type="button">
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
		                                        	<th><input type="checkBox"></th>
		                                            <th>광고번호</th>
		                                            <th>의사회원번호</th>
		                                            <th>병원명</th>
		                                            <th>광고명</th>
		                                            <th>신청일</th>
		                                            <th>등록기간</th>
		                                            <th>광고종류</th>
													<th>게시여부</th>
		                                        </tr>
	                                        </thead>
	                                        <tbody>
		                                        <tr>
		                                        	<td><input type="checkBox"></td>
		                                            <td>1</td>
		                                            <td>1818</td>
		                                            <td>kosmo정신의학과</td>
		                                            <td>분노조절장애 무료 강화</td>
		                                            <td>2018-07-18</td>
		                                            <td>2018-07-20 ~ 2018-08-30</td>
		                                            <td>홍보</td>
													<td>게시중</td>
		                                        </tr>
	                                        </tbody>
	                                    </table>
	                                    
	                                    
	                                    <!-- 페이지 컨트롤 -->
										<table align="center">
											<tr align="center">
												<th>[≪]</th>
												<th>[<]</th>
												<th>1</th>
												<th>[>]</th>
												<th>[≫]</th>
											</tr>
										</table>
	                                    <table align="center">
                                  			<tr>
                                       			<td>
	                                        		<select class="input" name="btn btn-default btn-xs dropdown-toggle onchange=">
								 						<option value="#">병원명</option>
								 						<option value="#">광고명</option>
								 						<option value="#">등록기간</option>
								 					</select>
							 					</td>
							 					<td>
							 						<input type="search" id="search">
							 					</td>
							 					<td>
							 						<input type="button" value="검색">
							 					</td>
						 					</tr>
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