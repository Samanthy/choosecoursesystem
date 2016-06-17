package com.tarena.group3.choosecoursesystem.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 * 显示登录主页面的Action
 * @author group3
 *
 */
public class MainAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		//获取登录类型
		Integer type = (Integer)request.getSession().getAttribute("login_type");
		if(type!=null){
			if(type==1){//设置学生的路径
				request.setAttribute("main_jsp", "student/student_index.jsp");
				request.setAttribute("menu_jsp", "student/student_menu.jsp");
			}else if(type==2){//设置教师的路径
				request.setAttribute("main_jsp", "teacher/teacher_index.jsp");
				request.setAttribute("menu_jsp", "teacher/teacher_menu.jsp");
			}else if(type==3){//设置管理员的路径
				request.setAttribute("main_jsp", "admin/admin_index.jsp");
				request.setAttribute("menu_jsp", "admin/admin_menu.jsp");
			}else{
				return null;
			}
			return mapping.findForward("showMain");
		}
		return null;
	}
}
