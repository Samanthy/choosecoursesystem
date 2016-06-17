package com.tarena.group3.choosecoursesystem.dao.jdbcTemplate;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.tarena.group3.choosecoursesystem.dao.IAdminDao;
import com.tarena.group3.choosecoursesystem.domain.Admin;

/**
 * 管理员Dao实现类
 * @author group3
 *
 */
public class AdminDaoImpl implements IAdminDao {
	
	private JdbcTemplate jt;
	
	public void setJt(JdbcTemplate jt) {
		this.jt = jt;
	}

	/**
	 * 管理员登录
	 * @param aid
	 * @param password
	 * @return
	 */
	public Admin adminLogin(String aid, String password) {
		String sql="select id,aid,aname,password from admin where aid= '"+aid+"'";
		//获取指定用户名的管理员
		Admin ad;
		try {
			ad = (Admin) jt.queryForObject(sql,new MyRowMapper());
		} catch (Exception e) {
			return null;
		}
		//判断输入的密码是否正确
		if(password.equals(ad.getPassword())){
			return ad;
		}
		return null;
	}
	
	/**
	 * 修改管理员的密码
	 * @param password
	 * @return
	 */
	public boolean updateAdminPassword(String aid,String password) {
		String sql="update admin set password= '"+password+"'where aid= '"+aid+"'";
		try{
			int affRowNum=jt.update(sql);
			if(affRowNum==1)return true;
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return false;
	}
	
	/**
	 * 根据管理员的账号查找
	 * @param aid
	 * @return
	 */
	public Admin queryAdminByAid(String aid){
		String sql="select id,aid,aname,password from admin where aid= '"+aid+"'";
		//获取指定用户名的管理员
		Admin ad;
		try {
			ad = (Admin) jt.queryForObject(sql,new MyRowMapper());
		} catch (Exception e) {
			return null;
		}
		return ad;	
	}
	
	//实现了RowMapper接口，用于把结果集封装成Admin对象
	class MyRowMapper implements RowMapper{
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			Admin admin=new Admin();
			admin.setId(rs.getInt(1));
			admin.setAid(rs.getString(2));
			admin.setAname(rs.getString(3));
			admin.setPassword(rs.getString(4));
			return admin;
		}
	}

}
