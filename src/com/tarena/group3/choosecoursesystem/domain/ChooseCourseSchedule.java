package com.tarena.group3.choosecoursesystem.domain;

import java.io.Serializable;
import java.util.Date;

import com.tarena.group3.choosecoursesystem.util.ToolUtils;

/**
 * 选课计划类,封装选课的预选开始时间，预选结束时间，补选开始时间，补选结束时间
 * 用于学生选课操作
 * @author xiexiujie
 *
 */
public class ChooseCourseSchedule implements Serializable {

	private static final long serialVersionUID = 1338682339372697141L;

	//预选开始时间
	private Date firstChooseStartDate;
	
	//预选结束时间
	private Date firstChooseEndDate;
	
	//补选开始时间
	private Date secondChooseStartDate;
	
	//补选结束时间
	private Date secondChooseEndDate;

	public Date getFirstChooseStartDate() {
		return firstChooseStartDate;
	}
	
	/**
	 * 获取当前时间
	 * @return
	 */
	public long getNowTime(){
		return System.currentTimeMillis();
	}
	
	/**
	 * 判断目前是否处在选课时间
	 * @return
	 */
	public boolean isInChooseTime(){
		return firstChooseStartDate.getTime()<getNowTime()&&firstChooseEndDate.getTime()>getNowTime()||secondChooseStartDate.getTime()<getNowTime()&&secondChooseEndDate.getTime()>getNowTime();
	}
	
	public boolean isInFirstChoose(){
		return firstChooseStartDate.getTime()<getNowTime()&&firstChooseEndDate.getTime()>getNowTime();
	}
	
	/**
	 * 获取格式化后的预选开始日期字符串
	 * @return
	 */
	public String getFirstChooseStartDateFormatString(){
		return ToolUtils.formatDate(firstChooseStartDate);
	}

	public void setFirstChooseStartDate(Date firstChooseStartDate) {
		this.firstChooseStartDate = firstChooseStartDate;
	}
	
	/**
	 * 获取格式化后的预选结束日期字符串
	 * @return
	 */
	public String getFirstChooseEndDateFormatString(){
		return ToolUtils.formatDate(new Date(firstChooseEndDate.getTime()-60*60*24*1000));
	}

	public Date getFirstChooseEndDate() {
		return firstChooseEndDate;
	}
	
	/**
	 * 获取格式化后的补选开始日期字符串
	 * @return
	 */
	public String getSecondChooseStartDateFormatString(){
		return ToolUtils.formatDate(secondChooseStartDate);
	}

	public void setFirstChooseEndDate(Date firstChooseEndDate) {
		this.firstChooseEndDate = firstChooseEndDate;
	}

	public Date getSecondChooseStartDate() {
		return secondChooseStartDate;
	}

	public void setSecondChooseStartDate(Date secondChooseStartDate) {
		this.secondChooseStartDate = secondChooseStartDate;
	}

	public Date getSecondChooseEndDate() {
		return secondChooseEndDate;
	}

	/**
	 * 获取格式化后的选补结束日期字符串
	 * @return
	 */
	public String getSecondChooseEndDateFormatString(){
		return ToolUtils.formatDate(new Date(secondChooseEndDate.getTime()-60*60*24*1000));
	}
	
	public void setSecondChooseEndDate(Date secondChooseEndDate) {
		this.secondChooseEndDate = secondChooseEndDate;
	}

}
