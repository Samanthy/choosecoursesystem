package com.tarena.group3.choosecoursesystem.action;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import com.tarena.group3.choosecoursesystem.domain.Course;
import com.tarena.group3.choosecoursesystem.domain.Room;
import com.tarena.group3.choosecoursesystem.domain.StudentScoreEntity;
import com.tarena.group3.choosecoursesystem.domain.Teacher;
import com.tarena.group3.choosecoursesystem.form.AdminCourseForm;
import com.tarena.group3.choosecoursesystem.service.IAdminCourseService;
import com.tarena.group3.choosecoursesystem.service.IRoomService;
import com.tarena.group3.choosecoursesystem.util.ToolUtils;

/**
 * 课程管理Action
 * @author group3
 *
 */
public class AdminCourseAction extends MappingDispatchAction {
	
	private IAdminCourseService adminCourseService;
	
	private IRoomService roomService;

	public IRoomService getRoomService() {
		return roomService;
	}

	public void setRoomService(IRoomService roomService) {
		this.roomService = roomService;
	}

	public IAdminCourseService getAdminCourseService() {
		return adminCourseService;
	}

	public void setAdminCourseService(IAdminCourseService adminCourseService) {
		this.adminCourseService = adminCourseService;
	}
	
	//------------------------显示增加页面--------------------------------
	public ActionForward showCourseadd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		System.out.println("AdminCourseAction.showCourseadd...");
		//查询所有的教室，提供选择
		List<Room> rooms = roomService.queryAllRoom();
		request.setAttribute("rooms", rooms);
		return mapping.findForward("success");
	}

	//------------------------增加--------------------------------
	public ActionForward insertCourse(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		System.out.println("AdminCourseAction.insertCourse...");
		AdminCourseForm f = (AdminCourseForm)form;
		//判断课程编号是否已经存在
		boolean notexist = adminCourseService.ifCidNotExist(f.getCid());
		//已经存在返回错误信息
		if(!notexist){
			request.setAttribute("exist", 1);
			request.setAttribute("fail", 1);
			return mapping.findForward("fail");
		}
		//获取所有指定星期未被使用的教室
		List<Room> rooms = roomService.queryAllRoomUnUse(new Date(System.currentTimeMillis()).toString(), f.getWeek());
		//判断提交的教室是否在指定星期正被使用
		boolean roomunuser = rooms.contains(roomService.queryRoomById(Integer.parseInt(f.getRid())));
		if(!roomunuser){
			request.setAttribute("roomuse", 1);
			request.setAttribute("fail", 1);
			return mapping.findForward("fail");
		}
		//生成课程对象
		Course course = getCourse(f.getCid(), f.getCname(), f.getStartDate(), f.getEndDate(), f.getCredit(), 
				f.getSchoolTime(), f.getWeek(), f.getTid(), Integer.parseInt(f.getRid()));
		//判断代课老师的编号是否存在
		if(course.getTeacher()==null){
			request.setAttribute("tidnotexists", 1);
			request.setAttribute("fail", 1);
			return mapping.findForward("fail");
		}
		//插入课程
		boolean flag = adminCourseService.insertCourse(course);
		if(!flag){
			request.setAttribute("fail", 1);
			return mapping.findForward("fail");
		}
		List<Room> roomList = roomService.queryAllRoom();
		request.setAttribute("rooms", roomList);
		request.setAttribute("insertSucc", 1);
		return mapping.findForward("success");
	}
	
//	------------------------显示查询／修改／删除页面--------------------------------
	public ActionForward showCourseoption(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		System.out.println("AdminCourseAction.showoption...");
		//查询所有的课程
		List<Course> courses = adminCourseService.getAllCourses();
		//判断是否有课程信息
		if(courses.isEmpty()){
			request.setAttribute("isEmpty", 1);
		}else{
			request.setAttribute("isEmpty", 0);
			request.setAttribute("courses", courses);
		}
		return mapping.findForward("success");
	}

//	------------------------查询--------------------------------
	public ActionForward queryCourse(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("AdminCourseAction.query...");
		String cid = request.getParameter("cid");
		String cname = request.getParameter("cname");
		String tname = request.getParameter("tname");
		String tid = request.getParameter("tid");
		System.out.println(tid);
		//根据要求查询指定的所有课程
		List<Course> courses = adminCourseService.queryAllCourseByRequired(new Date(System.currentTimeMillis()), cid, cname, tid, tname);
		System.out.println(courses);
		//是否有该条件的课程
		if(courses.isEmpty()){
			request.setAttribute("isEmpty", 1);
		}else{
			request.setAttribute("isEmpty", 0);
			request.setAttribute("courses", courses);
		}
		request.setAttribute("cid", cid);
		request.setAttribute("cname", cname);
		request.setAttribute("tname", tname);
		request.setAttribute("tid", tid);
		return mapping.findForward("success");
	}

//	------------------------删除--------------------------------
	public ActionForward deleteCourse(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("AdminCourseAction.deleteCourse...");
		String courseid = request.getParameter("courseid");
		//删除指定的课程
		boolean flag = adminCourseService.deleteCourse(Integer.parseInt(courseid));
//		if(flag){
//			return mapping.findForward("success");
//		}
//		//TODO...
		return mapping.findForward("success");
	}
	
//	------------------------显示修改页面--------------------------------
	public ActionForward showCourseupdate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("AdminCourseAction.showCourseupdate...");
		AdminCourseForm f = null;
		//判断Form是否存在
		if(request.getSession().getAttribute("adminCourseForm")==null){
			f = new AdminCourseForm();
		}else{
			f = (AdminCourseForm)request.getSession().getAttribute("adminCourseForm");
			System.out.println(f.getCid());
		}
		String cid = request.getParameter("cid");
		Course course = null;
		System.out.println("cid="+cid);
		//是否传递了课程编号参数
		if(cid!=null){
			course = adminCourseService.queryCourseByCid(cid);
		}else{
			//未传递的话，说明是页面更新操作结束转发过来的，已经有Form对象在Session中了，直接到
			//Form对象中取课程编号
			course = adminCourseService.queryCourseByCid(f.getCid());
			System.out.println(course);
		}
		//查询所有的教室
		List<Room> rooms = roomService.queryAllRoom();
		request.setAttribute("rooms", rooms);
		//更新Form对象的信息，显示在页面上
		f.setId(course.getId());
		f.setCid(course.getCid());
		f.setCname(course.getCname());
		f.setCredit(course.getCredit()+"");
		f.setEndDate(ToolUtils.formatDate(course.getEndDate()));
		f.setRid(course.getRoom().getId()+"");
		f.setSchoolTime(course.getSchoolTime());
		f.setStartDate(ToolUtils.formatDate(course.getStartDate()));
		f.setTid(course.getTeacher().getTid());
		f.setWeek(course.getWeek());
		request.getSession().setAttribute("adminCourseForm", f);
		return mapping.findForward("success");
	}

//	------------------------修改课程--------------------------------
	public ActionForward updateCourse(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("AdminCourseAction.updateCourse...");
		AdminCourseForm f = (AdminCourseForm)form;
		//查询所有的课程信息
		List<Room> roomList = roomService.queryAllRoom();
		request.setAttribute("rooms", roomList);
		//查询以往的课程对象
		Course tempCourse = adminCourseService.queryCourseByCid(f.getCid());
		//如果占用教室或星期有修改过，再判断教室是否被占用过
		if(!tempCourse.getRoom().getId().equals(Integer.parseInt(f.getRid()))||!tempCourse.getWeek().equals(f.getWeek())){
			List<Room> rooms = roomService.queryAllRoomUnUse(new Date(System.currentTimeMillis()).toString(), f.getWeek());
			boolean roomunuser = rooms.contains(roomService.queryRoomById(Integer.parseInt(f.getRid())));
			if(!roomunuser){
				request.setAttribute("roomuse", 1);
				request.setAttribute("fail", 1);
				return mapping.findForward("fail");
			}
		}
		Course course = getCourse(f.getCid(), f.getCname(), f.getStartDate(), f.getEndDate(), f.getCredit(), 
				f.getSchoolTime(), f.getWeek(), f.getTid(), Integer.parseInt(f.getRid()));
		course.setId(f.getId());
		//判断教师编号是否存在
		if(course.getTeacher()==null){
			request.setAttribute("tidnotexists", 1);
			request.setAttribute("fail", 1);
			return mapping.findForward("fail");
		}
		boolean flag = adminCourseService.updateCourse(course);
		if(!flag){
			request.setAttribute("fail", 1);
			f.setCname(course.getCname());
			f.setCredit(course.getCredit()+"");
			f.setEndDate(ToolUtils.formatDate(course.getEndDate()));
			f.setRid(course.getRoom().getId()+"");
			f.setSchoolTime(course.getSchoolTime());
			f.setStartDate(ToolUtils.formatDate(course.getStartDate()));
			f.setTid(course.getTeacher().getTid());
			f.setWeek(course.getWeek());
			return mapping.findForward("fail");
		}
		request.setAttribute("insertSucc", 1);
		return mapping.findForward("success");
	}
	
//	------------------------显示代课老师--------------------------------
	public ActionForward showTeacher(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		System.out.println("AdminCourseAction.showTeacher...");
		String cid = request.getParameter("cid");
		Teacher teacher = adminCourseService.queryTeacherByCourseCid(cid);
		request.setAttribute("teacher", teacher);
		return mapping.findForward("success");
	}
	
//	-----------------------显示所有学生--------------------------------
	public ActionForward showAllStudents(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		System.out.println("AdminCourseAction.showAllStudents...");
		String cid = request.getParameter("cid");
		List<StudentScoreEntity> entities = adminCourseService.queryAllStudentsByCourseCid(cid);
		if(entities.isEmpty()){
			request.setAttribute("isEmpty", 1);
		}else{
			request.setAttribute("isEmpty", 0);
			request.setAttribute("entities", entities);
		}
		request.setAttribute("cid", cid);
		return mapping.findForward("success");
	}
	
//	-----------------------修改学生的分数--------------------------------
	public ActionForward updateScore(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response){
		String cid = request.getParameter("cid");
		String sid = request.getParameter("sid");
		String newscore = request.getParameter("newscore");
		adminCourseService.updateStudentScore(cid, sid, Double.parseDouble(newscore));
		try {
			response.getWriter().print(1);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//构造课程对象，如果教师编号不存在，教师为null
	private Course getCourse(String cid, String cname, String startDate, String endDate, 
			String credit, String schoolTime, String week, String tid, Integer rid){
		System.out.println("执行getCourse方法...");
		Course course = new Course();
		Teacher teacher = adminCourseService.queryTeacherByTid(tid);
		if(teacher==null){
			System.out.println("这个老师不存在！");
			course.setTeacher(null);
		}else{
			course.setTeacher(teacher);
			System.out.println("设置老师成功！");
		}
		try {
			course.setCid(cid);
			course.setCname(cname);
			course.setStartDate(Date.valueOf(startDate));
			course.setEndDate(Date.valueOf(endDate));
			course.setCredit(Integer.parseInt(credit));
			course.setSchoolTime(schoolTime);
			course.setWeek(week);
			course.setRoom(roomService.queryRoomById(rid));
		} catch (NumberFormatException e) {
			System.out.println("课程生成不成功！"+e.getMessage());
			return null;
		}
		System.out.println("得到course："+course);
		return course;
	}
}
