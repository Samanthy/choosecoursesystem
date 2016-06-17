<%@ page language="java" pageEncoding="gb2312"%>
<html>
<head>
<title>学生选课管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>

<body bgcolor="#FFFFFF" text="#666666" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" link="#FF9900" vlink="#006699">
<br>
<table width="752" border="0" cellspacing="1" cellpadding="3" align="center">
  <tr>
    <td width="744"> 
      <table width="766" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="91"><img src="../image/ba_student.gif" width="91" height="48"></td>
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
          <form>
            <table width="750" border="0" cellspacing="1" cellpadding="1">
                <tr> 
                  <td width="743" valign="top"><div align="left"><font color="#FFFFFF"><strong><font color="#EEEEEE">${sessionScope.login_student.department } -
                      ${sessionScope.login_student.specialField } ${sessionScope.login_student.sname }</font></strong>,恭喜你登录成功!</font></div></td>
                </tr>
                <tr> 
                  <td valign="top"> &nbsp;&nbsp;&nbsp;&nbsp;<font color="#FFFFFF">选课说明：<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在选课时间，你可以使用选课功能进行选择选修课。在非选课时间，选课功能无效！<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一个学生能选两门课程。<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;选课分预选和补选：<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*预选<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在预选时间内，你可以选择所有的课程，列表中会显示课程所容纳的最大人数（课程容<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;量）和现在已选此门课程的学生数，如果你已选择一门课程，那么该门课程会显示在你<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已选课程列表中且该门课程不能再被选定；如果你已选两门课程，那么已选课程列表会<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;显示你已选的两门课程并且所有的课程不能再被选定。预选结束，系统会对超出课程容<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;量的课程进行抽签，选择一部分学生选择此门课程成功，选课未成功的学生可以进行补<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;选。<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*补选<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在补选时间内，你可以选择未满的课程，列表中会显示课程所容纳的最大人数（课程容<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;量）和现在已选此门课程的学生数。补选采用竞争机制，选满的课程会从列表中消失，<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;不能被查询出来。补选上某门课，说明你已正式选修了该门课程。<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;选课查询：<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你可以通过填写任意条件筛选课程，不填写任何条件，查询所有课程。查询支持模糊查询。</font></td>
                </tr>
            </table>
            </form>
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
