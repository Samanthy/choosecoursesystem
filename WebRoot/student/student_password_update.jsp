<%@include file="../common/common.jsp" %>
<%@page contentType="text/html;charset=gb2312"%>
<html>
<head>
<title>学生选课管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
		<link href='../css/main.css' rel='stylesheet' type='text/css'/>
		<script type="text/javascript" src="../js/prototype-1.6.0.3.js"></script>
		<script type="text/javascript" src="../js/common.js"></script>
</head>

<body bgcolor="#FFFFFF" text="#666666" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" link="#FF9900" vlink="#006699">
<br/>
<table width="452" border="0" cellspacing="1" cellpadding="3" align="center">
  <tr>
    <td width="444"> 
      <table width="466" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="91"><img src="../image/ba_student.gif" width="91" height="48"/></td>
          <td width="372" valign="bottom"> 
            <table border="0" cellspacing="2" cellpadding="0">
              <tr> 
                <td valign="bottom" width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="21"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="19"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"/></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="444" align="right"> 
      <table width="459" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td width="8"><img src="../image/obj_frame_top1.gif" width="8" height="22"/></td>
          <td width="444" background="../image/obj_frame_top2.gif">&nbsp;</td>
          <td width="8"><img src="../image/obj_frame_top3.gif" width="8" height="22"/></td>
        </tr>
        <tr bgcolor="#6699FF"> 
          <td colspan="3"> 
          <form action="password_update.do" method="post" name="courseForm">
            <table width="450" border="0" cellspacing="1" cellpadding="1">
                <tr> 
                  <td colspan="2" valign="top"><div align="center"><font color="#FFFFFF"><strong>密码修改</strong></font></div></td>
                </tr>
                <tr> 
                  <td width="171" align="right" valign="top"><font color="#FFFFFF">登陆账号：</font></td>
                  <td width="272"> <input name="sid" type="text" size="20" value="${sessionScope.login_student.sid}" readonly="readonly"/> </td>
                </tr>
                <tr> 
                  <td width="171" align="right" valign="top"><font color="#FFFFFF">新密码：</font></td>
                  <td width="272"> <input name="tpassword" type="password" size="20" value="" onblur="mouseOutEvn(this);" class="moveout" onfocus="mouseOverEvn(this);"/> 
                  </td>
                </tr>
                <tr> 
                  <td width="171" align="right" valign="top"><font color="#FFFFFF">确认密码：</font></td>
                  <td width="272"> <input name="tppassword" type="password" size="20" value="" onblur="mouseOutEvn(this);" class="moveout" onfocus="mouseOverEvn(this);"/></td>
                </tr>
                <tr>
                	<td valign="top" colspan="2" align="center">
                	<c:choose>
	                <c:when test="${requestScope.status==1}">
	                  <font color="#00ff00">修改成功！</font>
	                </c:when>
	                <!-- 修改失败 -->
	                <c:when test="${requestScope.status==0}">
	                  <font color="#ff0000">修改失败,两次密码不一致!</font>
	                </c:when>
	                <c:otherwise>
	                <font color="#FF0000"></font>
	                </c:otherwise>
                  </c:choose>
                  </td>
                </tr>
                <tr>
                  <td colspan="2" valign="top" align="center"><font color="#FFFFFF">&nbsp;</font> 
                    <input type="submit" name="Submit" value="修改"/> &nbsp; <input type="reset" name="Submit2" value="重置"/></td>
                </tr>
            </table>
            </form>
          </td>
        </tr>
        <tr> 
          <td width="8" valign="top"><img src="../image/obj_frame_bottom1.gif" width="8" height="18"/></td>
          <td width="444" background="../image/obj_frame_bottom2.gif">&nbsp;</td>
          <td width="8" valign="top"><img src="../image/obj_frame_bottom3.gif" width="8" height="18"/></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="444">&nbsp;</td>
  </tr>
</table>
</body>
</html>