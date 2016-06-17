package com.tarena.group3.choosecoursesystem.dao;

import java.sql.Date;
import java.util.List;

import com.tarena.group3.choosecoursesystem.domain.Room;

/**
 * 教室Dao
 * @author group3
 *
 */
public interface IRoomDao {
	
	/**
	 * 根据主键ID查询教室
	 * @param id
	 * @return
	 */
	Room queryRoomById(Integer id);
	
	/**
	 * 根据教室名查询教室
	 * @param rname
	 * @return
	 */
	Room queryRoomByRname(String rname);
	
	/**
	 * 查询全部的教室
	 * @return
	 */
	List<Room> queryAllRoom();
	
	/**
	 * 查询当前时间指定星期未使用的全部教室
	 * @param week
	 * @return
	 */
	List<Room> queryAllRoomUnUse(Date now,String week);
}
