package com.tarena.group3.choosecoursesystem.service.impl;

import java.sql.Date;
import java.text.ParseException;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.tarena.group3.choosecoursesystem.dao.IRoomDao;
import com.tarena.group3.choosecoursesystem.domain.Room;
import com.tarena.group3.choosecoursesystem.service.IRoomService;

/**
 * 教室Service实现类
 * @author xiexiujie
 *
 */
public class RoomServiceImpl implements IRoomService {
	
	private IRoomDao roomDao;

	public IRoomDao getRoomDao() {
		return roomDao;
	}

	public void setRoomDao(IRoomDao roomDao) {
		this.roomDao = roomDao;
	}

	public List<Room> queryAllRoom() {
		return roomDao.queryAllRoom();
	}

	public List<Room> queryAllRoomUnUse(String date, String week) {
		return roomDao.queryAllRoomUnUse(stringToDate(date), week);
	}

	public Room queryRoomById(Integer id) {
		return roomDao.queryRoomById(id);
	}

	public Room queryRoomByRname(String rname) {
		return roomDao.queryRoomByRname(rname);
	}
	
	public Date stringToDate(String date){
		return Date.valueOf(date);
	}
	
	public static void main(String[] args) throws ParseException{
		ApplicationContext ctx = new FileSystemXmlApplicationContext("/WebRoot/WEB-INF/applicationContext.xml");
		RoomServiceImpl roomService = (RoomServiceImpl)ctx.getBean("roomService");
	}

}
