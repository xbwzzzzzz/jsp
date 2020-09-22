<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>手表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%@page import="java.util.Date" %>
<!-- SimpleDateFormat日期自定义格式转换 -->
<%@page import="java.text.SimpleDateFormat" %>
	<meta http-equiv="refresh" content="1"><!--meta标签中http-equiv设置刷新文档时间，每秒自动刷新一次-->
  </head>
  
  <body >
    <%
Date date=new Date();
SimpleDateFormat sj=new SimpleDateFormat("H:m:s");
//格式化字符串
 String time=sj.format(date);
 	out.print(time);
%>

  </body>
</html>
