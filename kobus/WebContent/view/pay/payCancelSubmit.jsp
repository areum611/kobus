<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pjName = "/kobus";
	int CancelResult = (int) request.getAttribute("CancelResult");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>
</head>
<body>

	<%
	if (CancelResult == 0) {
%>
	<script type="text/javascript">
		alert('존재하지 않는 예매내역입니다. 새로고침해주세요.');
	</script>
	<%
		response.sendRedirect(pjName + "/pay?cmd=pay-confirm");
		} else {
	%>
	<script type="text/javascript">
		alert('취소완료되었습니다.');
	</script>
	<%
		response.sendRedirect(pjName + "/pay?cmd=calcleList-page");
		}
	%>
	<%=CancelResult%>

</body>
</html>