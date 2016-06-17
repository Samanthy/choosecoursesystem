package com.tarena.group3.choosecoursesystem.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

/**
 * 课程实体类
 * 
 * @author group3
 * 
 */
public class Course implements Serializable {

	private static final long serialVersionUID = 6610517259006572272L;

	private Integer id;

	// 课程编号
	private String cid;

	// 课程名
	private String cname;

	// 开课日期
	private Date startDate;

	// 结课日期
	private Date endDate;

	// 学分
	private Integer credit;

	// 上课时间段
	private String schoolTime;

	// 星期
	private String week;

	// 所带课老师
	private Teacher teacher;

	// 占用的教室
	private Room room;

	// 上此门课的所有学生
	private List<Student> students = new ArrayList<Student>();
	
	//某个学生的成绩
	private Double score;
	
	//该学生成绩的状态
	private int status;

	public Double getScore() {
		return score;
	}

	public void setScore(Double score) {
		this.score = score;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Integer getCredit() {
		return credit;
	}

	public void setCredit(Integer credit) {
		this.credit = credit;
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

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public String getSchoolTime() {
		return schoolTime;
	}

	public void setSchoolTime(String schoolTime) {
		this.schoolTime = schoolTime;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cid == null) ? 0 : cid.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		final Course other = (Course) obj;
		if (cid == null) {
			if (other.cid != null)
				return false;
		} else if (!cid.equals(other.cid))
			return false;
		return true;
	}
	
	public String toString(){
		return id+","+cid+","+cname+","+startDate+","
		+endDate+","+schoolTime+","+week+","+credit+","+room.getRname()+","+room.getCapacity()+","+teacher;
	}

	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}

}
