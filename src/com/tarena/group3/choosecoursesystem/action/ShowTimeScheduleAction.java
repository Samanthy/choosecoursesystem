package com.tarena.group3.choosecoursesystem.action;

import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.tarena.group3.choosecoursesystem.domain.ChooseCourseSchedule;

/**
 * 显示选课计划设置界面
 * @author xiexiujie
 *
 */
public class ShowTimeScheduleAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm arg1, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ServletContext context = this.getServlet().getServletContext();
		ChooseCourseSchedule ccs = (ChooseCourseSchedule)context.getAttribute("choosecourseschedule");
		//chooseTime设置为0,让页面显示添加按钮；设置为1,让页面不能使用添加按钮
		if(ccs==null){
			request.setAttribute("chooseTime", "0");
		}else{
			long now = new Date().getTime();
			if(ccs.getFirstChooseStartDate().getTime()<now&&ccs.getFirstChooseEndDate().getTime()>now||ccs.getSecondChooseStartDate().getTime()<now&&ccs.getSecondChooseEndDate().getTime()>now){
				request.setAttribute("chooseTime", "1");
			}else{
				request.setAttribute("chooseTime", "0");
			}
		}
		return mapping.findForward("success");
	}

}
