package com.tarena.group3.choosecoursesystem.domain;

import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletContext;

/**
 * 补选任务实体
 * @author xiexiujie
 *
 */
public class TaskForChooseCourseOver extends TimerTask {
	
	private Timer timer;
	
	private ServletContext context;

	@Override
	public void run() {
		context=this.getContext();
		//取消选课计划
		context.removeAttribute("choosecourseschedule");
		timer.cancel();
		System.out.println("选课任务已结束");
	}

	public ServletContext getContext() {
		return context;
	}

	public void setContext(ServletContext context) {
		this.context = context;
	}

	public Timer getTimer() {
		return timer;
	}

	public void setTimer(Timer timer) {
		this.timer = timer;
	}
	
	

}
