<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% //if,foreach %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<% //format %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL Test</h1>
	<h3>if 태그 테스트1</h3>
	<c:if test='${ param.num < 10}'>
		<h2>Hello World</h2>
	</c:if>
	
	<h3>forEach 태그 테스트1</h3>
	<c:set var="count" value='${fn:length(list) }'/>
	<ul>
		<c:forEach items='${list }' var='vo' varStatus='status'>
			<li>
				<strong>${count } : ${status.index } : ${status.count }</strong>
				<p>${vo.no }: ${vo.name }</p>
			</li>
		</c:forEach>
	</ul>
	<h3>forEach 태그 테스트2</h3>
	<c:forEach begin='0' end='9' step='1' var='i'>
		${i }
	</c:forEach>
	
</body>
</html>