<%@include file="../common/common.jsp"%>
<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>学生选课管理系统</title>
</head>

<body bgcolor="#FFFFFF" text="#666666" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" link="#FF9900" vlink="#006699">
<br>
<table width="752" border="0" cellspacing="1" cellpadding="3" align="center">
  <tr>
    <td width="744"> 
      <table width="766" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="91"><img src="../image/ba_admin.gif" width="91" height="48"></td>
          <td width="672" valign="bottom"> 
            <table border="0" cellspacing="2" cellpadding="0">
              <tr> 
                <td valign="bottom" width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="21"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="19"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
				<td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="21"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="19"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20"></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="744" align="right"> 
      <table width="759" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td width="8"><img src="../image/obj_frame_top1.gif" width="8" height="22"></td>
          <td width="744" background="../image/obj_frame_top2.gif">&nbsp;</td>
          <td width="8"><img src="../image/obj_frame_top3.gif" width="8" height="22"></td>
        </tr>
        <tr bgcolor="#6699FF"> 
          <td colspan="3"> 
            <table width="750" border="0" cellspacing="1" cellpadding="1">
                <tr> 
                  <td width="743" valign="top" align="left"><div align="left"><font color="#FFFFFF"><strong><font color="#EEEEEE">${sessionScope.login_admin.aname }</font></strong>,恭喜你登录成功!</font></div></td>
                </tr>
                <tr> 
                  <td valign="top" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;<font color="#FFFFFF">您是管理员身份，你可以设置选课计划、对选修课进行管理、对密码进行管理。<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*选课计划：<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;设置预选的时间和补选的时间<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*选修课管理<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;添加新的选修课<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;修改选修课<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;删除选修课<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查看选修课<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查看某门课程的代课老师<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查看某门课程的全体学生和修改他们的成绩<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*密码管理<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;修改管理员的密码<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;修改教师的密码<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;修改学生的密码</font></td>
                </tr>
             
            </table>
          </td>
        </tr>
        <tr> 
          <td width="8" valign="top"><img src="../image/obj_frame_bottom1.gif" width="8" height="18"></td>
          <td width="744" background="../image/obj_frame_bottom2.gif">&nbsp;</td>
          <td width="8" valign="top"><img src="../image/obj_frame_bottom3.gif" width="8" height="18"></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="744">&nbsp;</td>
  </tr>
</table>
</body>
</html>
