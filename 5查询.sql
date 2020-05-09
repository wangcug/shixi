/**********************************
作者：王成彬
日期：2020-05-08
学号：045435
班级：资源信息工程系
Email:wangchb@cug.edu.cn
***********************************/


use CUGer_student
select Sname,Sage,Sno   --选择学生姓名，年龄和学号
from Student


--查询Student中所有信息
select * from Student 

--查询全体学生情况，查询结果按所在系的系名(Sdpet)升序排列，同一系中的学生按年龄(Sage)降序排列
select  * from Student
     order by Sdept asc, Sage DESC

--计算选修C01号课程的学生平均成绩
select  avg(Grade) from  Reports
   where  Cno='C01'


--查询选修了3门或3门以上课程的学生学号(Sno)
select  Sno  from  Reports
  group by Sno
 having count(Cno)>=3

--查询每个学生及其选修课程的情况
SELECT  Student.*,  Reports.*
       FROM  Student, Reports
       WHERE  Student.Sno = Reports.Sno

--查询选修了编号为“C02”的课程的学生姓名(Sname)和所在系(Sdept)
SELECT  Sname, Sdept
    FROM  Student
    WHERE Sno 
    IN (SELECT Sno FROM Reports 
           WHERE Cno='C02')

--查询与“李伟”在同一个系学习的学生学号(Sno)、姓名(Sname)和系名(Sdept)
SELECT  Sno, Sname, Sdept
    FROM  Student
    WHERE  Sdept 
    IN (SELECT Sdept FROM Student
            WHERE Sname='李伟')

/**
设有一个关系History_Student，其关系模式与Students完全一样，
试将关系Students中的所有元组插入到关系History_Student中
**/
CREATE Table History_Student		--创建History_Student表格
	(Sno CHAR(5) PRIMARY KEY,	--学号		
	Sname CHAR(20) NOT NULL,	--学生姓名	
	Ssex CHAR(2),		--性别
	Sage INT,		--年龄
	Sdept CHAR(15),		--院系
	Sentrancedat Datetime 
	)

INSERT  INTO  History_Student
                     SELECT  *  FROM  Student


-- 将学号为“S03”的学生年龄改为22岁
UPDATE  Student
SET Sage=22
WHERE  Sno='S03'

--将所有学生年龄加1
UPDATE  Student
SET  Sage=1+Sage

--从成绩单中删除学号为S02，课程为C03的元组
DELETE  FROM  Reports
            WHERE  Sno='S02' AND Cno='C03'

/**
建立数学系学生的视图，且在进行修改和插入操作时
仍需保证该视图只对数学系的学生，视图的属性名为
Sno，Sname，Sage，Sdept 
**/
CREATE  VIEW  C_Student  
 AS
 SELECT  Sno, Sname, Sage, Sdept 
 FROM  Student
 WHERE  Sdept='数学'
 WITH CHECK OPTION

/**
建立学生的学号(Sno)、姓名(Sname)、选修课程名(Cname)及成绩(Grade)的视图。
**/
 CREATE VIEW  Student_CR  
	AS
	SELECT  Student.Sno, Sname, Cname, Grade
	FROM  Student, Reports, Course
	WHERE Student.Sno= Reports.Sno AND Reports.Cno=Course.Cno

--删除视图   
DROP VIEW  C_Student

--在视图C_Student中找出年龄(Sage)小于20岁的学生姓名(Sname)和年龄(Sage)。
SELECT  Sname, Sage  FROM  C_Student
	WHERE  Sage<20











