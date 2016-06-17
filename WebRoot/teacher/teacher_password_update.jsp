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
	<script type="text/javascript">
		var pwdFlag = false;
		function validatorForm(){
			return pwdFlag;
		}
		function validatorPwd1(f){
			mouseOutEvn(f);
			$('confirmPassword_err').innerHTML='';
			
			var newPwd=$F('login_newPassword').strip();
			if(newPwd!=f.value.strip()){
				$('confirmPassword_err').innerHTML='密码不一致!';
				pwdFlag = false;
				return false;
			}
			pwdFlag = true;
			return true;
		}
	</script>
<body bgcolor="#FFFFFF" text="#666666"link="#FF9900" vlink="#006699" onload="document.forms['teacherInfo']['login_newPassword'].focus();">
<br/>
<table width="452" border="0" cellspacing="1" cellpadding="3" align="center">
  <tr>
    <td width="444"> 
      <table width="466" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="91"><img src="../image/ba_teacher.gif" width="91" height="48"/></td>
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
           <form  name="teacherInfo" method="post" action="updateTeacherPassword.do" onsubmit="return validatorForm();">
            <table width="450" border="0" cellspacing="1" cellpadding="1">
                <tr> 
                  <td colspan="2" valign="top"><div align="center"><font color="#FFFFFF"><strong>密码修改</strong></font></div></td>
                </tr>
                <tr> 
                  <td align="right" valign="top"><font color="#FFFFFF">登陆账号：</font></td>
                  <td align="left"> <input name="login_tid" type="text" size="20" value="${sessionScope.login_teacher.tid }" disabled="disabled"/> </td>
                </tr>
                <tr> 
                  <td width="171" align="right" valign="top"><font color="#FFFFFF">新密码：</font></td>
                  <td width="272" align="left"> <input id="login_newPassword" name="newPassword" type="password" size="20" onblur="mouseOutEvn(this);" class="moveout" onfocus="mouseOverEvn(this);"/>
                  </td>
                </tr>
                <tr> 
                  <td align="right" valign="top"><font color="#FFFFFF">确认密码：</font></td>
                  <td align="left"> <input id="confirmPassword" name="confirmPwd" type="password" size="20" onblur="validatorPwd1(this);" class="moveout" onfocus="mouseOverEvn(this);"/><span id="confirmPassword_err" style="color:red;font-size:12px"></span>
                  </td>
                </tr>
                <tr align="center">
                <c:if var="flags" test="${requestScope.issuccess==true}">
                  <td colspan="2" valign="top" ><font color="#00ff00"><span><strong>修改密码成功！</strong></span></font></td>
                </c:if>
                <c:if test="${requestScope.issuccess==false}">
                	<td colspan="2" valign="top"><font color="#FF0000"><span>修改失败，两次密码不一致!</span></font></td>
                </c:if>
                </tr>
                <tr align="center"> 
                  <td colspan="2" valign="top"><font color="#FFFFFF">&nbsp;</font> 
                    <input type="submit" name="Submit" value="修改"/> &nbsp; <input type="reset" name="Submit2" value="重置" /></td>
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
