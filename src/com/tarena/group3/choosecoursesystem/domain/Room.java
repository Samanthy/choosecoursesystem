package com.tarena.group3.choosecoursesystem.domain;

import java.io.Serializable;

/**
 * 教室实体类
 * 
 * @author group3
 * 
 */
public class Room implements Serializable {

	private static final long serialVersionUID = -4639688051998917295L;

	private Integer id;

	// 教室名
	private String rname;

	// 座位数
	private Integer capacity;

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((rname == null) ? 0 : rname.hashCode());
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
		final Room other = (Room) obj;
		if (rname == null) {
			if (other.rname != null)
				return false;
		} else if (!rname.equals(other.rname))
			return false;
		return true;
	}

	public Integer getCapacity() {
		return capacity;
	}

	public void setCapcity(Integer capacity) {
		this.capacity = capacity;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

}
