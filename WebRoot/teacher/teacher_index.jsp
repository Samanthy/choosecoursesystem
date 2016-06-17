<%@page contentType="text/html;charset=gb2312"%>
<%@include file="../common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>学生选课管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
</head>

<body bgcolor="#FFFFFF" text="#666666" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" link="#FF9900" vlink="#006699">
<br />
<table width="752" border="0" cellspacing="1" cellpadding="3" align="center">
  <tr>
    <td width="744"> 
      <table width="766" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="91"><img src="../image/ba_teacher.gif" width="91" height="48" /></td>
          <td width="672" valign="bottom"> 
            <table border="0" cellspacing="2" cellpadding="0">
              <tr> 
                <td valign="bottom" width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="21"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="19"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
				<td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="21"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="19"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="20"><img src="../image/p_point03.gif" width="20" height="20" /></td>
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
          <td width="8"><img src="../image/obj_frame_top1.gif" width="8" height="22" /></td>
          <td width="744" background="../image/obj_frame_top2.gif">&nbsp;</td>
          <td width="8"><img src="../image/obj_frame_top3.gif" width="8" height="22" /></td>
        </tr>
        <tr bgcolor="#6699FF"> 
          <td colspan="3"> 
            <table width="750" border="0" cellspacing="1" cellpadding="1">
                <tr> 
                  <td width="743" valign="top" align="left"><div align="left"><font color="#FFFFFF">欢迎<strong><font color="#EEEEEE">${sessionScope.login_teacher.tname }</font></strong>,恭喜你登录成功!</font></div></td>
                </tr>
                <tr> 
                  <td valign="top" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;<font color="#FFFFFF">您是教师身份，您可以查看所代的选修课，查看某门选修课的所有学生和添加成绩。<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*添加成绩<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#FFFFFF" size="3">点击成绩，变成输入框，可修改成绩。失去焦点临时修改成绩，未真正修改成绩。修改成绩后<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 可显示“提交”按钮，提交前请仔细检查成绩是否录入正确，提交后就不能再次修改已经修改<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 过的成绩，可以向管理员申请修改!未修改成绩的学生可下次再录入。</font></td>
                </tr>
            </table>
          </td>
        </tr>
        <tr> 
          <td width="8" valign="top"><img src="../image/obj_frame_bottom1.gif" width="8" height="18" /></td>
          <td width="744" background="../image/obj_frame_bottom2.gif">&nbsp;</td>
          <td width="8" valign="top"><img src="../image/obj_frame_bottom3.gif" width="8" height="18" /></td>
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
