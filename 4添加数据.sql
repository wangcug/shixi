/**********************************
作者：王成彬
日期：2020-05-08
学号：045435
班级：资源信息工程系
Email:wangchb@cug.edu.cn
***********************************/

use CUGer_student	 
insert into Student		--向Student添加数据
(Sno,Sname,Ssex,Sage,Sdept)		--所添加的属性字段
values
('S01','王建平','男',21,'自动化') 


insert into Student		--向Student添加数据 	
values
('S02','刘华','女',19,'自动化',NULL)

insert into Student		--向Student添加数据 	
values
('S03','范林军','女',18,'计算机',NULL),
('S04','李伟','男',19,'数学',NULL),
('S05','黄河','男',18,'数学',NULL),
('S06','长江','男',20,'数学',NULL)

--向Course中添加数据
insert into Course		--向Course添加数据 	
values
('C01','英语',NULL,4),
('C02','数据结构','C05',2),
('C03','数据库','C03',2),
('C04','DB_设计',NULL,3),
('C05','C++',NULL,3),
('C06','网络原理','C05',3),
('C07','操作系统',NULL,3)


--向Repots中添加数据
insert into Reports		--向Reports添加数据 	
values
('S01','C01',92),
('S01','C03',84),
('S02','C01',90),
('S02','C02',94),
('S02','C03',82),
('S03','C01',72),
('S03','C02',90),
('S04','C03',75)