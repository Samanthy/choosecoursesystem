package com.tarena.group3.choosecoursesystem.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import com.tarena.group3.choosecoursesystem.domain.ChooseCourseSchedule;
import com.tarena.group3.choosecoursesystem.domain.TaskForBallot;
import com.tarena.group3.choosecoursesystem.domain.TaskForChooseCourseOver;

/**
 * 处理选课计划安排的Action
 * @author group3
 *
 */
public class ProcessAction extends MappingDispatchAction {

	//设置时间
	public ActionForward releaseTime(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String firstTimeStartParam = request.getParameter("firstChooseStartDate");
		String firstTimeEndParam = request.getParameter("firstChooseEndDate");
		String secondTimeStartParam = request.getParameter("secondChooseStartDate");
		String secondTimeEndParam = request.getParameter("secondChooseEndDate");
		try {
			if (!firstTimeStartParam.equals("") && !firstTimeEndParam.equals("")
					&& !secondTimeStartParam.equals("") && !secondTimeEndParam.equals("")) {
				//构造选课计划对象
				ChooseCourseSchedule schedule = new ChooseCourseSchedule();
				//把指定格式的日期参数转化为日期对象
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Date firstTimeStart = (Date) format.parse(firstTimeStartParam);
				Date firstTimeEnd = (Date) format.parse(firstTimeEndParam);
				Date secondTimeStart = (Date) format.parse(secondTimeStartParam);
				Date secondTimeEnd = (Date) format.parse(secondTimeEndParam);
				
				ServletContext context = this.getServlet().getServletContext();
				//获取当前的时间
				Date currentTime = new Date();
				//将预选时间和补选时间往后推一天
				firstTimeEnd = new Date(firstTimeEnd.getTime()+60*60*24*1000);
				secondTimeEnd = new Date(secondTimeEnd.getTime()+60*60*24*1000);
				
				System.out.println("**********************************");
				System.out.println("currentTime:" + format.format(currentTime));
				System.out.println("firstTimeEnd" + format.format(firstTimeEnd));
				//初始化选课计划
				schedule.setFirstChooseStartDate(firstTimeStart);
				schedule.setFirstChooseEndDate(firstTimeEnd);
				schedule.setSecondChooseStartDate(secondTimeStart);
				schedule.setSecondChooseEndDate(secondTimeEnd);
				//取消已有计划
				TaskForBallot tfb = (TaskForBallot)getServlet().getServletContext().getAttribute("taskforballot");
				if(tfb!=null){
					tfb.cancel();
				}
				TaskForChooseCourseOver tfcc = (TaskForChooseCourseOver)getServlet().getServletContext().getAttribute("taskforchoosecourseover");
				if(tfcc!=null){
					tfcc.cancel();
				}
				//如果预选结束时间比当前时间晚，则设置预选任务，在预选结束时，进行系统抽签
				if(schedule.getFirstChooseEndDate().getTime()>schedule.getNowTime()){
					System.out.println("Start timerForBallot");
					TaskForBallot taskForBallot = getTaskForBallot();
					Timer timerForBallot = new Timer();
					taskForBallot.setTimer(timerForBallot);
					context.setAttribute("taskforballot", taskForBallot);
					timerForBallot.schedule(taskForBallot, firstTimeEnd);
				}
				//设置补选任务，在补选结束时，删除选课计划
				Timer timerForChooseCourseOver = new Timer();
				TaskForChooseCourseOver taskForChooseCourseOver= new TaskForChooseCourseOver();
				taskForChooseCourseOver.setTimer(timerForChooseCourseOver);
				taskForChooseCourseOver.setContext(this.getServlet().getServletContext());
				context.setAttribute("taskforchoosecourseover", taskForChooseCourseOver);
				timerForChooseCourseOver.schedule(taskForChooseCourseOver, secondTimeEnd);
				context.setAttribute("choosecourseschedule", schedule);
				request.setAttribute("time_success", "设置成功!");
				long now = new Date().getTime();
				//判断现在是否在预选或补选时间段内，是的话，添加按钮失效
				if(schedule.getFirstChooseStartDate().getTime()<now&&schedule.getFirstChooseEndDate().getTime()>now||schedule.getSecondChooseStartDate().getTime()<now&&schedule.getSecondChooseEndDate().getTime()>now){
					request.setAttribute("chooseTime", "1");
				}else{
					request.setAttribute("chooseTime", "0");
				}
			}else{
				request.setAttribute("time_error", "添加错误，填写有误");
			}
		} catch (Exception e) {
			request.setAttribute("time_error", "添加错误，填写有误");
		}
		return mapping.findForward("success");
	}
	
	//look-up注入TaskForBallot
	public TaskForBallot getTaskForBallot(){
		return null;
	}
}
