package com.tarena.group3.choosecoursesystem.action;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.tarena.group3.choosecoursesystem.domain.Admin;
import com.tarena.group3.choosecoursesystem.domain.Student;
import com.tarena.group3.choosecoursesystem.domain.Teacher;
import com.tarena.group3.choosecoursesystem.util.CookieUtils;

/**
 * 登出Action
 * @author group3
 *
 */
public class LoginOutAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		ServletContext context = this.getServlet().getServletContext();
		HttpSession session = request.getSession();
		//获取登录类型
		Integer type = (Integer)request.getSession().getAttribute("login_type");
		//获取已登录用户的信息
		Map map = (Map)context.getAttribute("login_user_map");
		//注销不同的用户
		if(type!=null){
			if(type==1){
				Student student = (Student)session.getAttribute("login_student");
				map.remove(student.getSid());
			}else if(type==2){
				Teacher teacher = (Teacher)session.getAttribute("login_teacher");
				map.remove(teacher.getTid());
			}else if(type==3){
				Admin admin = (Admin)session.getAttribute("login_admin");
				map.remove(admin.getAid());
			}
		}
		request.getSession().invalidate();
		//清除Cookie
		CookieUtils.deleteCookie(response, "login_id");
		CookieUtils.deleteCookie(response, "login_type");
		return mapping.findForward("success");
	}
}
