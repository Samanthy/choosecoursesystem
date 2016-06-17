package com.tarena.group3.choosecoursesystem.test;

import java.sql.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.tarena.group3.choosecoursesystem.dao.IRoomDao;
import com.tarena.group3.choosecoursesystem.domain.Room;

public class IRoomDaoTest {
	private ApplicationContext ctx;
	
	private IRoomDao roomDao;
	
	@Before
	public void init(){
		ctx = new FileSystemXmlApplicationContext("WebRoot/WEB-INF/applicationContext.xml");
		roomDao = (IRoomDao)ctx.getBean("roomDao");
	}
	
	@Test
	public void testQueryRoomById(){
		Room room = roomDao.queryRoomById(11);
		System.out.println(room.getId()+","+room.getRname()+","+room.getCapacity());
	}
	
	@Test
	public void testQueryRoomByRname(){
		Room room = roomDao.queryRoomByRname("5-102");
		System.out.println(room.getId()+","+room.getRname()+","+room.getCapacity());
	}
	
	@Test
	public void testQueryAllRoom(){
		List<Room> roomList = roomDao.queryAllRoom();
		for(Room room : roomList){
			System.out.println(room.getId()+","+room.getRname()+","+room.getCapacity());
		}
	}
	
	@Test
	public void testQueryAllRoomUnUse(){
		List<Room> roomList = roomDao.queryAllRoomUnUse(new Date(System.currentTimeMillis()), "星期二");
		for(Room room : roomList){
			System.out.println(room.getId()+","+room.getRname()+","+room.getCapacity());
		}
	}
}
