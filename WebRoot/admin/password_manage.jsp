<%@include file="../common/common.jsp"%>
<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>学生选课管理系统</title>
		<link href='../css/main.css' rel='stylesheet' type='text/css'/>
		<script type="text/javascript" src="../js/prototype-1.6.0.3.js"></script>
		<script type="text/javascript" src="../js/common.js"></script>
		<script type="text/javascript">
		var accFlag = false;
		var pwdFlag = false;
		function validatorForm(){
			return accFlag&&pwdFlag;
		}
		function validatorPwd1(f){
			mouseOutEvn(f);
			$('surePassword_err').innerHTML='';
			
			var newPwd=$F('newPassword').strip();
			if(newPwd!=f.value.strip()){
				$('surePassword_err').innerHTML='密码不一致!';
				pwdFlag = false;
				return false;
			}
			pwdFlag = true;
			return true;
		}
		
		
		function accountValidate(ss){
			mouseOutEvn(ss);
			if($('account').value.length<=0){
				$('account_err').innerHTML="不能为空";
				accFlag = false;
				return false;
			}else{
				$('account_err').innerHTML="";
				accFlag = true;
				return true;
			}
		}
	</script>

	</head>

	<body bgcolor="#FFFFFF" text="#666666" leftmargin="0" topmargin="0"
		marginwidth="0" marginheight="0" link="#FF9900" vlink="#006699">
		<br />
		<table width="452" border="0" cellspacing="1" cellpadding="3"
			align="center">
			<tr>
				<td width="444">
					<table width="466" border="0" cellspacing="1" cellpadding="0">
						<tr>
							<td width="91">
								<img src="../image/ba_admin.gif" width="91" height="48" />
							</td>
							<td width="372" valign="bottom">
								<table border="0" cellspacing="2" cellpadding="0">
									<tr>
										<td valign="bottom" width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="21">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="19">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
										<td width="20">
											<img src="../image/p_point03.gif" width="20" height="20" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width="444" align="right">
					<table width="459" border="0" cellspacing="0" cellpadding="0"
						align="center">
						<tr>
							<td width="8">
								<img src="../image/obj_frame_top1.gif" width="8" height="22" />
							</td>
							<td width="444" background="../image/obj_frame_top2.gif">
								&nbsp;
							</td>
							<td width="8">
								<img src="../image/obj_frame_top3.gif" width="8" height="22" />
							</td>
						</tr>
						<tr bgcolor="#6699FF">
							<td colspan="3">
							<form id="adminPassword" method="post"
										action="adminConfigPasswordAction.do"
										onsubmit="return validatorForm();">
								<table width="450" border="0" cellspacing="1" cellpadding="1">
									
									<tr>
										<td colspan="2" valign="top">
											<div align="center">
												<font color="#FFFFFF"><strong>密码管理</strong> </font>
											</div>
										</td>
									</tr>
									<tr valign="middle">
										<td colspan="2" align="right">
											<div align="center">
												<font color="#FFFFFF"> <input name="user"
														type="radio" value="student" checked /> 学生 <input
														type="radio" name="user" value="teacher" /> 教师 <input
														type="radio" name="user" value="administrator" /> 管理员 </font>
											</div>
										</td>
									</tr>
									<tr>
										<td align="right" valign="top">
											<font color="#FFFFFF">登陆账号：</font>
										</td>
										<td align="left">
											<input id="account" name="account" type="text" size="20" 
												onblur="accountValidate(this);"  class="moveout" onfocus="mouseOverEvn(this);"/>
											<span id="account_err" style="color:red;font-size:12px"></span>
										</td>
									</tr>
									<tr>
										<td width="171" align="right" valign="top">
											<font color="#FFFFFF">新密码：</font>
										</td>
										<td width="272" align="left">
											<input id="newPassword" name="newPassword" type="password" size="20"
												onblur="mouseOutEvn(this);" class="moveout" onfocus="mouseOverEvn(this);"/>
										</td>
									</tr>
									<tr>
										<td align="right" valign="top">
											<font color="#FFFFFF">确认密码：</font>
										</td>
										<td align="left">
											<input id="surePassword" name="surePassword" type="password" size="20"
												onblur="validatorPwd1(this);" class="moveout" onfocus="mouseOverEvn(this);"/>
											<span id="surePassword_err" style="color:red;font-size:12px"></span>
										</td>
									</tr>
									<tr align="center">
										<td colspan="2" valign="top" name="msg"><font color="#008800">${requestScope.password_succ}</font><font color="#FF6600">${requestScope.password_error } </font>
										</td>
									</tr>
									<tr align="center">
										<td colspan="2" valign="top">
											<font color="#FFFFFF">&nbsp;</font>
											<input type="submit" name="Submit" value="修改" />
											&nbsp;
											<input type="reset" name="Submit2" value="重置" />
										</td>
									</tr>
									
								</table>
								</form>
							</td>
						</tr>
						<tr>
							<td width="8" valign="top">
								<img src="../image/obj_frame_bottom1.gif" width="8" height="18" />
							</td>
							<td width="444" background="../image/obj_frame_bottom2.gif">
								&nbsp;
							</td>
							<td width="8" valign="top">
								<img src="../image/obj_frame_bottom3.gif" width="8" height="18" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width="444">
					&nbsp;
				</td>
			</tr>
		</table>
	</body>
</html>
