<%@include file="../common/common.jsp" %>
<%@page contentType="text/html;charset=gb2312"%>
<html>
<head>
<title>Blue Designing</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<script language="JavaScript">
<!--



function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>
<link href='../css/menu.css' rel='stylesheet' type='text/css'/>
</head>

<body bgcolor="#FFFFFF" text="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" background="../image/bg_menu.gif">
<table width="140" cellspacing="0" cellpadding="0" border="0">
  <tr>
    <td width="136"> <br/>
      <table width="117" border="0" cellspacing="0" cellpadding="1" align="center">
        <tr> 
          <td colspan="2"><font color="#6699FF" size="3"><img src="../image/student_manage.jpg" width="104" height="32"/></font></td>
        </tr>
        <tr> 
          <td colspan="2"><img src="../image/transparent.gif" width="5" height="5"/></td>
        </tr>
        <tr> 
          <td width="11"><img src="../image/p_point01.gif" width="11" height="11"/></td>
          <td width="102" class="menu"><font color="#6699FF" size="2"><a href="student_index.jsp" target="main">&nbsp;首页</a></font></td>
        </tr>
        <tr> 
          <td height="13" colspan="2"><img src="../image/transparent.gif" width="5" height="10"/></td>
        </tr>
        <tr> 
          <td width="11"><img src="../image/p_point01.gif" width="11" height="11"/></td>
          <td width="102" class="menu"><font color="#6699FF" size="2"><a href="../student/now_choose.do" target="main">&nbsp;查看已选课程</a></font></td>
        </tr>
        <tr> 
          <td colspan="2"><img src="../image/transparent.gif" width="5" height="10"/></td>
        </tr>
        <tr> 
          <td width="11"><img src="../image/p_point01.gif" width="11" height="11"/></td>
          <td width="102" class="menu"><font color="#6699FF" size="2"><a href="../student/see_credit.do" target="main">&nbsp;查看学分</a></font></td>
        </tr>
        <tr> 
          <td colspan="2"><img src="../image/transparent.gif" width="5" height="10"/></td>
        </tr>
        <tr> 
          <td width="11"><img src="../image/p_point01.gif" width="11" height="11"/></td>
          <td width="102" class="menu"> 
          <c:if test="${empty applicationScope.choosecourseschedule||!applicationScope.choosecourseschedule.inChooseTime}" var="flag">
            <font color="#BBBBBB" size="3"><strong>&nbsp;选课</strong></font>
          </c:if>
          <c:if test="${!flag}">
            <font color="#6699FF" size="2"><a href="../FirstChooseCourse/choose.do" target="main">&nbsp;选课</a></font>
            </c:if>
            </td>
          
        </tr>
        <tr> 
          <td colspan="2"><img src="../image/transparent.gif" width="5" height="10"/></td>
        </tr>
        <tr> 
          <td width="11"><img src="../image/p_point01.gif" width="11" height="11"/></td>
          <td width="102" class="menu"><font color="#6699FF" size="2"><a href="../student/student_password_update.jsp" target="main">&nbsp;修改密码</a></font></td>
        </tr>
        <tr> 
          <td colspan="2"><img src="../image/transparent.gif" width="5" height="10"/></td>
        </tr>
        <tr> 
          <td width="11"><img src="../image/p_point01.gif" width="11" height="11"/></td>
          <td width="102" class="menu"><font color="#6699FF" size="2"><a href="../logout.do" class="menu" target="parent">&nbsp;退出</a></font></td>
        </tr>
        <tr> 
          <td colspan="2"><img src="../image/transparent.gif" width="5" height="10"/></td>
        </tr>
      </table>
    </td>
    <td width="8" valign="top"><img src="../image/obj_menu_right.gif" width="16" height="90"/></td>
  </tr>
</table>
</body>
</html>
