package com.tarena.group3.choosecoursesystem.domain;

import java.io.Serializable;
/**
 * 预选显示的课程信息
 * @author group3
 *
 */
public class ChooseCourseEntity implements Serializable {

	private static final long serialVersionUID = 7701703707987472588L;

	//关联的课程
	private Course course;
	
	//已选的人数
	private int hasChooseNum;

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public int getHasChooseNum() {
		return hasChooseNum;
	}

	public void setHasChooseNum(int hasChooseNum) {
		this.hasChooseNum = hasChooseNum;
	}
}
