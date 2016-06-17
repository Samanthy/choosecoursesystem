package com.tarena.group3.choosecoursesystem.form;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.validator.ValidatorForm;

/**
 * 课程Form
 * @author xiexiujie
 *
 */
public class AdminCourseForm extends ValidatorForm {

	private static final long serialVersionUID = -524447734582809251L;
	
	private Integer id;

	//课程的编号cid
	private String cid;
	
	//课程的名称
	private String cname;
	
	//课程的开课日期
	private String startDate;
	
	//课程的结课日期
	private String endDate;
	
	//课程的学分
	private String credit;
	
	//课程的上课时间段
	private String schoolTime;
	
	//课程上课的星期
	private String week;
	
	//课程的代课老师的编号
	private String tid;
	
	//课程所占教室的id
	private String rid;

	public String getRid() {
		return rid;
	}

	public void setRid(String rid) {
		this.rid = rid;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCredit() {
		return credit;
	}

	public void setCredit(String credit) {
		this.credit = credit;
	}

	public String getSchoolTime() {
		return schoolTime;
	}

	public void setSchoolTime(String schoolTime) {
		this.schoolTime = schoolTime;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		System.out.println("validate......");
		ActionErrors errors = super.validate(mapping, request);
		System.out.println(errors.isEmpty());
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try{
			if(errors.size("startDate")==0 && errors.size("endDate")==0){
				System.out.println("验证成功！");
				Date start = format.parse(startDate);
				Date end = format.parse(endDate);
				if(end.compareTo(start)<=0){
					ActionMessage msg = new ActionMessage("errors.endgtstart");
					errors.add("startend", msg);
				}
			}
		}catch(Exception e){}
		if(!errors.isEmpty()){
			ActionMessage msg1 = new ActionMessage("errors.all");
			errors.add("all",msg1);
		}
		return errors;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
}
