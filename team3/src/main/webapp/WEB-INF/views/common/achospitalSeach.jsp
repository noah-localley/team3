<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<script src="//code.jquery.com/jquery-latest.min.js"></script>
<style>
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList td {display: list-item;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>
<html lang="en">
<title> 사이트 이름 </title>
<body>
	<header>
	<%@ include file="../common/header.jsp" %>
	</header>
	
	<section>

		<div class="container">
		    <div class="row">
		        <div class="col-sm-3 col-md-3">
		            <div class="panel-group" id="accordion">
		                <div class="panel panel-default">
		                    <div class="panel-heading">
		                        <h4 class="panel-title">
		                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">병원검색</a>
		                        </h4>
		                    </div>
		                    <div id="collapseOne" class="panel-collapse collapse">
		                        <div class="panel-body">
		                            <table class="table">
		                                <tr>
		                                    <td>
		                                       <a href="hospitalSeach">병원</a>
		                                    </td>
		                                </tr>
		                                <tr>
		                                    <td>
		                                        <a href="achospitalSeach?state=2">제휴병원</a>
		                                    </td>
		                                </tr>
		                            </table>
		                        </div>
		                    </div>
		                </div>
		                <div class="panel panel-default">
		                    <div class="panel-heading">
		                        <h4 class="panel-title">
		                            <a  href="drugStoreSeach">약국 검색</a>
		                        </h4>
		                    </div>		                  
		                </div>
		            </div>
		        </div>
		        <div class="col-sm-9 col-md-9">
		            <div class="well">		    
					<aside class="lg-side">
                      <div class="inbox-head">
                          <h3>제휴병원 검색</h3>
                          <form action="#" class="pull-right position">
                              <div class="input-append">
                                  <input type="text" class="sr-input" placeholder="검색">
                                  <button class="btn sr-btn" type="button"><i class="fa fa-search"></i></button>                                  
                              </div>
                              <div>
                              </div>
                          </form>
                      </div>
                      <div class="inbox-body">
                         <div class="mail-option">

                               <table class="table table-inbox table-hover">
                                
                            <tbody>                              
                              <c:if test="${cnt>0 }">
								<c:forEach var="dto" items="${dtos}">
									<tr onclick="window.location='hospitalInfo?hospitalno=${dto.hospitalno}&pageNum=${pageNum}&number=${number}'">
										<td>
											${dto.hospitalno}.${dto.hospitalname }
										</td>					
										<td >
											${dto.hospitaladdr}
										</td>
										<td >${dto.hospitalphone}</td>
										<td >
											<input type="button" value="예약" class="btn btn-primary">
										</td>
									</tr>
								</c:forEach>
							</c:if>
							<!-- 게시글이 없으면 -->
							<c:if test="${cnt==0 }">
								<tr>
									<td colspan="6" align="center">
										게시글이 없습니다. 글을 작성해 주세요.!!
									</td>
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
								<a href="boardList">[◀◀]</a>
								<a href="boardList?pageNum=${startPage-pageBlock}">[◀]</a>	
							</c:if>
							<!-- 페이지 블록 -->
							<c:forEach var="i" begin="${startPage }" end="${endPage }">
								<c:if test="${i == currentPage }">
									<span> <b>[${i }]</b></span>
								</c:if>
								<c:if test="${i != currentPage }">
									<a href="boardList?pageNum=${i}">[${i }]</a>
								</c:if>
							</c:forEach>										
							<!-- 다음블록[▶] / 끝[▶▶] -->
							<c:if test="${pageCnt > endPage }">
								<a href="boardList?pageNum=${startPage+pageBlock}">[▶]</a>
								<a href="boardList?pageNum=${pageCnt}">[▶▶]</a>
							</c:if>
						</c:if>
					</th>
				</tr>
			</table>
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