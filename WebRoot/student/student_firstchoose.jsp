<%@ page language="java" pageEncoding="gb2312"%>
<%@include file="../common/common.jsp" %>
<html>
<head>
<title>学生选课管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link href='../css/main.css' rel='stylesheet' type='text/css'/>
		<script type="text/javascript" src="../js/prototype-1.6.0.3.js"></script>
		<script type="text/javascript" src="../js/common.js"></script>
</head>

<body bgcolor="#FFFFFF" text="#666666" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" link="#FF9900" vlink="#006699">
<br>
<table width="1002" border="0" cellspacing="1" cellpadding="3" align="center">
  <tr>
    <td width="994"> 
      <table width="1016" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="91"><img src="../image/ba_student.gif" width="91" height="48"></td>
          <td width="922" valign="bottom"> 
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
                <td width="21"><img src="../image/p_point03.gif" width="20" height="20"></td>
                <td width="19"><img src="../image/p_point03.gif" width="20" height="20"></td>
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
          <td width="8"><img src="../image/obj_frame_top1.gif" width="8" height="22"></td>
          <td width="994" background="../image/obj_frame_top2.gif">&nbsp;</td>
          <td width="8"><img src="../image/obj_frame_top3.gif" width="8" height="22"></td>
        </tr>
        <tr bgcolor="#6699FF"> 
          <td colspan="3"> 
		  	
              <table width="1000" border="0" cellspacing="1" cellpadding="1">
                <tr> 
                  <td colspan="2" valign="top"><div align="center"><font color="#FFFFFF" size="3"><strong>选修课预选</strong></font></div></td>
                </tr>
                <tr align="left"> 
				         <form  method="post" action="../FirstChooseCourse/show.do">
                  <td colspan="2" valign="top"><div align="center"><font color="#FFFFFF" size="3">选修课编号：</font> 
                      <input name="cid" type="text" size="15" value="${fcc_cid }" onblur="mouseOutEvn(this);" class="moveout" onfocus="mouseOverEvn(this);">
                      <font color="#FFFFFF" size="3">选修课名称：</font> 
                      <input name="cname" type="text" size="20" value="${fcc_cname }" onblur="mouseOutEvn(this);" class="moveout" onfocus="mouseOverEvn(this);">
                      <font color="#FFFFFF" size="3">代课老师姓名： 
                      <input name="tname" type="text" size="15" value="${fcc_tname }" onblur="mouseOutEvn(this);" class="moveout" onfocus="mouseOverEvn(this);">
                      </font> &nbsp; 
                      <input type="submit" name="Submit" value="查询">
                    </div></td>
			
                </tr>
                <tr align="left">
                  <td colspan="2" valign="top" bordercolor="#FFFFFF"> 
                    <hr>
				  	<div style="display:block;overflow-y:scroll;overflow-x:auto;height:280px;">
				  	<table cellspacing='0' cellpadding='0' width="100%"  border="1">
						<tr class="tabhead">
							<td><div align="center">选修课编号</div></td><td><div align="center">选修课名称</div></td><td><div align="center">开课日期</div></td><td><div align="center">结课日期</div></td><td><div align="center">上课时间</div></td><td><div align="center">代课老师</div></td><td><div align="center">上课地点</div></td><td><div align="center">星期</div></td><td><div align="center">该课学分</div></td><td><div align="center">课程容量</div></td><td><div align="center">已选人数</div></td><td><div align="center">操作</div></td>
						</tr>
						<c:if test="${fn:length(requestScope.list)>0}" var="flag1">
						<c:forEach var="firstchoose" items="${requestScope.list}">
						<tr>
							<td><div align="center"><font color="#FFFFFF">${firstchoose.course.cid}</font></div></td>
							<td><div align="center"><font color="#FFFFFF">${firstchoose.course.cname}</font></div></td>
							<td><div align="center"><font color="#FFFFFF">${firstchoose.course.startDate}</font></div></td>
							<td><div align="center"><font color="#FFFFFF">${firstchoose.course.endDate}</font></div></td>
							<td><div align="center"><font color="#FFFFFF">${firstchoose.course.schoolTime}</font></div></td>
							<td><div align="center"><font color="#FFFFFF">${firstchoose.course.teacher.tname}</font></div></td>
							<td><div align="center"><font color="#FFFFFF">${firstchoose.course.room.rname}</font></div></td>
							<td><div align="center"><font color="#FFFFFF">${firstchoose.course.week}</font></div></td>
							<td><div align="center"><font color="#FFFFFF">${firstchoose.course.credit}</font></div></td>
							<td><div align="center"><font color="#FFFFFF">${firstchoose.course.room.capacity}</font></div></td>
							<td><div align="center"><font color="#FFFFFF">${firstchoose.hasChooseNum}</font></div></td>
							<c:choose>
						  		<c:when test="${requestScope.length>=2}">
									<td><br></td>
								</c:when>
								<c:otherwise>
									<c:forEach var="choose" items="${requestScope.list1}">
										<c:if test="${firstchoose.course.cid eq choose.cid}" var="flag">	
										</c:if>
							    	</c:forEach>
							    	<c:choose>
							    		<c:when test="${empty flag || !flag}">
							    			<td><div align="center"><font color="#FFFFFF"><a href="../FirstChooseCourse/add.do?id=${firstchoose.course.id}">选定</a></font></div></td>
							    		</c:when>
							    		<c:otherwise>
							    			<td><div align="center"></div></td>
							    		</c:otherwise>
							    	</c:choose>
						   		 </c:otherwise>
						   </c:choose>
						</tr>
						</c:forEach>
						</c:if>
						<c:if test="${!flag1}">
							<tr> 
		                     <td colspan="12" valign="top"><div align="center"><font color="white">没有查询的信息</font></div></td>
		                    </tr>
						</c:if>
					</table>
					</div>
					<hr/>
					<div style="display:block;overflow-y:scroll;overflow-x:auto;height:100px;">
						<table cellspacing='0' cellpadding='0' width="100%"  border="1">
							<tr> 
                 				 <td colspan="10" valign="top"><div align="center"><font color="#FFFFFF" size="3"><strong>选定选修课信息</strong></font></div></td>
                			</tr>
							<tr class="tabhead">
								<td><div align="center">选修课编号</div></td><td><div align="center">选修课名称</div></td><td><div align="center">开课日期</div></td><td><div align="center">结课日期</div></td><td><div align="center">上课时间</div></td><td><div align="center">代课老师</div></td><td><div align="center">上课地点</div></td><td><div align="center">星期</div></td><td><div align="center">该课学分</div></td><td><div align="center">操作</div></td>
							</tr>
							<tr>
							<c:choose>
								<c:when test="${empty requestScope.list1}">
	           						<td colspan="10" valign="top"><div align="center"><font color="#FFFFFF">你还没有选定任何选修课</font></div></td>
	                			</c:when>
           						<c:otherwise>
									<c:forEach var="course" items="${requestScope.list1}">
										<tr>
											<td><div align="center"><font color="#FFFFFF">${course.cid}</font></div></td>
											<td><div align="center"><font color="#FFFFFF">${course.cname}</font></div></td>
											<td><div align="center"><font color="#FFFFFF">${course.startDate}</font></div></td>
											<td><div align="center"><font color="#FFFFFF">${course.endDate}</font></div></td>
											<td><div align="center"><font color="#FFFFFF">${course.schoolTime}</font></div></td>
											<td><div align="center"><font color="#FFFFFF">${course.teacher.tname}</font></div></td>
											<td><div align="center"><font color="#FFFFFF">${course.room.rname}</font></div></td>
											<td><div align="center"><font color="#FFFFFF">${course.week}</font></div></td>
											<td><div align="center"><font color="#FFFFFF">${course.credit}</font></div></td>
											<td><div align="center"><font color="#FFFFFF"><a href="../FirstChooseCourse/delete.do?id=${course.id}">删除</a></font></div></td>
										</tr>
									</c:forEach>
							</c:otherwise>
						</c:choose>
						</tr>
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
          <td width="8" valign="top"><img src="../image/obj_frame_bottom1.gif" width="8" height="18"></td>
          <td width="994" background="../image/obj_frame_bottom2.gif">&nbsp;</td>
          <td width="8" valign="top"><img src="../image/obj_frame_bottom3.gif" width="8" height="18"></td>
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
