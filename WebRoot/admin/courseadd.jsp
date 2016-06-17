<%@include file="../common/common.jsp" %>
<%@page contentType="text/html;charset=gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<title>学生选课管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
		<link href='../css/main.css' rel='stylesheet' type='text/css'/>
		<script type="text/javascript" src="../js/prototype-1.6.0.3.js"></script>
		<script type="text/javascript" src="../js/common.js"></script>
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
          
          
          <html:form action="insertCourse.do" method="post">
          <table width="450" border="0" cellspacing="1" cellpadding="1">
                <tr> 
                  <td colspan="2" valign="top"><div align="center"><font color="#FFFFFF"><strong>添加新的选修课</strong></font></div></td>
                </tr>
                <tr> 
                  <td align="right" valign="top"><font color="#FFFFFF">课程编号：</font></td>
                  <td align="left"> <html:text styleId="cid" property="cid" size="15" onblur="mouseOutEvn(this);" styleClass="moveout" onfocus="mouseOverEvn(this);"/>
                  <c:if test="${requestScope.exist==1}">
                  <span style="font-size:12px;color:#dddddd">课程编号已存在</span>
                  </c:if>
                   </td>
                </tr>
                <tr> 
                  <td align="right" valign="top"><font color="#FFFFFF">课程名称：</font></td>
                  <td align="left"> <html:text styleId="cname" property="cname" size="15" onblur="mouseOutEvn(this);" styleClass="moveout" onfocus="mouseOverEvn(this);"/> </td>
                </tr>
                <tr> 
                  <td width="171" align="right" valign="top"><font color="#FFFFFF">开课日期：</font></td>
                  <td width="272" align="left"> <html:text styleId="startDate" property="startDate" size="15" onblur="mouseOutEvn(this);" styleClass="moveout" onfocus="mouseOverEvn(this);"/><span style="font-size:12px;color:#FFFFFF">  (例 2009-03-25)</span>
                  </td>
                </tr>
                <tr> 
                  <td align="right" valign="top"><font color="#FFFFFF">结课日期：</font></td>
                  <td align="left"> <html:text styleId="endDate" property="endDate" size="15" onblur="mouseOutEvn(this);" styleClass="moveout" onfocus="mouseOverEvn(this);"/><span style="font-size:12px;color:#FFFFFF">  (例 2009-10-02)</span></td>
                </tr>
                <tr> 
                  <td align="right" valign="top"><font color="#FFFFFF">该课学分：</font></td>
                  <td align="left"><html:text styleId="credit" property="credit" size="15" onblur="mouseOutEvn(this);" styleClass="moveout" onfocus="mouseOverEvn(this);"/> <span style="font-size:12px;color:#FFFFFF">(例 3)</span></td>
                </tr>
                <tr> 
                  <td align="right" valign="top"><font color="#FFFFFF">上课时间段：</font></td>
                  <td align="left"><html:text styleId="time" property="schoolTime" size="15" onblur="mouseOutEvn(this);" styleClass="moveout" onfocus="mouseOverEvn(this);"/><span style="font-size:12px;color:#FFFFFF"> (例 10:00-12:00)</span></td>
                </tr>
                <tr> 
                  <td align="right" valign="top"><font color="#FFFFFF">上课星期：</font></td>
                  <td align="left">
                    <html:select property="week">
                      <html:option value="星期一">星期一</html:option>
                      <html:option value="星期二">星期二</html:option>
                      <html:option value="星期三">星期三</html:option>
                      <html:option value="星期四">星期四</html:option>
                      <html:option value="星期五">星期五</html:option>
                      <html:option value="星期六">星期六</html:option>
                      <html:option value="星期日">星期日</html:option>
                    </html:select>
                  </td>
                </tr>
                <tr> 
                  <td align="right" valign="top"><font color="#FFFFFF">代课老师编号：</font></td>
                  <td align="left"> <html:text styleId="tid" property="tid" size="15" onblur="mouseOutEvn(this);" styleClass="moveout" onfocus="mouseOverEvn(this);"/><c:if test="${requestScope.tidnotexists==1}">
                      <span style="font-size:12px;color:#dddddd">教师编号不存在！</span>
                    </c:if></td>                    
                </tr>
                <tr> 
                  <td align="right" valign="top"><font color="#FFFFFF">所占教室：</font></td>
                  <td align="left"><html:select property="rid">
                    <c:forEach items="${requestScope.rooms}" var="room">
                    	 <html:option value="${room.id}">${room.rname}教室</html:option>
                    </c:forEach>
                    </html:select>
                    <c:if test="${requestScope.roomuse==1}">
                      <span style="font-size:12px;color:#dddddd">该教室已被占用</span>
                    </c:if>
                    </td>
                </tr>
                <tr align="center"> 
                    <td colspan="2" valign="top" name="error"><font color="#FF0000"><strong>
 												<html:errors property="all" />
											</strong></font></td>
                </tr>
                <c:if test="${requestScope.fail==1}">
                  <tr align="center"> 
                    <td colspan="2" valign="top" name="error"><font color="#FF0000"><strong>添加失败!</strong></font></td>
                  </tr>
                </c:if>
                <c:if test="${requestScope.insertSucc==1}">
                  <tr align="center"> 
                    <td colspan="2" valign="top" name="succ"><font color="#00ff00"><strong>添加成功!</strong></font></td>
                  </tr>
                </c:if>
                <tr align="center"> 
                  <td colspan="2" valign="top"><font color="#FFFFFF">&nbsp;</font>
                    <html:submit property="Submit" value="添加"/>
                    &nbsp;
                    <html:reset property="Submit2" value="重置"/></td>
                </tr>
              
            </table>
          </html:form>
          
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
