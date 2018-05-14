<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <h4>${exception.getMessage()}</h4>
 
 <ul>
	 <c:forEach items="${exception.getStackTrace()}" var="stack"> <!-- 에러 목록을 배열 형태로 가지고 있음. -->
	 	<li>${stack.toString()}</li>
	 </c:forEach>
 </ul>
</body>
</html>