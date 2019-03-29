<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
 ul {list-style:none;}
 li { list-style-type : lower-roman }
</style>
</head>
<body>
<ul>
<%for(int i=0;i<=10;i++) out.write("<li>"+i+"</li>");%>
</ul>
</body>
</html>