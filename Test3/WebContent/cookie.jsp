<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 쿠키를 이용해서 방문자 횟수 -->
	<%
		int count = 0;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie c1 : cookies) {
				if ("visit_count".equals(c1.getName()) && c1.getValue() != null) {
					count = Integer.parseInt(c1.getValue()) + 1;
					break;
				}
			}
		}
		Cookie c = new Cookie("visit_count", String.valueOf(count));
		response.addCookie(c);
		c.setMaxAge(0); // 쿠키 유지시간.
		out.print("count:" + count);
	%>
	this is
	<%=count%>th visit.
</body>
</html>