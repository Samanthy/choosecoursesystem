package com.tarena.group3.choosecoursesystem.dao.jdbcTemplate;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.tarena.group3.choosecoursesystem.dao.IStudentDao;
import com.tarena.group3.choosecoursesystem.domain.Student;
import com.tarena.group3.choosecoursesystem.domain.StudentScoreEntity;

/**
 * 学生Dao实现类
 * @author group3
 *
 */
public class StudentDaoImpl implements IStudentDao {
	
	private JdbcTemplate jt;

	//通过学生的学号查找学生
	private static final String FINDSTUDENTBYSID = "select * from student where sid=?";
	
	//通过主键查找学生
	private static final String FINDSTUDENTBYID = "select * from student where id=?";
	
	//更改学生的密码
	private static final String UPDATESTUDENTPASSWORD="update student set password=? where sid=? ";
	
	//通过课程的编号查找所有选修该门课程的学生和成绩
	private static final String QUERYALLSTUDENTSCOREBYCID="select student_id,score,status from s_c_table where course_id=(select max(id) from course where cid=?)";
	
	//通过学生的学号和课程的编号修改该门课程的成绩
	private static final String LOADSTUDENTCOURSESCORE="update s_c_table set score=? , status=1 where student_id=(select max(id) from student where sid=?) and course_id=(select max(id) from course where cid=?)";

	/**
	 * 修改学生某门课的成绩，修改完毕后将status设为1
	 * @param sid
	 * @param cid
	 * @param score
	 */
	public void loadStudentCourseScore(String sid, String cid, double score) {
		jt.update(LOADSTUDENTCOURSESCORE,new Object[]{score,sid,cid});
	}

	/**
	 * 学生登录,用户名或密码错误返回null
	 * @param sid
	 * @param password
	 * @return
	 */
	public Student login(String sid, String password) {
		Student student=queryStudentBySid(sid);
		if(student!=null){
			String tempPassword=student.getPassword();
			if(tempPassword.equals(password)){
				return student;
			}
		}
		return null;
	}

	/**
	 * 查询某门课程所有的学生和他的成绩,封装成StudentScoreEntity
	 * @param cid
	 * @return
	 */
	public List<StudentScoreEntity> queryAllStudentScoreByCid(final String cid) {
		try {
			List list=jt.query(QUERYALLSTUDENTSCOREBYCID,new Object[]{cid},new RowMapper(){
				public Object mapRow(ResultSet rs, int arg1) throws SQLException {
					StudentScoreEntity studentScoreEntity=new StudentScoreEntity();
					studentScoreEntity.setStudent(queryStudentById(rs.getInt(1)));
					studentScoreEntity.setScore(rs.getDouble(2));
					studentScoreEntity.setStatus(rs.getInt(3));
					if(studentScoreEntity.getStatus()==0&&studentScoreEntity.getScore()==0){
						studentScoreEntity.setScore(null);
					}
					studentScoreEntity.setCid(cid);
					return studentScoreEntity;
				}
			});
			return list;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	/**
	 * 根据主键查找学生
	 * @param id
	 * @return
	 */
	public Student queryStudentById(Integer id) {
		try {
			Student student = (Student) jt.queryForObject(FINDSTUDENTBYID,new Object[] { id }, new RowMapper() {
				public Object mapRow(ResultSet rs, int arg1)
						throws SQLException {
					Student student = new Student();
					student.setId(rs.getInt(1));
					student.setSid(rs.getString(2));
					student.setSname(rs.getString(3));
					student.setPassword(rs.getString(4));
					student.setDepartment(rs.getString(5));
					student.setSpecialField(rs.getString(6));
					return student;
				}
			});
			return student;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	/**
	 * 根据学号查找学生
	 * @param sid
	 * @return
	 */
	public Student queryStudentBySid(String sid) {
		try {
			Student student = (Student) jt.queryForObject(FINDSTUDENTBYSID,new Object[] { sid }, new RowMapper() {
				public Object mapRow(ResultSet rs, int arg1)
						throws SQLException {
					Student student = new Student();
					student.setId(rs.getInt(1));
					student.setSid(rs.getString(2));
					student.setSname(rs.getString(3));
					student.setPassword(rs.getString(4));
					student.setDepartment(rs.getString(5));
					student.setSpecialField(rs.getString(6));
					return student;
				}
			});
			return student;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	/**
	 * 修改学生的密码
	 * @param sid
	 * @param password
	 */
	public void updateStudentPassword(String sid, String password) {
		jt.update(UPDATESTUDENTPASSWORD, new Object[]{password,sid});
	}

	public JdbcTemplate getJt() {
		return jt;
	}

	public void setJt(JdbcTemplate jt) {
		this.jt = jt;
	}
	
	/*
	 * 从临时表获取所有被选的课程主键
	 */
	public List getAllCidFromTempTable (){
		List list=(List)jt.query("select cid from course c where c.id in (select distinct(course_id) from s_c_temp_table)",new RowMapper(){
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				return rs.getString(1);
			}
		});
		return list;
	}
	
	/*
	 * 对每门课程按课程名进行抽签
	 */
	public void ballotGenerateAllStudentsByCourseName(int amount,String courseName){
		String cid=(String)jt.queryForObject("select cid from course where cname like ? ",new Object[]{courseName},new RowMapper(){

			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				return new String(rs.getString(1));
			}
			
		});
		ballotGenerateAllStudents(amount,cid);
		
	}

	//根据课程编号对预选该课程的所有学生进行抽签
	public void ballotGenerateAllStudents(int amount,String cid) {
		List totalStudents=new ArrayList();
		List<Temp_S_C> trueStudents=new ArrayList<Temp_S_C>();
		totalStudents=(List)jt.query("select student_id,course_id from s_c_temp_table where course_id = (select id from course where cid=?)",new Object[]{cid},new RowMapper(){

			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				Temp_S_C temp=new Temp_S_C();
				temp.setStudent_id(rs.getInt(1));
				temp.setCourse_id(rs.getInt(2));
				return temp;
			}
			
			
		});
		int size=totalStudents.size();
		int[] random=null; 
		if(size<=amount){
			amount=size;
			random=new int[amount];
			for(int i=0;i<amount;i++){
				random[i]=i;
			}
		}else{
		random=getAllIndex(amount,size);
		}
		for(int i=0;i<amount;i++){
			Temp_S_C record=(Temp_S_C)totalStudents.get(random[i]);
			insertStudents(record);
		}
	}
	
	//把所有学生放到数组中之后，对下标进行抽签
	private int[] getAllIndex(int amount,int size){
		//构造存放已抽中学生的数组
		int[] tempInt=new int[amount];
		//构造存放所有学生下标的数组
		int[] allSize = new int[size];
		//初始化
		for(int i=0;i<size;i++){
			allSize[i] = i;
		}
		//目前未抽中学生的数量
		int length = size;
		Random random=new Random();
		//抽签操作
		for(int i=0;i<amount;i++){
			int temp=random.nextInt(length);
			tempInt[i] = allSize[temp];
			allSize[temp] = allSize[length-1];
			length -=1;
		}
		return tempInt;
	}

	/*
	 * 临时表中的学生课程关系实体
	 */
	private class Temp_S_C {
		
		private int student_id;

		private int course_id;

		public int getCourse_id() {
			return course_id;
		}

		public void setCourse_id(int course_id) {
			this.course_id = course_id;
		}

		public int getStudent_id() {
			return student_id;
		}

		public void setStudent_id(int student_id) {
			this.student_id = student_id;
		}

	}
	
	//把已抽中的学生放到学生课程表中
	private  void insertStudents(Temp_S_C record){
		try {
			int i=jt.update("insert into s_c_table(student_id,course_id) values(?,?)",new Object[]{record.getStudent_id(),record.getCourse_id()});
		} catch (Exception e) {
			
		}
	}

	/**
	 *清空临时表
	 */
	public void clearTempTable() {
		jt.update("delete from s_c_temp_table");
	}
}
