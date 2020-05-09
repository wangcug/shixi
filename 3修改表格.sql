/**********************************
作者：王成彬
日期：2020-05-08
学号：045435
班级：资源信息工程系
Email:wangchb@cug.edu.cn
***********************************/
use CUGer_student
alter table Course
alter column Credits int

alter table Student		--在Student 表中添加入学时间字段
add Sentrancedat DATETIME		

alter table Student		--删除入学时间字段
drop column Sentrancedat

--为Reports创建主键
--首先修改Sno和Cno的非空约束
alter table Reports
alter column Sno char(5) not null
alter table Reports
alter column Cno char(6) not null

--添加主键约束
alter table Reports
add
constraint PK_report		--创建以PK_report为名的约束
PRIMARY KEY(Sno,Cno)		--对Sno Cno添加主键约束

--删除主键约束
alter table Reports
drop constraint PK_report		--此处直接引用约束名称可以