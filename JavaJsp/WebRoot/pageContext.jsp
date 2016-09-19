<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pageContext.jsp' starting page</title>
    
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
   <%
   		//可以获取其他8个内置对象
   		response.getWriter().write("是否相等？"+(out==pageContext.getOut())+"<br/>");
   		response.getWriter().write("是否相等？"+(session==pageContext.getSession())+"<br/>");
    %>
    <%
    	//保存数据
    	pageContext.setAttribute("message", "request's message", PageContext.REQUEST_SCOPE);
    	//request.setAttribute("message", "request's message");//等价
     %>
     <%
     	//获取数据
     	String message=(String)pageContext.getAttribute("message");
     	out.write(message);
      %>
      <%=request.getAttribute("message") %><br>
      <%=pageContext.getAttribute("message",PageContext.REQUEST_SCOPE) %>
  </body>
</html>
