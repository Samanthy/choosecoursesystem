package com.tarena.group3.choosecoursesystem.dao.jdbcTemplate;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.tarena.group3.choosecoursesystem.dao.IRoomDao;
import com.tarena.group3.choosecoursesystem.domain.Room;

/**
 * 教室Dao的实现类
 * @author group3
 *
 */
public class RoomDaoImpl implements IRoomDao{
	
	//查询全部教室的sql
	private static final String QUERYROOM_ALL = "select id, rname, capacity from room";
	
	//根据主键查询教室的sql
	private static final String QUERYROOM_BYID = "select id, rname, capacity from room where id=?";
	
	//根据教室名查询教室的sql
	private static final String QUERYROOM_BYRNAME = "select id, rname, capacity from room where rname=?";
	
	private JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	/**
	 * 查询全部的教室
	 * @return
	 */
	public List<Room> queryAllRoom() {
		List rooms = template.query(QUERYROOM_ALL, new RowMapper(){

			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				return inputRoom(rs.getInt(1),rs.getString(2),rs.getInt(3));
			}});
		return rooms;
	}

	/**
	 * 查询当前时间指定星期未使用的全部教室
	 * @param week
	 * @return
	 */
	public List<Room> queryAllRoomUnUse(Date now, String week) {
		String sql = "select * from room where id not in (select room_id from course where  ? < end_date and week = ?)";
		List rooms = template.query(sql,new Object[]{now,week}, new RowMapper(){
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				return inputRoom(rs.getInt(1),rs.getString(2),rs.getInt(3));
			}});
		return rooms;
	}

	/**
	 * 根据主键ID查询教室
	 * @param id
	 * @return
	 */
	public Room queryRoomById(Integer id) {
		try {
			Room room = (Room)template.queryForObject(QUERYROOM_BYID, new Object[]{id}, new RowMapper(){
				public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
					return inputRoom(rs.getInt(1),rs.getString(2),rs.getInt(3));
				}});
			return room;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	/**
	 * 根据教室名查询教室
	 * @param rname
	 * @return
	 */
	public Room queryRoomByRname(String rname) {
		Room room = (Room)template.queryForObject(QUERYROOM_BYRNAME, new Object[]{rname}, new RowMapper(){

			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				return inputRoom(rs.getInt(1),rs.getString(2),rs.getInt(3));
			}});
		return room;
	}
	
	//通过属性字段获取Room类
	private Room inputRoom(int id, String rname, int capacity){
		Room room = new Room();
		room.setId(id);
		room.setRname(rname);
		room.setCapcity(capacity);
		return room;
	}
}
