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
			function change(){
				$("font").style.display="";
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
							<form method="post" action="processAction.do">
								<table width="450" border="0" cellspacing="1" cellpadding="1">
									<tr>
										<td colspan="2" valign="top">
											<div align="center">
												<font color="#FFFFFF"><strong>选课计划安排</strong> </font>
											</div>
										</td>
									</tr>
									<tr>
										<td align="right" valign="top">
											<font color="#FFFFFF">预选时间：</font>
										</td>
										<td align="left">
											<input name="firstChooseStartDate" type="text"
												value="${applicationScope.choosecourseschedule.firstChooseStartDateFormatString}"
												size="12" onblur="mouseOutEvn(this);" class="moveout" onfocus="mouseOverEvn(this);"/>
											<font color="#FFFFFF">—</font>
											<input name="firstChooseEndDate" type="text"
												value="${applicationScope.choosecourseschedule.firstChooseEndDateFormatString}"
												size="12" onblur="mouseOutEvn(this);" class="moveout" onfocus="mouseOverEvn(this);"/>
										</td>
										
									</tr>
									<tr>
										<td width="153" align="right" valign="top">
											<font color="#FFFFFF">补选时间：</font>
										</td>
										<td width="290" align="left">
											<input name="secondChooseStartDate" type="text"
												value="${applicationScope.choosecourseschedule.secondChooseStartDateFormatString}"
												size="12" onblur="mouseOutEvn(this);" class="moveout" onfocus="mouseOverEvn(this);"/>
											<font color="#FFFFFF">—</font>
											<input name="secondChooseEndDate" type="text"
												value="${applicationScope.choosecourseschedule.secondChooseEndDateFormatString}"
												size="12" onblur="mouseOutEvn(this);" class="moveout" onfocus="mouseOverEvn(this);"/>
										</td>
									</tr>
									<tr align="center">
										<td colspan="2" valign="top" name="msg">
											<font id="font" color="#00ff00" style="">${time_success }</font><font color="#FF0000" >${time_error }</font>
										</td>

									</tr>
									<tr align="center">
										<td colspan="2" valign="top">
											<font color="#FFFFFF">&nbsp;</font>
											<c:choose>
												<c:when test="${requestScope.chooseTime eq 1}">
													<font color:"#cccccc" size="3">添加</font>
												</c:when>
												<c:otherwise>
													<input type="submit" style="display:''" name="Submit"
													value="添加" onclick="change();" />
												</c:otherwise>
											</c:choose>
											&nbsp;
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
