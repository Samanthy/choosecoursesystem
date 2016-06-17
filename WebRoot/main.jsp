<%@ page language="java" pageEncoding="gb2312"%>
<%@include file="common/common.jsp"%>
<html>
<head>
<title>学生选课管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<frameset rows="60,*,20" frameborder="NO" border="0" framespacing="0" cols="*"> 
  <frame name="top" scrolling="NO" noresize src="common/top.html" >
  <frameset cols="140,*" frameborder="NO" border="0" framespacing="0" rows="*"> 
  	<!-- 显示菜单栏 -->
    <frame name="menu" scrolling="NO" noresize src="${menu_jsp }">
    <!-- 显示主界面 -->
    <frame src="${main_jsp }" name="main">
  </frameset>
  <frame name="bottom" src="common/bottom.html" scrolling="NO" noresize>
</frameset>
<noframes>
<body bgcolor="#FFFFFF" text="#000000">
</body>
</noframes> 
</html>
