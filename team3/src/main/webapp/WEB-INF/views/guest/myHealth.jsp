<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 사이트이름 </title>
<link href="/medical/resources/djcss/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- <link href="/medical/resources/djcss/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
 --><link href="/medical/resources/djcss/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<header>
   <%@ include file="../common/header.jsp" %>
</header>
<%@ include file="../common/line.jsp"%>

<section>   
	<div class="container">
	    <div class="row">
	        <div class="col-sm-3 col-md-3">
		            <%@ include file="../guest/menuGuest.jsp" %>
		        </div>	
		  		 <div class="col-sm-9 col-md-9">
		           
					<div class="well">
		                <form class="form-horizontal" action=" " method="post"  id="reg_form">
	    	           
	    <fieldset>
	
	
	
	
	      <h1>My Health</h1>
	      	<c:if test="${selectcnt==0  }">
	        <div style="display:table; margin:0 auto;">
				<div>
				
				<button type="button"  class="btn btn-dark-blue"  onclick="window.location='personalAdd'"> MyHealth 등록하기 <span class="glyphicon glyphicon-send"></span></button>
	      </div>
	      </div>
	 	  </c:if>
	    
		
		
		 <c:if test="${selectcnt!=0 }">
	 
					 	 <table class="table table-inbox table-hover">
					 	 
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
                                    <td class="view-message  dont-show">혈액형</td>
                                  <td class="view-message"> 
                                  		  ${vo.bloodtype}	
                                  
                                  </td>                                  
                           
                              </tr>	
                              
                              	 <tr class="unread">
                                    <td class="view-message  dont-show">성별</td>
                                  <td class="view-message"> 
	                             	 ${gender}
                                  </td>                                  
                           
                              </tr>
					
					
					
					 <tr class="unread">
                                    <td class="view-message  dont-show" colspan="2" align="center"> 
									<button type="button"  class="btn btn-dark-blue"  onclick="window.location='personalMof'"> MyHealth 수정하기 <span class="glyphicon glyphicon-send"></span></button>

								</td>
                                    
                                    
                                  
                              </tr>	
					
					
						</table>
					</c:if>

	
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