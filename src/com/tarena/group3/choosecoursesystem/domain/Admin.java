package com.tarena.group3.choosecoursesystem.domain;

import java.io.Serializable;

/**
 * 管理员实体类
 * 
 * @author group3
 * 
 */
public class Admin implements Serializable {

	private static final long serialVersionUID = -8631341902468365271L;

	private Integer id;

	// 管理员登陆号
	private String aid;

	// 管理员姓名
	private String aname;

	// 管理员登陆密码
	private String password;

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((aid == null) ? 0 : aid.hashCode());
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
		final Admin other = (Admin) obj;
		if (aid == null) {
			if (other.aid != null)
				return false;
		} else if (!aid.equals(other.aid))
			return false;
		return true;
	}
	
	@Override
	public String toString(){
		return "Admin["+aid+","+aname+","+password+"]";
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
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

}
