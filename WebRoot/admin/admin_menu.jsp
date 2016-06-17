<%@include file="../common/common.jsp"%>
<%@page contentType="text/html;charset=gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Blue Designing</title>
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

<script type="text/javascript" src="../js/prototype-1.6.0.3.js"></script>
<script type="text/javascript">
	function childMenu(m){
		var cm = $(m.id+"_td");
		if(cm.style.display=='none'){
			cm.style.display="";
		}else{
			cm.style.display="none";
		}
	}
</script>
</head>

<body bgcolor="#FFFFFF" text="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" background="../image/bg_menu.gif">
<table width="139" cellspacing="0" cellpadding="0" border="0">
  <tr>
    <td width="123"> <br/>
      <table width="120" border="0" cellspacing="0" cellpadding="1" align="center">
        <tr> 
          <td colspan="2"><img src="../image/admin_manage.jpg" width="104" height="32"/></td>
        </tr>
        <tr> 
          <td colspan="2"><img src="../image/transparent.gif" width="5" height="5"/></td>
        </tr>
        <tr> 
          <td width="17"><img src="../image/p_point01.gif" width="11" height="11"/></td>
          <td width="99" class="menu">&nbsp;<font size="2"><a href="admin_index.jsp" target="main">首页</a></font></td>
        </tr>
        <tr> 
          <td colspan="2"><img src="../image/transparent.gif" width="5" height="10"/></td>
        </tr>
        <tr> 
          <td width="17"><img src="../image/p_point01.gif" width="11" height="11"/></td>
          <td width="99" class="menu"><font size="2"><a href="showTimeSchedule.do" target="main">&nbsp;选课时间设置</a></font></td>
        </tr>
        <tr> 
          <td colspan="2"><img src="../image/transparent.gif" width="5" height="10"/></td>
        </tr>
        <tr> 
          <td width="17"><img src="../image/p_point01.gif" width="11" height="11"/></td>
          <td width="99" class="menu"><font size="2"><a href="javascript:;" id="cmenu" onclick="childMenu(this);">&nbsp;选修课程管理</a></font>
		  </td>
        </tr>
        <tr> 
          <td colspan="2" style="display:none;" id="cmenu_td">
		  		<div>&nbsp;&nbsp;&nbsp;<img src="../image/bg_list.gif" height="15"/></div>
				
            <div class="menu">&nbsp;&nbsp;&nbsp;<img src="../image/bg_a_list.gif" height="15"/><font size="2">&nbsp;<a href="../admin/showCourseadd.do" target="main">添加选修课</a></font></div> 
                <div>&nbsp;&nbsp;&nbsp;<img src="../image/bg_list.gif" height="15"/></div>
				
            <div class="menu">&nbsp;&nbsp;&nbsp;<img src="../image/bg_b_list.gif" height="8"/><font size="2">&nbsp;<a href="../admin/showCourseoption.do" target="main">操作选修课</a></font></div> 
		  </td>
        </tr>
		<tr> 
          <td colspan="2"><img src="../image/transparent.gif" width="5" height="10"/></td>
        </tr>
        <tr> 
          <td width="17"><img src="../image/p_point01.gif" width="11" height="11"/></td>
          <td width="99" class="menu"><font size="2"><a href="password_manage.jsp" target="main">&nbsp;密码管理</a></font></td>
        </tr>
        <tr bordercolor="#FFFFFF"> 
        	<td colspan="2"><img src="../image/transparent.gif" width="5" height="10"/></td>
        </tr>
        <tr> 
          <td width="17"><img src="../image/p_point01.gif" width="11" height="11"/></td>
          <td width="99" bordercolor="#CCCCFF" class="menu"><font size="2"><a href="../logout.do" target="parent">&nbsp;退出</a></font></td>
        </tr>
        <tr> 
          <td colspan="2"><img src="../image/transparent.gif" width="5" height="10"/></td>
        </tr>
      </table>
    </td>
    <td width="16" valign="top"><img src="../image/obj_menu_right.gif" width="16" height="90"/></td>
  </tr>
</table>
</body>
</html>
