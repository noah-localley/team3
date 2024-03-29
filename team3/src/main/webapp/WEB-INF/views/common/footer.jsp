<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<footer class="footer-bs">
        <div class="row" style="margin: 0;">
        	<div class="col-md-6 footer-brand animated fadeInLeft" style="padding-bottom: 0px;">
	<h2>회사소개</h2>
                <p style="font-size: 18px; font-family: 'Nanum Gothic', sans-serif;">
		           “메디클립”은
				  병원제휴프로모션을 전문적으로 서비스하는 회사로서 <br>
				국내 중소병원과 고객에게 통합의료정보시스템을 공급하고 있습니다<c:if test="${sessionScope.memberState == null }">
										                	<a onclick="window.open('adminLogin','로그인창','width=450px,height=420px,screenX=700px,screenY=400px');" style="font-size: 18px; margin-left: -5px;">.</a>
										                </c:if>
										                <c:if test="${sessionScope.memberState == 0 }">
										                	<a onclick="window.open('adminLogin','로그인창','width=450px,height=420px,screenX=700px,screenY=400px');" style="font-size: 18px; margin-left: -5px;">.</a>
										                </c:if>
                </p>
            </div>
        	<div class="col-md-6 footer-ns animated fadeInRight" style="padding-bottom: 0px;">
            	<h2>고객센터 C/S Center</h2>
            	
                <p style="font-size: 17px; font-family: 'Nanum Gothic', sans-serif;">
전화 : 02.3446.3775<br>
팩스 : 02.3446.0000
이메일 : MediClip@naver.com<br>
카카오톡 ID : MediClip
오전 9시부터 오후 6시까지 상담가능합니다.<br>
근무시간 : 월 ~ 금 AM 9:00 ~ PM 7:00<br>
점심시간 : PM12 :00 ~ PM 1 : 00
고객센터 : AM 10: 00 ~ PM6 : 00
				</p>
               
            </div>
        </div>
    </footer>


<!-- Bootstrap core JavaScript -->
<script src="/medical/resources/css/vendor/jquery/jquery.min.js"></script>
<script src="/medical/resources/css/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="/medical/resources/css/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="/medical/resources/css/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

<!-- Contact Form JavaScript -->
<script src="/medical/resources/css/js/jqBootstrapValidation.js"></script>
<script src="/medical/resources/css/js/contact_me.js"></script>

<!-- Custom scripts for this template -->

<script src="/medical/resources/css/js/freelancer.min.js"></script>
<!-- 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
 -->
<script src="/medical/resources/css/js/cbpHorizontalMenu.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	  //Set the carousel options
	  $('#carousel').carousel({
	    pause: true,
	    interval: 4000,
	  });
	});
</script>

<script type="text/javascript">
!function($, window) {
	Foo = {};
	Foo.Bar = function(){};
	SMC = {};
	window.SMC = SMC;

SMC.Quick = {
		 obj: $('.quick-navigation')
		,open_expand: function() {
			this.obj.removeClass('quick-closed');
		}
		,close_expand: function() {
			this.obj.addClass('quick-closed');
		}
		,toggle_expand: function() {
			this.obj.toggleClass('quick-closed')
		}
		,init: function() {
			var that = this;

			this.obj.find('.quick-menu-toggle').on('click', function() {

				that.toggle_expand();
			});
		}
	}
}

</script>

</html>