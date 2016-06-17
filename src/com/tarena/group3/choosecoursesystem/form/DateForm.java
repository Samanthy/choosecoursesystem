package com.tarena.group3.choosecoursesystem.form;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.validator.ValidatorForm;

/**
 * 日期Form
 */
public class DateForm extends ValidatorForm {
	
	private String firstChooseStartDate;
	
	private String firstChooseEndDate;
	
	private String secondChooseStartDate;
	
	private String secondChooseEndDate;
	
	public String getFirstChooseEndDate() {
		return firstChooseEndDate;
	}

	public void setFirstChooseEndDate(String firstChooseEndDate) {
		this.firstChooseEndDate = firstChooseEndDate;
	}

	public String getFirstChooseStartDate() {
		return firstChooseStartDate;
	}

	public void setFirstChooseStartDate(String firstChooseStartDate) {
		this.firstChooseStartDate = firstChooseStartDate;
	}

	public String getSecondChooseEndDate() {
		return secondChooseEndDate;
	}

	public void setSecondChooseEndDate(String secondChooseEndDate) {
		this.secondChooseEndDate = secondChooseEndDate;
	}

	public String getSecondChooseStartDate() {
		return secondChooseStartDate;
	}

	public void setSecondChooseStartDate(String secondChooseStartDate) {
		this.secondChooseStartDate = secondChooseStartDate;
	}

	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		ActionErrors errors = super.validate(mapping, request);
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			if (errors.size("firstChooseStartDate") == 0 && errors.size("firstChooseEndDate") == 0) {
				Date firstStart = format.parse(firstChooseStartDate);
				Date firstEnd = format.parse(firstChooseEndDate);
				Date secondStart = format.parse(secondChooseStartDate);
				Date secondEnd = format.parse(secondChooseEndDate);
				System.out.println("firstStart:"+firstStart);
				System.out.println("firstEnd:"+firstEnd);
				if (firstEnd.compareTo(firstStart) <= 0||secondEnd.compareTo(secondStart) <= 0) {
					ActionMessage msg = new ActionMessage("errors.startAndEnd");
					errors.add("startAndEnd", msg);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return errors;
	}
	
}
