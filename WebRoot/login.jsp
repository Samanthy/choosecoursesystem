<%@include file="common/common.jsp"%>
<%@ page language="java" pageEncoding="gb2312"%>
<html>
<head>
<title>学生选课管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href='css/main.css' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript">
	var d = null;
	
	function dHeadMouseDown(e){
		d = document.getElementById('d1');
		dx = e.clientX - parseInt(d.style.left);
		dy = e.clientY - parseInt(d.style.top);
		var dBody = document.getElementById('d_body');
		if (dBody.setCapture) {
			dBody.setCapture();
		}
		
		if (window.captureEvents) {
			window.captureEvents(Event.MOUSEMOVE | Event.MOUSEUP);
		}
		
		
	}
	
	function dHeadMouseMove(e){
		if (d != null) {
			d.style.left = (e.clientX - dx) + "px";
			d.style.top = (e.clientY - dy) + "px";
		}
	}
	
	function dHeadMouseUp(e){
		if (d != null) {
			var dBody = document.getElementById('d_body');
			if (dBody.releaseCapture) {
				dBody.releaseCapture();
			}
			d = null;
		}
	}
	
	function getFocus(evn,src){
		src.focus();
		var a = evn.target;
		if(!a){
			a = evn.srcElement;
		}
		a.cancelBubble=true;
	}
</script>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
</head>

<body bgcolor="#FFFFFF" text="#666666" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" link="#FF9900" vlink="#006699">
<div id="d1" style="background_color:white; position:absolute; margin:0; padding_left:0px; padding_top:0px; left:340px; top:10px; width:611px; height:333px; z-index:1;">  
  <img src="image/kuang.gif" width="611" height="540"/> 
  <div id="d_body" onmousedown="dHeadMouseDown(event);" onmousemove="dHeadMouseMove(event);" onmouseup="dHeadMouseUp(event);" style="position:absolute; left:0px; top:40px; width:611px; height:369px; z-index:2;"> 
    <table width="472" border="0" valign="middle" align="center" cellpadding="3" cellspacing="1">
  <tr> 
    <td width="471" valign="middle"> 
      <table width="486" border="0" cellspacing="1" cellpadding="0">
        <tr> 
		  <td width="103" valign="bottom"> 
            <table border="0" cellspacing="2" cellpadding="0">
              <tr> 
                <td valign="bottom" width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
              </tr>
            </table>
          </td>
          <td width="278"><div align="center"><img src="image/login.jpg" width="89" height="37"></div></td>
          <td width="102" valign="bottom"> 
            <table border="0" cellspacing="2" cellpadding="0">
              <tr> 
                <td valign="bottom" width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
                <td width="20"><img src="image/p_point03.gif" width="20" height="20"></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="471" valign="middle"><p><font size="2">欢迎使用学生选课管理系统，你可以使用学生、教师和管理员身份分别登录本系统。</font><br>
        <font size="2">系统说明：学生使用学号进行登录，教师使用员工号进行登录。</font></p>
      </td>
  </tr>
  <tr> 
    <td width="471" valign="middle"> 
      <form name="form1" method="post" action="login.do">
        <table width="460" border="0" cellspacing="0" cellpadding="0" align="center">
          <tr> 
            <td width="8"><img src="image/obj_frame_top1.gif" width="8" height="22"></td>
            <td width="444" background="image/obj_frame_top2.gif">&nbsp;</td>
            <td width="8"><img src="image/obj_frame_top3.gif" width="8" height="22"></td>
          </tr>
          <tr bgcolor="#6699FF"> 
            <td colspan="3"> <br>
              <table width="426" border="0" cellspacing="0" cellpadding="3" align="center">
                <tr> 
                  <td width="65" rowspan="5" valign="top"><font size="2" color="#FFFFFF">&nbsp; 
                    </font></td>
                  <td width="117" valign="top">&nbsp;</td>
                  <td width="147">&nbsp;</td>
                  <td width="73" rowspan="5">&nbsp;</td>
                </tr>
                <tr> 
                  <td align="right" valign="middle"><font color="#FFFFFF" size="2">选择登录用户：</font></td>
                  <td width="147"><select name="select" size="1">
                      <option value="1">学生</option>
                      <option value="2">教师</option>
                      <option value="3">管理员</option>
                    </select></td>
                </tr>
                <tr> 
                  <td align="right" valign="top"><font color="#FFFFFF" size="2">登录账号：</font></td>
                  <td width="147"><input name="username" type="text" size="10" onmousedown="getFocus(event,this);" class="moveout" onfocus="mouseOverEvn(this);" onblur="mouseOutEvn(this);"> 
                  </td>
                </tr>
                <tr> 
                  <td align="right" valign="top"><font color="#FFFFFF" size="2">登录密码：</font></td>
                  <td width="147"><input name="password" type="password" size="10" onmousedown="getFocus(event,this);" class="moveout" onfocus="mouseOverEvn(this);" onblur="mouseOutEvn(this);"></td>
                </tr>
                <tr> 
                  <td colspan="2" align="left" valign="top"> <div align="center"><font color="#FFFFFF" size="2"><font color="#FF0000">${requestScope.login_error }</font><font color="#FF0000">${requestScope.hasLoginError }</font></font></div></td>
                </tr>
                <tr> 
                  <td colspan="4"> <div align="center"> <font size="2" color="#FFFFFF"> 
                      <input type="submit" name="submit2" value="登录">
                      &nbsp; 
                      <input type="reset" name="reset2" value="重置">
                      </font></div></td>
                </tr>
              </table>
            </td>
          </tr>
          <tr> 
            <td width="8" valign="top"><img src="image/obj_frame_bottom1.gif" width="8" height="18"></td>
            <td width="444" background="image/obj_frame_bottom2.gif">&nbsp;</td>
            <td width="8" valign="top"><img src="image/obj_frame_bottom3.gif" width="8" height="18"></td>
          </tr>
        </table>
      </form>
    </td>
  </tr>
  <tr> 
    <td width="471" valign="middle"> <br>
      <table border="0" cellspacing="2" cellpadding="0">
        <tr> 
          <td valign="bottom" width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
          <td width="20" height="2"><img src="image/p_point03.gif" width="20" height="20"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</div>
</div>


</body>
</html>
