<%@include file="../common/common.jsp" %>
<%@page contentType="text/html;charset=gb2312"%>
<html>
<head>
<title>ѧ��ѡ�ι���ϵͳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="../css/main.css" rel="stylesheet" type="text/css"/>
</head>

<body bgcolor="#FFFFFF" text="#666666" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" link="#FF9900" vlink="#006699">
<br/>
<table width="702" border="0" cellspacing="1" cellpadding="3" align="center">
  <tr>
    <td width="694"> 
      <table width="716" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="91"><img src="../image/ba_student.gif" width="91" height="48"/></td>
          <td width="622" valign="bottom"> 
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
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="694" align="right"> 
      <table width="709" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td width="8"><img src="../image/obj_frame_top1.gif" width="8" height="22"/></td>
          <td width="694" background="../image/obj_frame_top2.gif">&nbsp;</td>
          <td width="8"><img src="../image/obj_frame_top3.gif" width="8" height="22"/></td>
        </tr>
        <tr bgcolor="#6699FF"> 
          <td colspan="3"> 
              <table width="700" border="0" cellspacing="1" cellpadding="1">
              <tr> 
                <td colspan="2" valign="top"><div align="center"><font color="#FFFFFF" size="3"><strong>�鿴������ѡ�γ̺�����ѧ��</strong></font></div></td>
              </tr>
              <tr align="left"> 
                <td colspan="2" valign="top" bordercolor="#FFFFFF"> <hr/> <div style="display:block;overflow-y:scroll;overflow-x:auto;height:100px;"> 
                    <table cellspacing='0' cellpadding='0' width="100%"  border="1">
                      <tr class="tabhead"> 
                        <td><div align="center">ѡ�޿α��</div></td>
                        <td><div align="center">ѡ�޿�����</div></td>           
                        <td><div align="center">������ʦ</div></td>
                        <td><div align="center">�ɼ�</div></td>
                        <td><div align="center">����ѧ��</div></td>
                      </tr>
                      <c:if test="${fn:length(requestScope.see_credit)>0 }" var="flag">
	                       <c:forEach items="${requestScope.see_credit }" var="list">
	                      <tr> 
	                        <td><div align="center"><font color="#FFFFFF">${list.cid }</font></div></td>
	                        <td><div align="center"><font color="#FFFFFF">${list.cname }</font></div></td>
	                        <td><div align="center"><font color="#FFFFFF">${list.teacher.tname }</font></div></td>
	                        <td><div align="center"><font color="#FFFFFF">${list.score }</font></div></td>
	                        <td><div align="center"><font color="#FFFFFF">${list.credit }</font></div></td>
	                      </tr>
	                       </c:forEach>
                       </c:if>
                       <c:if test="${!flag }">
	                       <tr> 
	                        <td colspan="10" valign="top"><div align="center"><font color="#FFFFFF">�㻹û���κ�����ѡ�޿���Ϣ</font></div></td>
	                      </tr>
                       </c:if>
                    </table>
                  </div></td>
              </tr>
              <tr align="left"> 
                <td colspan="2" valign="top">&nbsp;</td>
              </tr>
            </table>
		  </td>
        <tr> 
          <td width="8" valign="top"><img src="../image/obj_frame_bottom1.gif" width="8" height="18"/></td>
          <td width="694" background="../image/obj_frame_bottom2.gif">&nbsp;</td>
          <td width="8" valign="top"><img src="../image/obj_frame_bottom3.gif" width="8" height="18"/></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="694">&nbsp;</td>
  </tr>
</table>
</body>
</html>
