package com.tarena.group3.choosecoursesystem.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * 学生实体类
 * 
 * @author group3
 * 
 */
public class Student implements Serializable {

	private static final long serialVersionUID = 6115589534745456253L;

	private Integer id;

	// 学生学号
	private String sid;
	
	// 学生姓名
	private String sname;
	
	// 学生登陆密码�����
	private String password;
	
	// 学生所在院系��½����
	private String department;

	//学生所学专业
	private String specialField;
	
	//学生所选的所有课程
	private Set<Course> courses = new HashSet<Course>();

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getSpecialField() {
		return specialField;
	}

	public void setSpecialField(String specialField) {
		this.specialField = specialField;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((sid == null) ? 0 : sid.hashCode());
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
		final Student other = (Student) obj;
		if (sid == null) {
			if (other.sid != null)
				return false;
		} else if (!sid.equals(other.sid))
			return false;
		return true;
	}

	public Set<Course> getCourses() {
		return courses;
	}

	public void setCourses(Set<Course> courses) {
		this.courses = courses;
	}

}