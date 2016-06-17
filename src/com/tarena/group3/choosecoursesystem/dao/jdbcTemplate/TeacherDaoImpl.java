package com.tarena.group3.choosecoursesystem.dao.jdbcTemplate;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.tarena.group3.choosecoursesystem.dao.ITeacherDao;
import com.tarena.group3.choosecoursesystem.domain.Teacher;

/**
 * 教师Dao的实现类
 * @author group3
 *
 */
public class TeacherDaoImpl implements ITeacherDao {
	
	private JdbcTemplate jt;
	
	public void setJt(JdbcTemplate jt){
		this.jt=jt;
	}
	
	/**
	 * 教师登录
	 * @param tid
	 * @param password
	 * @return
	 */
	public Teacher login(String tid, String password) {
		String sql="select id,tid,tname,password,position from teacher where tid='"+tid+"'";
		//根据教师员工号获取教师
		Teacher teacher;
		try {
			teacher = (Teacher) jt.queryForObject(sql,new MyRowMapper());
		} catch (Exception e) {
			return null;
		}
		//判断教师的密码是否正确
		if(password.equals(teacher.getPassword())){
			return teacher;
		}
		return null;
	}
	
	/**
	 * 根据课程编号查找代课老师
	 * @param cid
	 * @return
	 */
	public Teacher queryTeacherByCid(String cid) {
		String sql="select t.id,t.tid,t.tname,t.password,t.position from teacher t,course c "
				   +"where t.id=c.teacher_id and c.cid= '"+cid+"'";	
		Teacher teacher;
		try {
			teacher = (Teacher)jt.queryForObject(sql,new MyRowMapper());
			return teacher;
		} catch (Exception e) {
			return null;
		}
	}
	
	/**
	 * 根据主键查找教师
	 * @param id
	 * @return
	 */
	public Teacher queryTeacherById(Integer id) {
		String sql="select id, tid,tname,password,position from teacher where id= "+id;
		try {
			Teacher teacher=(Teacher)jt.queryForObject(sql, new MyRowMapper());
			return teacher;
		} catch (Exception e) {
			return null;
		}
	}
	
	/**
	 * 根据教师员工号查找教师
	 * @param tid
	 * @return
	 */
	public Teacher queryTeacherByTid(String tid) {
		String sql="select id,tid,tname,password,position from teacher where tid= '"+tid+"'";
		Teacher teacher;
		try {
			teacher = (Teacher)jt.queryForObject(sql, new MyRowMapper());
			return teacher;
		} catch (Exception e) {
			return null;
		}
	}
	
	/**
	 * 修改教师密码
	 * @param tid
	 * @param password
	 */
	public void updateTeacherPassword(String tid, String password) {
		String sql="update teacher set password= '"+password+"'where tid= '"+tid+"'";
		try{
			jt.update(sql);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
	
	//实现了RowMapper接口，用于把结果集封装成Teacher对象
	class MyRowMapper implements RowMapper{
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			Teacher teacher=new Teacher();
			teacher.setId(rs.getInt(1));
			teacher.setTid(rs.getString(2));
			teacher.setTname(rs.getString(3));
			teacher.setPassword(rs.getString(4));
			teacher.setPosition(rs.getString(5));
			return teacher;
		}
	}
}
