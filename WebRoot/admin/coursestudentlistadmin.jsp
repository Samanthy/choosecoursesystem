<%@include file="../common/common.jsp" %>
<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<title>学生选课管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="../css/main.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="../js/prototype-1.6.0.3.js"></script>
<script type="text/javascript">

	var oldscore = null;
	
	function scoreinput(sc){
		var sid = $(sc.id+'_sid').innerHTML;
		var cid = $F('cid');
		if(oldscore==null){
			oldscore = $(sc.id+'_score').innerHTML;
			$(sc.id+'_score').innerHTML = "<input type=\"text\" id=\""+sc.id+"_inscore\" size=\"5\" onblur=\"scorediv('"+sc.id+"','"+sid+"','"+cid+"');\" value=\""+oldscore+"\"/>";
			$(sc.id+'_inscore').focus();
		}
	}
	
	function scorediv(scs,sid,cid){
		var newscore = $F(scs+'_inscore');
		var url = '${pageContext.request.contextPath}/admin/updateScore.do?sid='+sid+'&cid='+cid+'&newscore='+newscore;
		new Ajax.Request(url,{
			method:'get',
			asynchronous:false,
			onSuccess:function(req){
				if(req.responseText==1){
						//alert('修改成绩成功!');
						$(scs+'_score').innerHTML=newscore;
						oldscore=null;
				}else{
					//alert('修改成绩失败!');
					$(scs+'_score').innerHTML=oldscore;
					oldscore=null;
				}
			}
		});
	}
</script>
</head>

<body bgcolor="#FFFFFF" text="#666666" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" link="#FF9900" vlink="#006699">
<br/>
<table width="1002" border="0" cellspacing="1" cellpadding="3" align="center">
  <tr>
    <td width="994"> 
      <table width="1016" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="91"><img src="../image/ba_admin.gif" width="91" height="48"/></td>
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
		  	<form name="form1" method="post" action="">
              <table width="1000" border="0" cellspacing="1" cellpadding="1">
                <tr> 
                  <td colspan="2" valign="top"><div align="center"><font color="#FFFFFF"><input type="hidden" id="cid" value="${requestScope.cid}"/><strong>编号为${requestScope.cid}的选修课的学生列表</strong></font></div></td>
                </tr>
                <tr align="left"> 
                  <td colspan="2" valign="top" bordercolor="#FFFFFF"> <hr /> <div style="display:block;overflow-y:scroll;overflow-x:auto;height:280px;"> 
                      <table cellspacing='0' cellpadding='0' width="100%"  border="1">
                        <tr class="tabhead"> 
                          <td><div align="center">学生学号</div></td>
                          <td><div align="center">学生姓名</div></td>
                          <td><div align="center">所在院系</div></td>
                          <td><div align="center">所在专业</div></td>
                          <td><div align="center">成绩</div></td>
                        </tr>
                        <c:if test="${requestScope.isEmpty==1}" var="flag">
                          <tr>
														    <td colspan="7">
														    <div align="center">
																	<font color="#FFFFFF">还没有任何学生选修！</font>
																</div></td>
														  </tr>
                        </c:if>
                        <c:if test="${!flag}">
                          <c:forEach items="${requestScope.entities}" var="entity">
                          <tr>
                            <td><div align="center"><font color="#FFFFFF" id="sc${entity.student.id}_sid">${entity.student.sid}</font></div></td>
                            <td><div align="center"><font color="#FFFFFF">${entity.student.sname}</font></div></td>
                            <td><div align="center"><font color="#FFFFFF">${entity.student.department}</font></div></td>
                            <td><div align="center"><font color="#FFFFFF">${entity.student.specialField}</font></div></td>
                            <td id="sc${entity.student.id}" onclick="scoreinput(this);"><div align="center" style="color:#FFFFFF;" id="sc${entity.student.id}_score">${entity.score}</div></td> 
                          </tr>
                        </c:forEach>
                        </c:if>
                      </table>
                    </div></td>
                </tr>
                <tr align="left">
                  <td colspan="2" valign="top"><div align="center"><font color="#FFFFFF" size="3">说明：点击成绩，变成输入框，可修改成绩。失去焦点提交成绩。</font></div></td>
                </tr>
                <tr align="left"> 
                  <td colspan="2" valign="top">&nbsp;</td>
                </tr>
              </table>
			</form>
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
