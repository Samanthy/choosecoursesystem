package com.tarena.group3.choosecoursesystem.action;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import com.tarena.group3.choosecoursesystem.domain.ChooseCourseSchedule;
import com.tarena.group3.choosecoursesystem.domain.Student;
import com.tarena.group3.choosecoursesystem.service.IFirstChooseCourseSerivce;

/**
 * 预选Action
 * @author group3
 *
 */
public class FirstChooseCourseAction extends MappingDispatchAction {
	
	private IFirstChooseCourseSerivce firstChooseService;
	
	//判断是否在选课时间内，根据预选时间段和补选时间段回显不同的页面
	public ActionForward choose(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession();
		//从application中获取选课计划
		ChooseCourseSchedule ccs = (ChooseCourseSchedule)getServlet().getServletContext().getAttribute("choosecourseschedule");
		//如果选课计划存在并在预选时间，显示预选页面
		if(ccs!=null&&ccs.isInFirstChoose()){
			Student student =(Student) session.getAttribute("login_student");
			String sid=student.getSid();
			//查询预选时学生已选的课程
			List list=new ArrayList(firstChooseService.queryCourseBySidForFirstChoose(sid));
			request.setAttribute("list1", list);
			return mapping.findForward("success");
		}else if(ccs!=null&&ccs.isInChooseTime()){//如果选课计划存在并在补选时间内，显示补选页面
			return mapping.findForward("secondchoose_annou");
		}else{//否则不显示页面
			return null;
		}
	}
	
	//显示预选课程的信息
	public ActionForward show(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		Date date=new Date(System.currentTimeMillis());
		String cid=request.getParameter("cid");
		String tname=request.getParameter("tname");
		tname = new String(tname.getBytes("ISO-8859-1"),"GB2312");
		String cname=request.getParameter("cname");
		cname = new String(cname.getBytes("ISO-8859-1"),"GB2312");
		request.getSession().setAttribute("fcc_cid", cid);
		request.getSession().setAttribute("fcc_tname", tname);
		request.getSession().setAttribute("fcc_cname", cname);
		//查询预选的课程信息
		List list=firstChooseService.queryAllCourseForFirstChooseCourse(date, cid, cname, tname);
		HttpSession session=request.getSession();
		Student student =(Student) session.getAttribute("login_student");
		String sid=student.getSid();
		//查询该学生预选课程的信息
		List list1=new ArrayList(firstChooseService.queryCourseBySidForFirstChoose(sid));
		//已选课程的数量
		request.setAttribute("length", list1.size());
		request.setAttribute("list", list);
		request.setAttribute("list1", list1);
		return mapping.findForward("success");
	}
	
	//选定选修课
	public ActionForward add(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession();
		Student student =(Student) session.getAttribute("login_student");
		String sid=student.getSid();
		Integer id=Integer.parseInt(request.getParameter("id"));
		firstChooseService.firstChooseCourse(student.getId(),id);
		java.sql.Date date=(java.sql.Date) new Date(System.currentTimeMillis());
		String cid=(String) request.getSession().getAttribute("fcc_cid");
		String tname=(String)request.getSession().getAttribute("fcc_tname");
		String cname=(String)request.getSession().getAttribute("fcc_cname");
		List list=firstChooseService.queryAllCourseForFirstChooseCourse(date, cid, cname, tname);
		List list1=new ArrayList(firstChooseService.queryCourseBySidForFirstChoose(sid));
		request.setAttribute("length", list1.size());
		request.setAttribute("list1", list1);
		request.setAttribute("list", list);
		return mapping.findForward("success");
	}
	
	//删除已选的选修课
	public ActionForward delete(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession();
		Student student =(Student) session.getAttribute("login_student");
		String sid=student.getSid();
		Integer id=Integer.parseInt(request.getParameter("id"));
		firstChooseService.cancleFirstChoose(student.getId(), id);
		java.sql.Date date=(java.sql.Date) new Date(System.currentTimeMillis());
		String cid=(String) request.getSession().getAttribute("fcc_cid");
		String tname=(String)request.getSession().getAttribute("fcc_tname");
		String cname=(String)request.getSession().getAttribute("fcc_cname");
		List list=firstChooseService.queryAllCourseForFirstChooseCourse(date, cid, cname, tname);
		List list1=new ArrayList(firstChooseService.queryCourseBySidForFirstChoose(sid));
		request.setAttribute("length", list1.size());
		request.setAttribute("list", list);
		request.setAttribute("list1", list1);
		return mapping.findForward("success");
	}
	
	//更改密码
	public ActionForward updatepassword(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session=request.getSession();
		Student student =(Student) session.getAttribute("login_student");
		String sid=student.getSid();
		String password1=request.getParameter("password1");
		String password2=request.getParameter("password2");
		if(!password1.equals(password2)){
			request.setAttribute("status", 1);
			return mapping.findForward("success");
		}
		if(password1.equals(password2)){
			request.setAttribute("status", 0);
			firstChooseService.updateStudentPassword(sid, password1);
			return mapping.findForward("success");
		}
		return null;
	}

	public void setFirstChooseService(IFirstChooseCourseSerivce firstChooseService) {
		this.firstChooseService = firstChooseService;
	}

	
}
