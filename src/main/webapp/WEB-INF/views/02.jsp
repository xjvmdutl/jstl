<%@page import="controller.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	UserVo vo0 = new UserVo();
	vo0.setNo(0L);
	vo0.setName("김준호0");
	pageContext.setAttribute("vo", vo0);
	//변수로 선언한거에 접근하기 위해서는 <%= 를 써야하고,
	//pageContext를 접근하기 위해서는 page에 저장해야한다.
	
%>
<body>
	<h1>Scope Test</h1>
	<p>
		찾는 순서는 page scope &gt; request scope &gt; session scope &gt; application scope
	</p>
	${vo.no }<br>
	${vo.name }<br>
	<h3>가장 작은범위 scope(jsp페이지 안에서만 사용)</h3>
	<h3>page scope</h3>
	${pageScope.vo.no }
	${pageScope.vo.name }
	
	<h3>request scope</h3>
	${requestScope.vo.no }<br>
	${requestScope.vo.name }<br>
	<h3>session scope</h3>
	${sessionScope.vo.no }<br>
	${sessionScope.vo.name }<br>
	<h3>application scope</h3>
	${applicationScope.vo.no }<br>
	${applicationScope.vo.name }<br>
	
</body>
</html>