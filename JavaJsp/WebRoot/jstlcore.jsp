<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jstlcore.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%--使用标签 --%>
    <%--set标签：保存数据到域中，默认为page域 --%>
    <c:set var="name" value="rose" scope="request">	</c:set>
    ${requestScope.name}
    <hr>
	<%--out标签：获取数据（从域中）当value为空时，使用默认值 --%>
	<c:out value="${name}" default="默认值"></c:out>
	<hr>
	<%--单条件判断 --%>
	<c:if test="${!empty msg}"></c:if>
	<%--choose标签+when标签+otherwirse标签 --%>
	<c:set var="score" value="55"></c:set>
	<c:choose>
		<c:when test="${score>=90 &&score<=100 }">优秀</c:when>
		<c:when test="${score>=80 &&score<=90 }">良好</c:when>
		<c:when test="${score>=60 &&score<=80 }">一般</c:when>
		<c:otherwise>不及格</c:otherwise>
	</c:choose>
	<%--重定向 --%>
	<c:redirect url="http://www.baidu.com"></c:redirect>
  </body>
</html>
