<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common/setting.jsp" %>
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<body>
 <header>
	<%@ include file="../common/header.jsp" %>
</header> 


<section>
<form action="checkupRequestInputPro" method="post" name="checkRequest">
<!-- 의사 -->
<input type="hidden" value="${vo.doctorspecialism}" name="doctorspecialism">
<input type="hidden" value="${vo.doctorname}" name="doctorname">
<!-- 병원 -->
<input type="hidden" value="${dto.hospitaladdress1}" name="hospitaladdress1">
<input type="hidden" value="${dto.hospitaladdress2}" name="hospitaladdress2">
<input type="hidden" value="${dto.hospitaladdress3}" name="hospitaladdress3">
<input type="hidden" value="${dto.hospitalname}" name="hospitalname">
<input type="hidden" value="${dto.hospitalphone}" name="hospitalphone">
<!-- 환자 -->
<%-- <input type="hidden" value="${dto.hospitaladdress2}" name="guestName">
<input type="hidden" value="${dto.hospitaladdress3}" name="guestJumin">
<input type="hidden" value="${dto.hospitalname}" name="guestSex">
<input type="hidden" value="${dto.hospitalphone}" name="guestAge">
<input type="hidden" value="${dto.hospitalphone}" name="guestPhone">
<input type="hidden" value="${dto.hospitalphone}" name="guestEmail"> --%>
<input type="hidden" value="${checkuplist}" name="checkuplist">



<div class="container">
    <div class="row">
        <div class="col-sm-3 col-md-3">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a href="checkupRequest">검사의뢰 등록</a>
                        </h4>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a href="checkupList">검사의뢰 목록</a>
                        </h4>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a  href="checkupAdd">건강검진 등록</a>
                        </h4>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a href="checkupResultList">건강검진 결과 목록</a>
                        </h4>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a  href="examinationAdd">처방등록</a>
                        </h4>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a href="examinationList">처방결과</a>
                        </h4>
                    </div>
                </div>
            </div>
        </div>	
	  		 <div class="col-sm-9 col-md-9">
	            <div class="well">
					<div>
						<div class="panel panel-primary">
						    <div class="panel-heading">
						        <h3>검사 의뢰서</h3>
						    </div>
						    <table class="table" border="1" >
								<tr>
									<td>진료 의뢰일 : ${checkup_date}</td>
								</tr>
								<tr>
									<td>과명 : 
									<c:if test="${docDto.doctorspecialism==1}">
										내과
									</c:if>
									<c:if test="${docDto.doctorspecialism==2}">
										이비인후과
									</c:if>
									<c:if test="${docDto.doctorspecialism==3}">
										정신의학과
									</c:if>
									<c:if test="${docDto.doctorspecialism==4}">
										외과
									</c:if>
									<c:if test="${docDto.doctorspecialism==5}">
										치과
									</c:if>
									
									
									 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;의사명 : ${vo.doctorname}</td>
								</tr>
						    </table>
						    
						    <table class="table" border="1" >
								<tr>
									<td>성명 : ${gusDto.guestname}</td>
									<td>주민등록번호 : ${gusDto.jumin}</td>
								</tr>
								<tr>
									<td>성별 : <input type="text" name="guestSex"></td>
									<td>나이 : <input type="text" name="guestAge"></td>
								</tr>
								<tr>
									<td>연락처 : ${gusDto.guesttel}</td>
									<td>이메일 주소 : ${gusDto.guestemail}</td>
								</tr>
						    </table>
									    
						    <table class="table" border="1" >
								<tr>
									<td>
										▣ 의뢰과목<br><br>
										<input type="checkbox" name="checkup_kind" value="엑스레이">엑스레이　
										<input type="checkbox" name="checkup_kind" value="혈액">혈액　
										<input type="checkbox" name="checkup_kind" value="소변">소변　 
										<input type="checkbox" name="checkup_kind" value="MRI">MRI　 
										<input type="checkbox" name="checkup_kind" value="내시경">내시경　  
										
									</td>
								</tr>
								<tr>
									<td>
										▣ 진단명<br><br><textarea name="checkup_name" rows="5" style="resize: none; width: 100%;">${checkDto.checkup_name}</textarea>
									</td>
								</tr> 
								<tr>
									<td>
										▣ 병력 및 소견<br><br><textarea name ="checkup_opinion" rows="5"  style="resize: none; width: 100%;">${checkDto.checkup_opinion}</textarea>
									</td>
								</tr>
								<tr>
									<td>
										▣ 의뢰 내용<br><br><textarea name ="checkup_contents" rows="5" style="resize: none; width: 100%;">${checkDto.checkup_contents}</textarea>
									</td>
								</tr>
						    </table>
						    
						    <table class="table" border="1" >
								<tr>
									<td align="center">의뢰 병원 : ${hosDto.hospitalname}</td>
									<td align="center">전화번호 : ${hosDto.hospitalphone}</td>
								</tr>
								<tr>
									<td align="center">주소 : ${hosDto.hospitaladdress1}<br>
															  ${hosDto.hospitaladdress2}<br>
															  ${hosDto.hospitaladdress3}<br>	
									</td>
									<td align="center">의사 :${docDto.doctorname}</td>
								</tr>
						    </table>
						    <table class="table" border="1" >
								<tr>
									<td align="center"> ${hosDto.hospitalname}</td>
								</tr>
						    </table>
						    
						</div>
						<div style="display:table; margin:0 auto;">
							<input type="button" value="건강검진 등록" style="margin-right:5px;"  onclick="window.location='checkupAdd?checkuplist=${checkuplist}'">
							<input type="button" value="목록가기" style="margin-left:5px;" onclick="window.location='checkupList'">
						</div>
					</div>
	            </div>
	        </div>
	    </div>
	</div> 
</form>
</section>
 <footer>
	<%@ include file="../common/footer.jsp" %>
</footer>
</body>
</html>
