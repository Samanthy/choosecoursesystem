<%@ page language="java" pageEncoding="gb2312"%>
<%@include file="common/common.jsp"%>
<html>
<head>
<title>ѧ��ѡ�ι���ϵͳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<frameset rows="60,*,20" frameborder="NO" border="0" framespacing="0" cols="*"> 
  <frame name="top" scrolling="NO" noresize src="common/top.html" >
  <frameset cols="140,*" frameborder="NO" border="0" framespacing="0" rows="*"> 
  	<!-- ��ʾ�˵��� -->
    <frame name="menu" scrolling="NO" noresize src="${menu_jsp }">
    <!-- ��ʾ������ -->
    <frame src="${main_jsp }" name="main">
  </frameset>
  <frame name="bottom" src="common/bottom.html" scrolling="NO" noresize>
</frameset>
<noframes>
<body bgcolor="#FFFFFF" text="#000000">
</body>
</noframes> 
</html>
