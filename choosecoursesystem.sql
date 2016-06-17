#创建sql
drop database if exists choosecoursesystem;
create database choosecoursesystem character set 'utf8';
use choosecoursesystem;

drop table if exists student;
create table student(
id int(20)  primary key auto_increment,
sid varchar(15) unique not null,
sname varchar(10) not null,
password varchar(20) not null default '123',
department varchar(30) not null,
special_field varchar(20) not null
 )ENGINE=innoDB character set='utf8';
 
 drop table if exists teacher;
 create table teacher(
 id int(20) primary key auto_increment,
 tid varchar(15) unique not null,
 tname varchar(10) not null,
 password varchar(20) not null default 'teacher',
 position varchar(50) not null
 )engine=innodb character set='utf8';
 
 drop table if exists admin;
 create table admin(
 	id int(20) primary key auto_increment,
 	aid varchar(15) unique not null,
 	aname varchar(10) not null,
 	password varchar(20) not null default 'admin'
 )engine=innodb character set='utf8';
 
 drop table if exists room;
 create table room(
 	id int(20) primary key auto_increment,
 	rname varchar(100) unique not null,
 	capacity int(4) not null
 )engine=innodb character set='utf8';

 drop table if exists course;
 create table course(
 id int(20) primary key auto_increment,
 cid varchar(20) unique not null,
 cname varchar(50) not null,
 start_date date not null,
 end_date date not null,
 credit int(2) not null,
 schooltime varchar(30) not null,
 week  varchar(10) not null,
 teacher_id int(20) not null,
 room_id int(20) not null,
 constraint c_t_fk foreign key(teacher_id) references teacher(id),
 constraint c_r_fk foreign key(room_id) references room(id)
 )engine=innodb character set='utf8';
 
 drop table if exists s_c_table;
 create table s_c_table(
 student_id int(20) not null,
 course_id int(20) not null,
 score double(5,2) default null,
 status int(1) default 0,
 constraint sc_s_fk foreign key(student_id) references student(id),
constraint sc_c_fk foreign key(course_id) references course(id)
 )engine=innodb character set='utf8';
 
 drop table if exists s_c_temp_table;
 create table s_c_temp_table(
 	student_id int(20) not null,
 	course_id int(20) not null,
 	constraint sc_s_temp_fk foreign key(student_id) references student(id),
	constraint sc_c_temp_fk foreign key(course_id) references course(id)
 )engine=innodb character set='utf8';

 #模拟数据
 delete from student;
insert into student(sid,sname,department,special_field) values('2005060708','谢秀杰','现教院','计算机科学与技术专业');
insert into student(sid,sname,department,special_field) values('2005060709','芦晓庆','理学院','应用物理专业');
insert into student(sid,sname,department,special_field) values('2005060710','李鹏','科技学院','计算机技术及应用专业');
insert into student(sid,sname,department,special_field) values('2005060711','侯宝林','信息院','电子对抗专业');
insert into student(sid,sname,department,special_field) values('2005060712','许勇威','工程院','农机专业');
insert into student(sid,sname,department,special_field) values('2005060713','刘鹏飞','现教院','计算机科学与教师专业');
insert into student(sid,sname,department,special_field) values('2005060714','秦宋','文法院','法学专业');
insert into student(sid,sname,department,special_field) values('2005060715','张志耀','经贸院','经济管理专业');
insert into student(sid,sname,department,special_field) values('2005060716','周维','工商管理院','财务管理专业');
insert into student(sid,sname,department,special_field) values('2005060717','曹高才','法学院','法学院');
insert into student(sid,sname,department,special_field) values('2005060718','徐丽萍','现教院','计算机科学与技术专业');

delete from teacher;
 insert into teacher(tid,tname,position) value('th20001212','李翊','教学总监');
 insert into teacher(tid,tname,position) value('th20020601','张立猛','金牌讲师');
 insert into teacher(tid,tname,position) value('th19970707','陈宗权','金牌讲师');
 insert into teacher(tid,tname,position) value('th20020721','赵德奎','副校长');
 insert into teacher(tid,tname,position) value('th20020521','陈祖红','高级金牌讲师');
 
 delete from admin;
  insert into admin(aid,aname) values('admin','Tarena');
  
  delete from room;
  insert into room(rname,capacity) values('5-101',5);
  insert into room(rname,capacity) values('5-102',20);
  insert into room(rname,capacity) values('5-103',8);
  insert into room(rname,capacity) values('5-201',2);
  insert into room(rname,capacity) values('5-202',3);
  insert into room(rname,capacity) values('5-203',7);
 
 
 delete from course;
 insert into course(cid,cname,start_date,end_date,credit,schooltime,week,teacher_id,room_id) values('07001','人工智能','2009-05-26','2009-06-26',2,'19:00-21:00','星期一',2,1);
 insert into course(cid,cname,start_date,end_date,credit,schooltime,week,teacher_id,room_id) values('07002','软件工程','2009-05-26','2009-06-26',2,'19:00-21:00','星期二',3,2);
 insert into course(cid,cname,start_date,end_date,credit,schooltime,week,teacher_id,room_id) values('07003','C++程序设计','2009-05-26','2009-06-26',2,'19:00-21:00','星期三',4,3);
 insert into course(cid,cname,start_date,end_date,credit,schooltime,week,teacher_id,room_id) values('07004','数据库原理','2009-03-14','2009-04-14',2,'19:00-21:00','星期四',2,4);
 insert into course(cid,cname,start_date,end_date,credit,schooltime,week,teacher_id,room_id) values('07005','数据结构','2009-03-14','2009-04-14',2,'19:00-21:00','星期五',5,3);
 
 delete from s_c_table;
 insert into s_c_table values(1,4,60.0,1);
 insert into s_c_table values(1,5,90.0,1);
 insert into s_c_table values(2,4,70.5,1);
 insert into s_c_table values(2,5,57,1);
 insert into s_c_table values(3,5,100,1); 
 insert into s_c_table values(6,5,70,1);
 insert into s_c_table values(8,5,88,1);
  
 delete from s_c_temp_table;
 insert into s_c_temp_table values(2,1);
 insert into s_c_temp_table values(2,3);
 insert into s_c_temp_table values(3,1);
 insert into s_c_temp_table values(3,3);
 insert into s_c_temp_table values(4,1);
 insert into s_c_temp_table values(4,2);
 insert into s_c_temp_table values(5,1);
 insert into s_c_temp_table values(5,3);
 insert into s_c_temp_table values(6,1);
 insert into s_c_temp_table values(6,2);
 insert into s_c_temp_table values(7,1);
 insert into s_c_temp_table values(7,3);
 insert into s_c_temp_table values(8,1);
 insert into s_c_temp_table values(8,3);
 insert into s_c_temp_table values(9,2);
 insert into s_c_temp_table values(9,3);
 insert into s_c_temp_table values(10,2);
 insert into s_c_temp_table values(11,3);
 
 select * from room;
 select * from course;
 select * from student;
 select * from teacher;
 select * from admin;
 select * from s_c_table;
 select * from s_c_temp_table;
 
 #查看未选满课程的学生的信息
 select s.sid,s.sname,s.password from student s where s.id not in(select b.id from (select sc.student_id id,count(sc.student_id) num from (select * from s_c_table sct where sct.score is not null) sc group by sc.student_id) b where b.num=2);

 #查看学生的课程成绩信息
 select s.sid,s.sname,c.cid,c.cname,sc.score,sc.status from student s,course c,s_c_table sc where s.id = sc.student_id and c.id = sc.course_id;
 
 #查看学生的预选课程信息
 select s.sid,s.sname,c.cid,c.cname from student s,course c,s_c_temp_table sct where s.id = sct.student_id and c.id = sct.course_id;
 
 #查看课程的详细信息，占用的教室，课程容量，代课老师
 select c.cid,c.cname,c.start_date,c.end_date,c.week,r.rname,r.capacity,t.tid,t.tname from teacher t,room r,course c where r.id = c.room_id and t.id = c.teacher_id;