<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<title>学生选课管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
</head>

<body bgcolor="#FFFFFF" text="#666666" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" link="#FF9900" vlink="#006699">
<br/>
<table width="452" border="0" cellspacing="1" cellpadding="3" align="center">
  <tr>
    <td width="444"> 
      <table width="466" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="91"><img src="../image/ba_admin.gif" width="91" height="48"/></td>
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
          <form>
            <table width="450" border="0" cellspacing="1" cellpadding="1">
              
                <tr> 
                  <td colspan="2" valign="top"><div align="center"><font color="#FFFFFF"><strong>教师信息</strong></font></div></td>
                </tr>
                <tr>
                  <td colspan="2" valign="top">&nbsp;</td>
                </tr>
                <tr> 
                  <td align="right" valign="top"><font color="#FFFFFF">教师员工号：</font></td>
                  <td align="left"><font color="#FFFFFF">${requestScope.teacher.tid}</font></td>
                </tr>
                <tr> 
                  <td align="right" valign="top"><font color="#FFFFFF">教师名称：</font></td>
                  <td align="left"><font color="#FFFFFF">${requestScope.teacher.tname}</font></td>
                </tr>
                <tr> 
                  <td width="225" height="18" align="right" valign="top"><font color="#FFFFFF">教师职称：</font></td>
                  <td width="218" align="left"><font color="#FFFFFF">${requestScope.teacher.position}</font></td>
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
