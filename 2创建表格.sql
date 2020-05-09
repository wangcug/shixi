/**********************************
作者：王成彬
日期：2020-05-08
学号：045435
班级：资源信息工程系
Email:wangchb@cug.edu.cn
***********************************/


use CUGer_student		--使用的数据库
create table Student		--创建学生表格
	(
	Sno CHAR(5) PRIMARY KEY,	--学号		
	Sname CHAR(20) NOT NULL,	--学生姓名	
	Ssex CHAR(2),		--性别
	Sage INT,		--年龄
	Sdept CHAR(15)		--院系
	)

create table Course		--创建课程表格

	(
	[Cno] [char](6) primary key,		--课程号码
	[Cname] [char](20) NOT NULL,		--课程名	
	[Pre_Cno] [char](12),		--旧课程名
	[Credits] [int]		--学分值
	)

CREATE TABLE Reports		--创建成绩表
	(
	[Sno] char(5),		--学号
	Cno CHAR(6),		--课程号码
	Grade INT		--成绩
	)