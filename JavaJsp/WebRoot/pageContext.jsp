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
   		//���Ի�ȡ����8�����ö���
   		response.getWriter().write("�Ƿ���ȣ�"+(out==pageContext.getOut())+"<br/>");
   		response.getWriter().write("�Ƿ���ȣ�"+(session==pageContext.getSession())+"<br/>");
    %>
    <%
    	//��������
    	pageContext.setAttribute("message", "request's message", PageContext.REQUEST_SCOPE);
    	//request.setAttribute("message", "request's message");//�ȼ�
     %>
     <%
     	//��ȡ����
     	String message=(String)pageContext.getAttribute("message");
     	out.write(message);
      %>
      <%=request.getAttribute("message") %><br>
      <%=pageContext.getAttribute("message",PageContext.REQUEST_SCOPE) %>
  </body>
</html>
