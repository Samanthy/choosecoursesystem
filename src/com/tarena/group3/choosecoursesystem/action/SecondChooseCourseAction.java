package com.tarena.group3.choosecoursesystem.action;

import java.sql.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.actions.MappingDispatchAction;

import com.tarena.group3.choosecoursesystem.dao.ICourseDao;
import com.tarena.group3.choosecoursesystem.dao.IStudentDao;
import com.tarena.group3.choosecoursesystem.domain.ChooseCourseEntity;
import com.tarena.group3.choosecoursesystem.domain.Course;
import com.tarena.group3.choosecoursesystem.domain.Student;

/**
 * 补选课程操作
 * @author lee
 *
 */
public class SecondChooseCourseAction extends MappingDispatchAction{
	
	
	//日志管理
	private Logger logger = Logger.getLogger(SecondChooseCourseAction.class);

	private ICourseDao courseDao;
	
	private IStudentDao studentDao;
	
	public ICourseDao getCourseDao() {
		return courseDao;
	}

	public void setCourseDao(ICourseDao courseDao) {
		this.courseDao = courseDao;
	}

	public IStudentDao getStudentDao() {
		return studentDao;
	}

	public void setStudentDao(IStudentDao studentDao) {
		this.studentDao = studentDao;
	}
	
	/**
	 * 本学期已选修课
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward now_choose(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		/**
		 * 展示学生本学期已经选择的选修课
		 */
		Student student =  (Student) request.getSession().getAttribute("login_student");
		String sid = student.getSid();
		logger.info("now_choose==>"+" sid-->"+sid);
        Set<Course> set = courseDao.queryCourseBySidForSecondChoose(sid);
        logger.debug("set-->"+set);
		request.setAttribute("now_choose", set);
	    
		return mapping.findForward("now_choose");
	}
	
	/**
	 * 选修课补选公告
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward secondchoose_annou(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		/**
		 * 展示学生预选中成功的课程，课进入选课选修剩余的课程
		 */
		Student student =  (Student) request.getSession().getAttribute("login_student");
		String sid = student.getSid();
		logger.info("secondchoose_annou==>sid-->"+sid);
	    Set<Course> set = courseDao.queryCourseBySidForSecondChoose(sid);
	    logger.debug("secondchoose_annou==>"+set);
	    request.setAttribute("course_second_id", set);
	    //限定选课数目
        request.setAttribute("size", set.size());
	    
		return mapping.findForward("secondchoose_annou");
	}
	
    /**
     * 选修课补选
     * @param mapping
     * @param form
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
	public ActionForward secondchoose(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		/**
		 * 根据条件模糊查询结课时间比当前晚且未满的课程
		 */
		Date now = new Date(System.currentTimeMillis());
		String cid = request.getParameter("cid")==null?"":request.getParameter("cid");
		String cname = request.getParameter("cname")==null?"":request.getParameter("cname");
		String tname=request.getParameter("tname")==null?"":request.getParameter("tname");
	    //解决中文
		cname = new String(cname.getBytes("ISO-8859-1"),"GB2312");
	    tname = new String(tname.getBytes("ISO-8859-1"),"GB2312");
	    //保存在session中
	    request.getSession().setAttribute("scc_cid", cid);
	    request.getSession().setAttribute("scc_tname", tname);
	    request.getSession().setAttribute("scc_cname", cname);
		logger.info("secondchoose:  "+"cid==>"+cid+" ,cname==>"+cname+" ,tname==>"+tname);
		List<ChooseCourseEntity> list =  courseDao.queryAllCourseForSecondChooseCourse(now, cid, cname, tname);
		logger.debug("secondchoose1==>"+list);
		request.setAttribute("secondchoose", list);
		
		/**
		 * 查询学生这学期已选中的课程
		 */
		Student student =  (Student) request.getSession().getAttribute("login_student");
		String sid = student.getSid();
		logger.info("secondchoose==>sid-->"+sid);
	    Set<Course> set = courseDao.queryCourseBySidForSecondChoose(sid);
	    logger.debug("secondchoose2==>"+set);
	    request.setAttribute("course_second_id", set);
	    //选定限制
	    int num = set.size();
	    request.setAttribute("choose_size", num);
	    
		return mapping.findForward("secondchoose");
	}
	
	/**
	 * 删除操作
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	
	public ActionForward delete(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		/**
		 * 根据学生主键和课程主键在课程表中删除所有的课程
		 */
		Student student =  (Student) request.getSession().getAttribute("login_student");
		int sid = student.getId();
		int cid = Integer.parseInt(request.getParameter("id"));
		logger.info("delete==>"+" sid-->"+sid+" ,cid-->"+cid);
        courseDao.cancleSecondChoose(sid, cid);
        
        response.sendRedirect("secondchoose_annou.do");
		return null;
	}
    
	/**
	 * 删除操作
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	
	public ActionForward deleteForSecond(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		/**
		 * 根据学生主键和课程主键在课程表中删除所有的课程
		 */
		Student student =  (Student) request.getSession().getAttribute("login_student");
		int sid = student.getId();
		int cid = Integer.parseInt(request.getParameter("id"));
		logger.info("delete==>"+" sid-->"+sid+" ,cid-->"+cid);
        courseDao.cancleSecondChoose(sid, cid);
    	String cid2 = (String)request.getSession().getAttribute("scc_cid");
    	String cname =(String)request.getSession().getAttribute("scc_cname");
    	String tname =(String)request.getSession().getAttribute("scc_tname");
		List<ChooseCourseEntity> list =  courseDao.queryAllCourseForSecondChooseCourse(new Date(System.currentTimeMillis()), cid2, cname, tname);
		logger.debug("secondchoose1==>"+list);
		request.setAttribute("secondchoose", list);
		
		/**
		 * 查询学生这学期已选中的课程
		 */

	    Set<Course> set = courseDao.queryCourseBySidForSecondChoose(student.getSid());
	    logger.debug("secondchoose2==>"+set);
	    request.setAttribute("course_second_id", set);
	    //选定限制
	    int num = set.size();
	    request.setAttribute("choose_size", num);
	    
		return mapping.findForward("secondchoose");
	}

	/**
	 * 密码修改
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward password_update(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		/**
		 * 修改密码
		 */
		DynaActionForm form1 = (DynaActionForm)form;
		String sid = form1.getString("sid");
		String password1 = form1.getString("tpassword");
		String password2 = form1.getString("tppassword");
        logger.info("update_password==>"+" sid-->"+sid+", password1-->"+password1+" ,password2-->"+password2);
        if(password1.equals(password2) ){
        	studentDao.updateStudentPassword(sid, password1);
        	request.setAttribute("status", 1);
        }else{
        	request.setAttribute("status", 0);
        }
		return mapping.findForward("password_update");
	}
	
	/**
	 * 查看以往所选课程和所得分数
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward see_credit(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		/**
		 * 查询以往的选修课和所得的学分
		 */
		Student student = (Student)request.getSession().getAttribute("login_student");
		String sid = student.getSid();
		logger.info("see_credit==>sid-->"+sid);
		List<Course> list = courseDao.queryAllHistoryCourseBySid(sid);
	    logger.debug("see_credit==>"+list);
		request.setAttribute("see_credit", list);
		
		return mapping.findForward("see_credit");
	}
	
	public ActionForward add_course(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		/**
		 * 查询以往的选修课和所得的学分
		 */
		Student student = (Student)request.getSession().getAttribute("login_student");
		int sid = student.getId();
		String cid1 = request.getParameter("cid");
		int cid = Integer.parseInt(cid1);
		logger.info("see_credit==>sid-->"+sid+" ,cid-->"+cid);
		boolean b = courseDao.secondChooseCourse(sid, cid);
		System.out.println(b);
		if(!b){request.setAttribute("courseFull","1");}
		logger.debug("add_course");
		String cid2 = (String)request.getSession().getAttribute("scc_cid");
		String cname =(String)request.getSession().getAttribute("scc_cname");
		String tname =(String)request.getSession().getAttribute("scc_tname");
		List<ChooseCourseEntity> list =  courseDao.queryAllCourseForSecondChooseCourse(new Date(System.currentTimeMillis()), cid2, cname, tname);
		logger.debug("secondchoose1==>"+list);
		request.setAttribute("secondchoose", list);
		
		/**
		 * 查询学生这学期已选中的课程
		 */

	    Set<Course> set = courseDao.queryCourseBySidForSecondChoose(student.getSid());
	    logger.debug("secondchoose2==>"+set);
	    request.setAttribute("course_second_id", set);
	    //选定限制
	    int num = set.size();
	    request.setAttribute("choose_size", num);
	    
		return mapping.findForward("secondchoose");
	}
}
