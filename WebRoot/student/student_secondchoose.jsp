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
<c:if test="${not empty requestScope.courseFull}">
	<script type="text/javascript">
		alert("你选择的课程已满，请选择其他课程！");
	</script>
</c:if>
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
                  <td colspan="2" valign="top"><div align="center"><font color="#FFFFFF" size="3"><strong>选修课补选</strong></font></div></td>
                </tr>
                <tr align="left"> 
				         <form  method="post" action="secondchoose.do">
                  <td colspan="2" valign="top"><div align="center"><font color="#FFFFFF" size="3">选修课编号：</font> 
                      <input name="cid" type="text" size="15" value="${scc_cid }" onblur="mouseOutEvn(this);" class="moveout" onfocus="mouseOverEvn(this);">
                      <font color="#FFFFFF" size="3">选修课名称：</font> 
                      <input name="cname" type="text" size="20" value="${scc_cname }" onblur="mouseOutEvn(this);" class="moveout" onfocus="mouseOverEvn(this);">
                      <font color="#FFFFFF" size="3">代课老师姓名： 
                      <input name="tname" type="text" size="15" value="${scc_tname }" onblur="mouseOutEvn(this);" class="moveout" onfocus="mouseOverEvn(this);">
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
														<c:if test="${fn:length(requestScope.secondchoose)>0}" var="flag1">
														<c:forEach items="${requestScope.secondchoose}" var="set">
															<tr>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.course.cid }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.course.cname }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.course.startDate }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.course.endDate }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.course.schoolTime }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.course.teacher.tname
																			}</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.course.room.rname }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.course.week }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.course.credit }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.course.room.capacity
																			}</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.hasChooseNum }</font>
																	</div>
																</td>
																
																							<c:choose>
						  		<c:when test="${requestScope.choose_size>=2}">
									<td><br></td>
								</c:when>
								<c:otherwise>
									<c:forEach var="choose" items="${requestScope.course_second_id}">
										<c:if test="${set.course.cid eq choose.cid}" var="flag">	
										</c:if>
							    	</c:forEach>
							    	<c:choose>
							    		<c:when test="${empty flag || !flag}">
							    			<td><div align="center"><font color="#FFFFFF"><a href="add_course.do?cid=${set.course.id}">选定</a></font></div></td>
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
												<c:if test="${!flag1 }">
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
													<c:if test="${requestScope.choose_size >0 }" var="flag">
														<c:forEach items="${requestScope.course_second_id }"
															var="set">
															<tr>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.cid }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.cname }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.startDate }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.endDate }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.schoolTime }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.teacher.tname }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.room.rname }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.week }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">${set.credit }</font>
																	</div>
																</td>
																<td>
																	<div align="center">
																		<font color="#FFFFFF">
																		<a href="javascript:;" onclick="window.setTimeout(function(){var flag=confirm('确定要删此课程${set.cid }吗？不可恢复!');if(flag==1){window.location='deleteForSecond.do?id=${set.id}';}},1);">删除</a>
																		</font>
																	</div>
																</td>
															</tr>
														</c:forEach>
													</c:if>
													<c:if test="${!flag }">
														<tr>
															<td colspan="10" valign="top">
																<div align="center">
																	<font color="white">你还没有选定任何选修课</font>
																</div>
															</td>
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
