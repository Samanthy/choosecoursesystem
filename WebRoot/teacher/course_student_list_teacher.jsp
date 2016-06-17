<%@page contentType="text/html;charset=gb2312"%>
<%@include file="../common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>学生选课管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/prototype-1.6.0.3.js"></script>
<script type="text/javascript">

	var oldscore = null;
	function scoreinput(sc){
		var status = $F(sc.id+'_status_submit');
		if(oldscore==null&&status==0){
			oldscore = $(sc.id+'_score').innerHTML;
			$(sc.id+'_score').innerHTML = "<input type=\"text\" id=\""+sc.id+"_inscore\" size=\"5\" onblur=\"scorediv('"+sc.id+"');\" value=\""+oldscore+"\"/>";
			$(sc.id+'_inscore').focus();
		}
	}
	
	function scorediv(scs){
		var newscore = $F(scs+'_inscore');
		if(newscore>=0&&newscore<=100){
			$(scs+'_score').innerHTML=newscore;
			$(scs+'_score_submit').value=newscore;
			oldscore=null;
			$('sub_btn').style.display="";
		}
	}
</script>
</head>

<body bgcolor="#FFFFFF" text="#666666"  link="#FF9900" vlink="#006699">
<br />
<table width="1002" border="0" cellspacing="1" cellpadding="3" align="center">
  <tr>
    <td width="994"> 
      <table width="1016" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="91"><img src="../image/ba_teacher.gif" width="91" height="48" /></td>
          <td width="922" valign="bottom"> 
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
                <td width="21"><img src="../image/p_point03.gif" width="20" height="20" /></td>
                <td width="19"><img src="../image/p_point03.gif" width="20" height="20" /></td>
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
          <td width="8"><img src="../image/obj_frame_top1.gif" width="8" height="22" /></td>
          <td width="994" background="../image/obj_frame_top2.gif">&nbsp;</td>
          <td width="8"><img src="../image/obj_frame_top3.gif" width="8" height="22" /></td>
        </tr>
        <tr bgcolor="#6699FF"> 
          <td colspan="3"> 
		  	<form name="form1" method="post" action="AddStudentsScore.do?cid=${requestScope.cidStr}">
              <table width="1000" border="0" cellspacing="1" cellpadding="1">
                <tr> 
                  <td colspan="2" valign="top"><div align="center"><font color="#FFFFFF"><strong>编号${requestScope.cidStr }选修课的学生列表</strong></font></div></td>
                </tr>
                <tr align="left"> 
                  <td colspan="2" valign="top" bordercolor="#FFFFFF"> <hr/> <div style="display:block;overflow-y:scroll;overflow-x:auto;height:280px;"> 
                      <table width="100%"  border="1" align="center" cellpadding='1' cellspacing='0'>
                        <tr class="tabhead"> 
                          <!-- <td><div align="center">选修课编号</div></td><td><div align="center">选修课名称</div></td><td><div align="center">登录名</div></td><td><div align="center">开课日期</div></td><td><div align="center">结课日期</div></td><td><div align="center">代课老师</div></td><td><div align="center">上课地点</div></td><td><div align="center">上课时间段</div></td><td><div align="center">星期</div></td><td><div align="center">该课学分</div></td><td><div align="center">操作</div></td>-->
                          <td><div align="center">学生学号</div></td>
                          <td><div align="center">学生姓名</div></td>
                          <td><div align="center">所在院系</div></td>
                          <td><div align="center">所在专业</div></td>
                          <td><div align="center">成绩</div></td>
                        </tr>
                        <c:choose>
							<c:when test="${requestScope.studentNum==0 }">
								<td colspan="9" style="color:white;" align="center"><strong>暂无学生选修此课程！</strong></td>
							</c:when>
							<c:otherwise>
						<c:forEach var="studentScore" items="${requestScope.student_byCid }" varStatus="status" >
                        <tr> 
						  <input type="hidden" name="student_score_${status.index}" id="sc${status.index}_score_submit"/>
						  <input type="hidden" name="student_status_${status.index}" id="sc${status.index}_status_submit" value="${studentScore.status }"/>
                          <td><div align="center"><font color="#FFFFFF" id="sc${status.index}_sid">${studentScore.student.sid }</font></div></td>
                          <td><div align="center"><font color="#FFFFFF">${studentScore.student.sname}</font></div></td>
                          <td><div align="center"><font color="#FFFFFF">${studentScore.student.department }</font></div></td>
                          <td><div align="center"><font color="#FFFFFF">${studentScore.student.specialField }</font></div></td>
                          <td id="sc${status.index}" onclick="scoreinput(this);"><div align="center" style="color:#FFFFFF;" id="sc${status.index}_score">${studentScore.score }</div></td>
                        </tr>
						</c:forEach>
						</c:otherwise>
						</c:choose>	
						<tr id="sub_btn" style="display:none;">
							<td colspan="5" align="center"><input type="submit" value="提交"/></td>
						</tr>
                      </table>
                    </div></td>
                </tr>
                <tr align="left">
                  <td colspan="2" valign="top"><font color="#FFFFFF" size="3">说明：点击成绩，变成输入框，可修改成绩。失去焦点临时修改成绩。修改后可显示“提交”按钮，提交前请仔细检查成绩是否录入正确，提交后不能修改成绩，可以向管理员申请修改!未修改成绩的学生可下次再录入。</font></td>
                </tr>
                <tr align="left"> 
                  <td colspan="2" valign="top">&nbsp;</td>
                </tr>
              </table>
			</form>
		  </td>
        <tr> 
          <td width="8" valign="top"><img src="../image/obj_frame_bottom1.gif" width="8" height="18" /></td>
          <td width="994" background="../image/obj_frame_bottom2.gif">&nbsp;</td>
          <td width="8" valign="top"><img src="../image/obj_frame_bottom3.gif" width="8" height="18" /></td>
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
