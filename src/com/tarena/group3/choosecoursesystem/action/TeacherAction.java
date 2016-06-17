package com.tarena.group3.choosecoursesystem.action;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;
import com.tarena.group3.choosecoursesystem.domain.Course;
import com.tarena.group3.choosecoursesystem.domain.StudentScoreEntity;
import com.tarena.group3.choosecoursesystem.domain.Teacher;
import com.tarena.group3.choosecoursesystem.service.ITeacherService;
import com.tarena.group3.choosecoursesystem.util.Constants;

/**
 * 教师管理Action
 * @author group3
 *
 */
public class TeacherAction extends MappingDispatchAction {
	
	private ITeacherService teacherService;
	
	public void setTeacherService(ITeacherService teacherService) {
		this.teacherService = teacherService;
	}
	
	 //显示此老师所带的所有选修课程
	public ActionForward showAllCourses(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		Teacher teacher=(Teacher)request.getSession().getAttribute(Constants.LOGIN_TEACHER);
		if(teacher!=null){
			List<Course> courses=teacherService.getCourseByTeacherId(teacher.getTid());
			int courseSize=courses.size();
			request.setAttribute("courseNum",courseSize);
			request.setAttribute(Constants.COURSE_BYTID,courses);
			return mapping.findForward("success");
		}
		return null;
	}
	
	//显示所修此门课程的所有学生
	public ActionForward showAllStudents(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		//得到课程的编号 
		String cid=request.getParameter("cid");
		if(cid!=null){
			List<StudentScoreEntity> students=teacherService.getAllStudentsByCourseId(cid);
			int studentSize=students.size();
			request.setAttribute("studentNum",studentSize);
			request.setAttribute(Constants.STUDENT_BYCID,students);
			request.setAttribute("cidStr",cid);
			return mapping.findForward("success");
		}
		return null;
		
	}
	
	//添加学生成绩 
	public ActionForward AddStudentsScore(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		//得到课程的编号 
		String cid=request.getParameter("cid");
		if(cid!=null){
			List<StudentScoreEntity> students=teacherService.getAllStudentsByCourseId(cid);
			for(int i=0;i<students.size();i++){
				String score=request.getParameter("student_score_"+i);
				if(score!=""){
					students.get(i).setScore(Double.parseDouble(score));
				}
			}
			teacherService.addStudentScores(students);
			return mapping.findForward("success");
		}
		return null;
	}
	
	//修改老师的个人密码
	public ActionForward updateTeacherPassword(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		String newPassword=request.getParameter("newPassword");
		String confirmPwd=request.getParameter("confirmPwd");
		Teacher teacher=(Teacher)request.getSession().getAttribute(Constants.LOGIN_TEACHER);
		boolean flags=true;
		if(teacher!=null&&newPassword.equals(confirmPwd)){
			teacherService.modifyTeacherPassword(teacher.getTid(), newPassword);
		}else{
			flags=false;
		}
		request.setAttribute("issuccess",flags);
		return mapping.findForward("success");
	}
	
}
