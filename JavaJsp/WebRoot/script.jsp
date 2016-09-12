<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	errorPage="errorPage.jsp"
	isErrorPage="false"
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Jsp语法</title>
    
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
    <!-- jsp表达式 -->
    <%
    	//变量
    	String name="rose";
    	String value=null;
    	value.charAt(1);
    	int a=10;
    	int b=8;
     %>
    <%=name %>
    <br>
    <%=(a-b) %>
    <hr>
    <%
    	//生成随机数
    	Random ran=new Random();
    	float num=ran.nextFloat();
     %>
    随机小数：<%=num %>
    <hr>
    <%
    	//穿插html
    	for(int i=1;i<7;i++){
     %>
     <h<%=i %>>标题</h<%=i %>>
     <%} %>
     <hr>
     <%
     	for(int i=1;i<=9;i++){
     		for(int j=1;j<=i;j++){
      %>
      <%=i %>*<%=j %>=<%=i*j %>&nbsp
      <%} %>
      <br>
      <%} %>
  </body>
</html>
