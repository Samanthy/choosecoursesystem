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
                  <td colspan="2" valign="top"><div align="center"><font color="#FFFFFF" size="3"><strong>补选公告</strong></font></div></td>
                </tr>
                <tr align="left"> 
                  <td colspan="2" valign="top">
				  	<font color="#FFFFFF" size="3">
				  		&nbsp;&nbsp;&nbsp;&nbsp;系统已经对你预选的课程进行了抽签，结果如下，如果你未被抽中，请点击继续选课进行补选。你可以删除已选中的课程，进行补选其他课程，不过补选课程采用竞争机制，你只能查询到未满的课程进行补选，所以删除请慎重！	
				  	</font>
				  </td>
                </tr>
                <tr align="left">
                  <td colspan="2" valign="top" abbr="#FFFFFF"> 
					<hr/>
					<div style="display:block;overflow-y:scroll;overflow-x:auto;height:100px;">
						<table cellspacing='0' cellpadding='0' width="100%"  border="1">
							<tr> 
                 				 <td colspan="10" valign="top"><div align="center"><font color="#FFFFFF" size="3"><strong>选定选修课信息</strong></font></div></td>
                			</tr>
							<tr class="tabhead">
								<td><div align="center">选修课编号</div></td><td><div align="center">选修课名称</div></td><td><div align="center">开课日期</div></td><td><div align="center">结课日期</div></td><td><div align="center">上课时间</div></td><td><div align="center">代课老师</div></td><td><div align="center">上课地点</div></td><td><div align="center">星期</div></td><td><div align="center">该课学分</div></td><td><div align="center">操作</div></td>
							</tr>
                			<c:if test="${requestScope.size!=0}" var="flag">
	                			<c:forEach items="${requestScope.course_second_id}" var="set">
								<tr>
									<td><div align="center"><font color="#FFFFFF">${set.cid }</font></div></td>
									<td><div align="center"><font color="#FFFFFF">${set.cname }</font></div></td>
									<td><div align="center"><font color="#FFFFFF">${set.startDate }</font></div></td>
									<td><div align="center"><font color="#FFFFFF">${set.endDate }</font></div></td>
									<td><div align="center"><font color="#FFFFFF">${set.schoolTime }</font></div></td>
									<td><div align="center"><font color="#FFFFFF">${set.teacher.tname }</font></div></td>
									<td><div align="center"><font color="#FFFFFF">${set.room.rname }</font></div></td>
									<td><div align="center"><font color="#FFFFFF">${set.week }</font></div></td>
									<td><div align="center"><font color="#FFFFFF">${set.credit }</font></div></td>
									<td><div align="center"><font color="#FFFFFF"><a href="javascript:;" onclick="window.setTimeout(function(){var flag=confirm('确定要删此课程${set.cid }吗？不可恢复!');if(flag==1){window.location='delete.do?id=${set.id}';}},1);">删除</a></font></div></td>
								</tr>
								</c:forEach>
							</c:if>
							<c:if test="${!flag }">
								 <tr> 
	                 				 <td colspan="10" valign="top"><div align="center"><font color="white">你未选中任何课程</font></div></td>
	                			</tr>
							</c:if>
							<!-- 限制选课数目 -->
							<c:if test="${requestScope.size!=2 }" var="size">
							<tr> 
                 			 <td colspan="10" valign="top"><div align="center"><a href="secondchoose.do" target="main">继续选课</a></div></td>
                			</tr>
                			</c:if>
                			<c:if test="${!size }">
                			<tr>
                			  <td colspan="10" valign="top"></td>
                			</tr>
                			</c:if>
						</table>
					</div>
					
				  </td>
                </tr>
                <tr align="left">
                  <td colspan="2" valign="top">&nbsp;</td>
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
