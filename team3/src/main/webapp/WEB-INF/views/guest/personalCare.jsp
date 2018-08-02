<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 사이트이름 </title>
<link href="/medical/resources/djcss/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/medical/resources/djcss/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
<link href="/medical/resources/djcss/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>



<header>
   <%@ include file="../common/header.jsp" %>
</header>

<section style="margin-bottom: 100px;">
	<div class="container">
	    <div class="row">
	        <div class="col-sm-3 col-md-3">
	            <%@ include file="../common/menuCare.jsp" %>
	        </div>
  		 	<div class="col-sm-9 col-md-9">

		            <div class="container">
					
					
						  <form class="form-horizontal" action=" " method="post"  id="reg_form">
						    <fieldset>
						    <h1>PersonalCare</h1>
						<c:if test="${selectcnt!=0}">
						
						
						
						 
					 	 <table class="table table-inbox table-hover" style="height: 250px; font-size: 25px;" >
					 	 
					 	 	   <tr class="unread">
                                    <td class="view-message  dont-show">생년월일</td>
                                  <td class="view-message"> 
                                  ${vo.birth1}
						         		<b>년</b> 
						           ${vo.birth2}
						    		       <b>월</b> 	
						           ${vo.birth3}
						             	<b>일</b> 
                                  
                                  </td>                                  
                           
                              </tr>
					 	  <tr class="unread">
                                    <td class="view-message  dont-show">신장</td>
                                  <td class="view-message"> 
                                  	${vo.height}						            	
									<b>cm</b> 
                                  
                                  </td>                                  
                           
                              </tr>
					
					 <tr class="unread">
                                    <td class="view-message  dont-show">체중</td>
                                  <td class="view-message"> 
                                  	${vo.weight}						            	
									<b>kg</b> 
                                  
                                  </td>                                  
                           
                              </tr>
					
					 <tr class="unread">
                                    <td class="view-message  dont-show">나의 신체질량 BMI 지수</td>
                                  <td class="view-message"> 
                                  		  ${bmi}	
                                  
                                  </td>                                  
                           
                              </tr>	
						</table>
						
						
						
						
						    <!-- 추가해도되고안해도되고        <img src="/medical/resources/djcss/img/bmi.jpg" style="width:500px; height:400px;">  -->
						    
						</c:if>
						<div style="display:table; margin:0 auto;">
							<div>
							<c:if test="${selectcnt==0}">
								<button type="button" class="btn btn-warning" onclick="window.location='personalAdd'"> 내 건강정보 등록하기 <span class="glyphicon glyphicon-send"></span></button>
						  		</c:if>
						  			<c:if test="${selectcnt!=0}">
								 <button type="button" class="btn btn-warning" onclick="window.location='personalMof'"> 내 건강정보 수정하기 <span class="glyphicon glyphicon-send"></span></button>
						  		</c:if>
						  		<button type="button" class="btn btn-warning" onclick="window.location='caloryAdd'"> 음식 등록하기 <span class="glyphicon glyphicon-send"></span></button>
							</div>
						 </div>    
						  </fieldset>
						  </form>
						  </div>
						  </div>
	            </div>
	        </div>		        
	
</section>


 <footer>
   <%@ include file="../common/footer.jsp" %>
</footer>
 


</body>
</html>