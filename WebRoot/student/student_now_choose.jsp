<%@include file="../common/common.jsp" %>
<%@page contentType="text/html;charset=gb2312"%>
<html> 
<head>
<title>学生选课管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="../css/main.css" rel="stylesheet" type="text/css"/>
</head>

<body bgcolor="#FFFFFF" text="#666666" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" link="#FF9900" vlink="#006699">
<br/>
<table width="1002" border="0" cellspacing="1" cellpadding="3" align="center">
  <tr>
    <td width="994"> 
      <table width="1016" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="91"><img src="../image/ba_student.gif" width="91" height="48"/></td>
          <td width="922" valign="bottom"> 
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
                <td width="21"><img src="../image/p_point03.gif" width="20" height="20"/></td>
                <td width="19"><img src="../image/p_point03.gif" width="20" height="20"/></td>
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
    <td width="994" align="right"> 
      <table width="1009" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td width="8"><img src="../image/obj_frame_top1.gif" width="8" height="22"/></td>
          <td width="994" background="../image/obj_frame_top2.gif">&nbsp;</td>
          <td width="8"><img src="../image/obj_frame_top3.gif" width="8" height="22"/></td>
        </tr>
        <tr bgcolor="#6699FF"> 
          <td colspan="3"> 
              <table width="1000" border="0" cellspacing="1" cellpadding="1">
			  <tr> 
                <td colspan="2" valign="top"><div align="center"><font color="#FFFFFF" size="3"><strong>本学期已修选修课</strong></font></div></td>
              </tr>
              <tr align="left"> 
                <td valign="top" bordercolor="#FFFFFF"> 
                  <div style="display:block;overflow-y:scroll;overflow-x:auto;height:100px;"> 
                    <table cellspacing='0' cellpadding='0' width="100%"  border="1">
                      
                      <tr class="tabhead"> 
                        <td><div align="center">选修课编号</div></td>
                        <td><div align="center">选修课名称</div></td>
                        <td><div align="center">开课日期</div></td>
                        <td><div align="center">结课日期</div></td>
                        <td><div align="center">上课时间</div></td>
                        <td><div align="center">代课老师</div></td>
                        <td><div align="center">上课地点</div></td>
                        <td><div align="center">星期</div></td>
                        <td><div align="center">该课学分</div></td>
                      </tr>
                      <c:if test="${fn:length(requestScope.now_choose)>0}" var="flag">
                      <c:forEach items="${requestScope.now_choose}" var="set">
                      <tr> 
                        <td><div align="center"><font color="#FFFFFF">${set.cid }</font></div></td>
                        <td><div align="center"><font color="#FFFFFF">${set.cname }</font></div></td>
                        <td><div align="center"><font color="#FFFFFF">${set.startDate }</font></div></td>
                        <td><div align="center"><font color="#FFFFFF">${set.endDate }</font></div></td>
                        <td><div align="center"><font color="#FFFFFF">${set.schoolTime}</font></div></td>
                        <td><div align="center"><font color="#FFFFFF">${set.teacher.tname }</font></div></td>
                        <td><div align="center"><font color="#FFFFFF">${set.room.rname }</font></div></td>
                        <td><div align="center"><font color="#FFFFFF">${set.week }</font></div></td>
                        <td><div align="center"><font color="#FFFFFF">${set.credit }</font></div></td>
                      </tr>
                      </c:forEach>
                      </c:if>
                      <c:if test="${!flag}">
                      <tr> 
                        <td colspan="10" valign="top"><div align="center"><font color="#FFFFFF">你还没有选定任何选修课</font></div></td>
                      </tr>
                      </c:if>
                     </table>
                  </div></td>
              </tr>
              <tr align="left"> 
                <td valign="top">&nbsp;</td>
              </tr>
            </table>
		  </td>
        <tr> 
          <td width="8" valign="top"><img src="../image/obj_frame_bottom1.gif" width="8" height="18"/></td>
          <td width="994" background="../image/obj_frame_bottom2.gif">&nbsp;</td>
          <td width="8" valign="top"><img src="../image/obj_frame_bottom3.gif" width="8" height="18"/></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="994">&nbsp;</td>
  </tr>
</table>
</body>
</html>
