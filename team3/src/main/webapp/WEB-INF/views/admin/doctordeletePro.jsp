<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../admin_setting.jsp" %>
<html>
<body>
	<c:if test="${deleteCnt == 0}">
		<script type="text/javascript">
			errorAlert("삭제할 회원을 선택하세요.");
		</script>
	</c:if>


	<c:if test="${deleteCnt != 0}">
	
		<c:if test="${pageDivision == 'per'}">
			<script type="text/javascript">
				window.location="doctorpermissionList";
			</script>
		</c:if>
		
		
		<c:if test="${pageDivision == 'sec'}">
			<script type="text/javascript">
				window.location="doctorsecessionList";	
			</script>
		</c:if>
		
	</c:if>
</body>
</html>