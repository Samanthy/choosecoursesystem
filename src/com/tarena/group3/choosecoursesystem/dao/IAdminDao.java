package com.tarena.group3.choosecoursesystem.dao;

import com.tarena.group3.choosecoursesystem.domain.Admin;

/**
 * 管理员DAO接口
 * @author xiexiujie
 *
 */
public interface IAdminDao {
	
	/**
	 * 修改管理员的密码
	 * @param password
	 * @return
	 */
	boolean updateAdminPassword(String aid,String password);
	
	/**
	 * 管理员登录
	 * @param aid
	 * @param password
	 * @return
	 */
	Admin adminLogin(String aid,String password);
	
	/**
	 * 根据管理员的账号查找
	 * @param aid
	 * @return
	 */
	Admin queryAdminByAid(String aid);
	
}
