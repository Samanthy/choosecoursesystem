package com.tarena.group3.choosecoursesystem.domain;

import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import com.tarena.group3.choosecoursesystem.dao.ICourseDao;
import com.tarena.group3.choosecoursesystem.dao.IRoomDao;
import com.tarena.group3.choosecoursesystem.dao.IStudentDao;

/**
 * 补选任务实体
 * @author xiexiujie
 *
 */
public class TaskForBallot extends TimerTask {
	
	private Timer timer;
	
	private List<String> allCourse=new ArrayList<String>();;
	
	private IStudentDao studentDao;
	
	private ICourseDao courseDao;
	
	private IRoomDao roomDao;
	
	@Override
	public void run() {
		//查询所有被选的课程主键
		allCourse=studentDao.getAllCidFromTempTable();
		System.out.println("++++++++++");
		System.out.println(allCourse);
		System.out.println("++++++++++");
		//对每门课程进行抽签
		for(String cid:allCourse){
			Course course=courseDao.queryCourseByCid(cid);
			Room room=course.getRoom();
			System.out.println("room:"+room);
			int size=room.getCapacity();
			System.out.println("size:"+size);
			studentDao.ballotGenerateAllStudents(size, cid);
		}
		//抽签结束清空临时表
		studentDao.clearTempTable();
		timer.cancel();
	}
	public List<String> getAllCourse() {
		return allCourse;
	}
	public void setAllCourse(List<String> allCourse) {
		this.allCourse = allCourse;
	}
	public ICourseDao getCourseDao() {
		return courseDao;
	}
	public void setCourseDao(ICourseDao courseDao) {
		this.courseDao = courseDao;
	}
	public IRoomDao getRoomDao() {
		return roomDao;
	}
	public void setRoomDao(IRoomDao roomDao) {
		this.roomDao = roomDao;
	}
	public IStudentDao getStudentDao() {
		return studentDao;
	}
	public void setStudentDao(IStudentDao studentDao) {
		this.studentDao = studentDao;
	}
	public Timer getTimer() {
		return timer;
	}
	public void setTimer(Timer timer) {
		this.timer = timer;
	}
}
