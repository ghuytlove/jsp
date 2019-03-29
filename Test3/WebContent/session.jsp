<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		session.setMaxInactiveInterval(10);
		Integer visitCount = null; // session�� ��ü�� ����ؾ� �ϹǷ�
		// int�� �ƴ� Integer ��ü�� ����Կ� ����
		synchronized (session) {
			visitCount = (Integer) session.getAttribute("visitCount");
			if (visitCount == null) {
				visitCount = 0;
			}
			visitCount++;
			session.setAttribute("visitCount", visitCount);
		}
	%>
	Visit Count: <%=visitCount%>
</body>
</html>