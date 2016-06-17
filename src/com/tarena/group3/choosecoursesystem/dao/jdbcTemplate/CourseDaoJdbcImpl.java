package com.tarena.group3.choosecoursesystem.dao.jdbcTemplate;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.tarena.group3.choosecoursesystem.dao.ICourseDao;
import com.tarena.group3.choosecoursesystem.dao.IRoomDao;
import com.tarena.group3.choosecoursesystem.dao.ITeacherDao;
import com.tarena.group3.choosecoursesystem.domain.ChooseCourseEntity;
import com.tarena.group3.choosecoursesystem.domain.Course;

/**
 * 课程Dao的实现类
 * @author xiexiujie
 *
 */
public class CourseDaoJdbcImpl implements ICourseDao {

	private JdbcTemplate jt;
	
	private ITeacherDao teacherDao;
	
	private IRoomDao roomDao;
	
	private static final Logger logger = Logger.getLogger(ICourseDao.class);

	public JdbcTemplate getJt() {
		return jt;
	}

	public void setJt(JdbcTemplate jt) {
		this.jt = jt;
	}

	public IRoomDao getRoomDao() {
		return roomDao;
	}

	public void setRoomDao(IRoomDao roomDao) {
		this.roomDao = roomDao;
	}

	public ITeacherDao getTeacherDao() {
		return teacherDao;
	}

	public void setTeacherDao(ITeacherDao teacherDao) {
		this.teacherDao = teacherDao;
	}
	
	/**
	 * 根据学生的主键和课程的主键在临时表中删除所选的课程
	 * 
	 * @param sid
	 * @param cid
	 */
	public void cancleFirstChoose(Integer sid, Integer cid) {
		String sql = "delete from s_c_temp_table where student_id=? and course_id=?";
		jt.update(sql,new Object[]{sid,cid});
	}

	/**
	 * 根据学生的主键和课程的主键在学生课程表中删除所选的课程
	 * 
	 * @param sid
	 * @param cid
	 */
	public void cancleSecondChoose(Integer sid, Integer cid) {

		String sql = "delete from s_c_table where student_id=? and course_id=?";
		jt.update(sql,new Object[]{sid,cid});
	}

	/**
	 * 删除课程
	 * 
	 * @param id
	 * @return
	 */
	public boolean delete(Integer id) {
		
		logger.info("进去delete！");
		try {
			String sql = "delete from course where id=?";
			int i = jt.update(sql,new Object[]{id});
			if(i==1){
				return true;
			}
		} catch (Exception e) {
			logger.info("删除失败！"+e.getMessage());
		}
		return false;
	}

	/**
	 * 根据学生的主键和课程的主键在临时表中插入所选的课程
	 * 
	 * @param sid
	 * @param cid
	 */
	public void firstChooseCourse(Integer sid, Integer cid) {

		String sql = "insert into s_c_temp_table(student_id,course_id) values(?,?) ";
		jt.update(sql,new Object[]{sid,cid});
	}

	/**
	 * 插入新课程
	 * 
	 * @param course
	 * @return
	 */
	public boolean insert(Course course) {

		logger.info("进入insert！");
		try {
			String sql = "  insert into course(cid,cname,start_date,end_date,credit,schooltime,week,teacher_id,room_id) values(?,?,?,?,?,?,?,?,?)";
			int i=jt.update(sql,new Object[]{course.getCid(),course.getCname(),course.getStartDate(),
					course.getEndDate(),course.getCredit(),course.getSchoolTime(),course.getWeek(),course.getTeacher().getId(),
					course.getRoom().getId()});
			if(i==1){
				return true;
			}
		} catch (Exception e) {
                logger.info("插入失败！"+e.getMessage());
		}
		return false;
	}

	/*
	 *实现RowMapper 的接口来封装Course类 
	 *
	 */
     private class CourseRowMapper implements RowMapper{

		public Object mapRow(ResultSet rs, int i) throws SQLException {
         Course course = new Course();
         course.setId(rs.getInt(1));
         course.setCid(rs.getString(2));
         course.setCname(rs.getString(3));
         course.setStartDate(rs.getDate(4));
         course.setEndDate(rs.getDate(5));
         course.setCredit(rs.getInt(6));
         course.setSchoolTime(rs.getString(7));
         course.setWeek(rs.getString(8));
         course.setTeacher(teacherDao.queryTeacherById(rs.getInt(9)));
         course.setRoom(roomDao.queryRoomById(rs.getInt(10)));
         return course;
		}}
	
	/**
	 * 根据给定的课程编号，课程名称，教师编号，教师名称模糊查询结课时间比now晚的所有课程
	 * 
	 * @param now
	 * @param cid
	 * @param cname
	 * @param tid
	 * @param tname
	 * @return
	 */
	public List<Course> queryAllCourseByRequired(Date now, String cid,
			String cname, String tid, String tname) {

		String sql = "select c.id,c.cid,c.cname,c.start_date,c.end_date,c.credit,c.schooltime,c.week,c.teacher_id,c.room_id  from course as c,teacher as t where c.cid like '"+cid+"%' and c.cname like '%"+cname+"%' and t.tid like '"+tid+"%' and t.tname like '%"+tname+"%' and c.end_date>? and t.id=c.teacher_id";
        List<Course> list;
		try {
			list = jt.query(sql,new Object[]{now},new CourseRowMapper(){});
			return list;
		} catch (Exception e) {
			return null;
		}
	}

	/**
	 * 根据教师员工号查询所有结课时间比当前晚的课程
	 * 
	 * @param tid
	 * @return
	 */
	public List<Course> queryAllCourseByTid(String tid) {

		Date date = new Date(System.currentTimeMillis());
		String sql = "select c.id,c.cid,c.cname,c.start_date,c.end_date,c.credit,c.schooltime,c.week,c.teacher_id,c.room_id from course c,teacher t where t.tid=? and c.end_date>? and c.teacher_id=t.id";
        List<Course> list;
		try {
			list = jt.query(sql, new Object[]{tid,date},new CourseRowMapper(){});
			return list;
		} catch (Exception e) {
			return null;
		}		
	}

	/*
	 *实现RowMapper 的接口来封装ChooseCourseEntity类(临时表)
	 *
	 */
	private class ChooseCourseEntityRowMapper1 implements RowMapper{

		public Object mapRow(ResultSet rs, int i) throws SQLException {
			ChooseCourseEntity cce = new ChooseCourseEntity();
			Integer id = rs.getInt(1);
			cce.setCourse(queryCourseById(id));
			//从临时表中查询
			cce.setHasChooseNum(queryChooseNumForFirstChooseCourse(id));
			return cce;
		}
		
	}
	
	/**
	 * 根据给定的课程编号，课程名称，教师名称模糊查询结课时间比now晚的所有课程
	 * @param now
	 * @param cid
	 * @param cname
	 * @param tname
	 * @return
	 */
	public List<ChooseCourseEntity> queryAllCourseForFirstChooseCourse(
			Date now, String cid, String cname, String tname) {

		String sql = "select c.id  from course as c,teacher as t  where c.cid like '"+cid+"%' and c.cname like '%"+cname+"%' and t.tname like '%"+tname+"%' and c.end_date>? and c.teacher_id=t.id";
		List<ChooseCourseEntity> list;
		try {
			list = jt.query(sql, new Object[]{now},new ChooseCourseEntityRowMapper1(){});
			return list;
		} catch (Exception e) {
			return null;
		}
	}

	/*
	 *实现RowMapper 的接口来封装ChooseCourseEntity类(关联表)
	 *
	 */
	private class ChooseCourseEntityRowMapper2 implements RowMapper{

		public Object mapRow(ResultSet rs, int i) throws SQLException {
			ChooseCourseEntity cce = new ChooseCourseEntity();
			Integer id = rs.getInt(1);
			cce.setCourse(queryCourseById(id));
			//从关联表中查询
			cce.setHasChooseNum(queryChooseNumForSecondChooseCourse(id));
			return cce;
		}
		
	}
	
	/**
	 * 根据给定的课程编号，课程名称，教师名称模糊查询结课时间比now晚且未满的所有课程
	 * 
	 * @param now
	 * @param cid
	 * @param cname
	 * @param tname
	 * @return
	 */
	
	
	public List<ChooseCourseEntity> queryAllCourseForSecondChooseCourse(
			Date now, String cid, String cname, String tname) {

		String sql = "select c.id  from course as c,teacher as t,room r where c.cid like '"+cid+"%' and c.cname like '%"+cname+"%' and t.tname like '%"+tname+"%' and c.end_date>? and c.teacher_id=t.id and c.room_id = r.id and r.capacity>(select count(sc.course_id) from course cc left outer join s_c_table sc on cc.id = sc.course_id group by cc.id having c.id = cc.id)";
		List<ChooseCourseEntity> list;
		try {
			list = jt.query(sql, new Object[]{now},new ChooseCourseEntityRowMapper2(){});
			return list;
		} catch (Exception e) {
			return null;
		}
	}

	/**
	 * 查询学生已有成绩的所有课程
	 * 
	 * @param sid
	 * @return
	 */
	public List<Course> queryAllHistoryCourseBySid(String sid) {

		String sql = "select c.id,c.cid,c.cname,c.start_date,c.end_date,c.credit,sc.score,c.schooltime,c.week,c.teacher_id,c.room_id from s_c_table sc,student s,course c where c.id = sc.course_id and s.sid=? and s.id = sc.student_id and sc.score is not null";
        List<Course> list;
		try {
			list = jt.query(sql, new Object[]{sid},new RowMapper(){
				public Object mapRow(ResultSet rs, int i) throws SQLException {
			         Course course = new Course();
			         course.setId(rs.getInt(1));
			         course.setCid(rs.getString(2));
			         course.setCname(rs.getString(3));
			         course.setStartDate(rs.getDate(4));
			         course.setEndDate(rs.getDate(5));    
			         course.setScore(rs.getDouble(7));
			         if(course.getScore()>=60){
			        	 course.setCredit(rs.getInt(6));
			         }else{
			        	 course.setCredit(0);
			         }
			         course.setSchoolTime(rs.getString(8));
			         course.setWeek(rs.getString(9));
			         course.setTeacher(teacherDao.queryTeacherById(rs.getInt(10)));
			         course.setRoom(roomDao.queryRoomById(rs.getInt(11)));
			         return course;
				}
			});
			return list;
		} catch (Exception e) {
			return null;
		}
	}

	/**
	 * 根据课程主键在临时表中查询选择该门课程的人数
	 * 
	 * @param id
	 * @return
	 */
	public int queryChooseNumForFirstChooseCourse(Integer id) {

		String sql = "select count(*) from s_c_temp_table where course_id=?";
		int num = jt.queryForInt(sql,new Object[]{id});
		return num;
	}

	/**
	 * 根据课程主键在学生课程表中查询选择该门课程的人数
	 * 
	 * @param id
	 * @return
	 */
	public int queryChooseNumForSecondChooseCourse(Integer id) {

		String sql = "select count(*) from s_c_table where course_id=?";
		int num = jt.queryForInt(sql,new Object[]{id});
		return num;
	}

	/**
	 * 根据课程编号查询课程
	 * 
	 * @param cid
	 * @return
	 */
	public Course queryCourseByCid(String cid) {

		String sql = "select id,cid,cname,start_date,end_date,credit,schooltime,week,teacher_id,room_id from course where cid=?";
		Course course;
		try {
			course = (Course) jt.queryForObject(sql, new Object[]{cid},new CourseRowMapper(){});
			return course;
		} catch (Exception e) {
			return null;
		}

	}

	/**
	 * 根据主键查询课程
	 * 
	 * @param id
	 * @return
	 */
	public Course queryCourseById(Integer id) {

		String sql = "select id,cid,cname,start_date,end_date,credit,schooltime,week,teacher_id,room_id from course where id=?";
		try {
			Course course = (Course) jt.queryForObject(sql, new Object[]{id},new CourseRowMapper(){});
			return course;
		} catch (Exception e) {
			return null;
		}
	}

	/**
	 * 根据学生的学号在临时表中查询该学生所选的课程
	 * 
	 * @param sid
	 * @return
	 */
	public Set<Course> queryCourseBySidForFirstChoose(String sid) {

		String sql = "select c.id,c.cid,c.cname,c.start_date,c.end_date,c.credit,c.schooltime,c.week,c.teacher_id,c.room_id from course as c ,s_c_temp_table as sc,student as s  where s.sid=? and c.id =sc.course_id and s.id=sc.student_id";
		try {
			Set<Course> set = new HashSet<Course>( jt.query(sql, new Object[]{sid},new CourseRowMapper(){}));
			return set;
		} catch (Exception e) {
			return null;
		}
	}

	/**
	 * 根据学生的学号在学生课程表中查询该学生所选的没有成绩且结课时间比目前晚的课程
	 * 
	 * @param sid
	 * @return
	 */
	public Set<Course> queryCourseBySidForSecondChoose(String sid) {

		Date now = new Date(System.currentTimeMillis());
		String sql = "select c.id,c.cid,c.cname,c.start_date,c.end_date,c.credit,c.schooltime,c.week,c.teacher_id,c.room_id from course as c,s_c_table as sc,student as s where s.sid=? and c.end_date>? and sc.score is null and c.id=sc.course_id and s.id=sc.student_id";
		try {
			Set<Course> set = new HashSet<Course> (jt.query(sql,new Object[]{sid,now},new CourseRowMapper(){}));
			return set;
		} catch (Exception e) {
			return null;
		}
	}

	/**
	 * 根据学生的主键和课程的主键学生课程表中插入所选的课程 如果学生已选两门返回false 如果课程已满返回false
	 * 
	 * @param sid
	 * @param cid
	 */
	public boolean secondChooseCourse(Integer sid, Integer cid) {
		//查询主键为sid的学生选修的课程数
		String sql = "select count(*) from s_c_table sc,course c where student_id=? and c.end_date>? and sc.course_id=c.id";
		int num = jt.queryForInt(sql, new Object[]{sid,new Date(System.currentTimeMillis())});
		//已选满两门不能选择新的选修课
		if(num==2){
			return false;
		}
		//采用竞争机制进行补选时为了线程安全问题，对补选选修课进行了同步
		//避免出现两个该Dao对象，使Dao同步失效，将锁对象定为该Dao类的类对象
        synchronized (CourseDaoJdbcImpl.class) {
          //获取选择该课程的学生数
          int chooseNum = queryChooseNumForSecondChooseCourse(cid);
          //获取该课程的课程容量
          sql = "select r.capacity from room as r ,course as c  where c.id=? and c.room_id=r.id";
          int capacity = jt.queryForInt(sql,new Object[]{cid});
          //如果课程已满，选修失败
          if(chooseNum>=capacity){
        	  return false;
          }else{
              sql = "insert into s_c_table(student_id,course_id) values(?,?)";
              jt.update(sql,new Object[]{sid,cid});
        	  return true; 
          }
        }
	}

	/**
	 * 更新课程
	 * 
	 * @param course
	 * @return
	 */
	public boolean update(Course course) {

		logger.info("进入更新！");
		try {
			String sql = "update course set cid=?,cname=?,start_date=?,end_date=?,credit=?,schooltime=?,week=?,teacher_id=?,room_id=? where id=?";
			int i = jt.update(sql,new Object[]{course.getCid(),course.getCname(),course.getStartDate(),
					course.getEndDate(),course.getCredit(),course.getSchoolTime(),course.getWeek(),course.getTeacher().getId(),
					course.getRoom().getId(),course.getId()});
			if(i==1){
				return true;
			}
		} catch (Exception e) {
			logger.info("更新失败！"+e.getMessage());
		}
		return false;
	}
	
}
