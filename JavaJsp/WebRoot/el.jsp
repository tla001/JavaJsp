<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'el.jsp' starting page</title>
    
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
	 String name = "rose";  
	 //��������
	 //pageContext.setAttribute("name",name);
	 pageContext.setAttribute("name",name,PageContext.REQUEST_SCOPE); 
	  %>
	  <%=name %>
	  <br/>
	  <%--
	  1)���ĸ����Զ�����
	   --%>
	  EL���ʽ�� ${name }
	  <%--
	  	${name } �ȼ���
	  	    <%=pageContext.findAttribute("name")%>
	   --%>
	   <%--
	    2�� ��ָ�������л�ȡ����
	    --%>
	    EL���ʽ�� ${pageScope.name }
	    <%--
	    	${pageScope.name } �ȼ���
	    	 <%= pageContext.getAttribute("name",PageContext.PAGE_SCOPE)%>
	    	
	     --%>
  </body>
</html>
