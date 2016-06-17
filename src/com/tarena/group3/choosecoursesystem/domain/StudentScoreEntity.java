package com.tarena.group3.choosecoursesystem.domain;

import java.io.Serializable;
/**
 * 封装某门课程学生的信息和分数
 * @author group3
 *
 */
public class StudentScoreEntity implements Serializable {

	private static final long serialVersionUID = 5498661241975275738L;

	//关联的学生
	private Student student;
	
	//课程的编号
	private String cid;
	
	//成绩
	private Double score;
	
	//成绩状态
	private int status;

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

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

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}
	
}
