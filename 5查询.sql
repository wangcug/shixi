/**********************************
���ߣ����ɱ�
���ڣ�2020-05-08
ѧ�ţ�045435
�༶����Դ��Ϣ����ϵ
Email:wangchb@cug.edu.cn
***********************************/


use CUGer_student
select Sname,Sage,Sno   --ѡ��ѧ�������������ѧ��
from Student


--��ѯStudent��������Ϣ
select * from Student 

--��ѯȫ��ѧ���������ѯ���������ϵ��ϵ��(Sdpet)�������У�ͬһϵ�е�ѧ��������(Sage)��������
select  * from Student
     order by Sdept asc, Sage DESC

--����ѡ��C01�ſγ̵�ѧ��ƽ���ɼ�
select  avg(Grade) from  Reports
   where  Cno='C01'


--��ѯѡ����3�Ż�3�����Ͽγ̵�ѧ��ѧ��(Sno)
select  Sno  from  Reports
  group by Sno
 having count(Cno)>=3

--��ѯÿ��ѧ������ѡ�޿γ̵����
SELECT  Student.*,  Reports.*
       FROM  Student, Reports
       WHERE  Student.Sno = Reports.Sno

--��ѯѡ���˱��Ϊ��C02���Ŀγ̵�ѧ������(Sname)������ϵ(Sdept)
SELECT  Sname, Sdept
    FROM  Student
    WHERE Sno 
    IN (SELECT Sno FROM Reports 
           WHERE Cno='C02')

--��ѯ�롰��ΰ����ͬһ��ϵѧϰ��ѧ��ѧ��(Sno)������(Sname)��ϵ��(Sdept)
SELECT  Sno, Sname, Sdept
    FROM  Student
    WHERE  Sdept 
    IN (SELECT Sdept FROM Student
            WHERE Sname='��ΰ')

/**
����һ����ϵHistory_Student�����ϵģʽ��Students��ȫһ����
�Խ���ϵStudents�е�����Ԫ����뵽��ϵHistory_Student��
**/
CREATE Table History_Student		--����History_Student���
	(Sno CHAR(5) PRIMARY KEY,	--ѧ��		
	Sname CHAR(20) NOT NULL,	--ѧ������	
	Ssex CHAR(2),		--�Ա�
	Sage INT,		--����
	Sdept CHAR(15),		--Ժϵ
	Sentrancedat Datetime 
	)

INSERT  INTO  History_Student
                     SELECT  *  FROM  Student


-- ��ѧ��Ϊ��S03����ѧ�������Ϊ22��
UPDATE  Student
SET Sage=22
WHERE  Sno='S03'

--������ѧ�������1
UPDATE  Student
SET  Sage=1+Sage

--�ӳɼ�����ɾ��ѧ��ΪS02���γ�ΪC03��Ԫ��
DELETE  FROM  Reports
            WHERE  Sno='S02' AND Cno='C03'

/**
������ѧϵѧ������ͼ�����ڽ����޸ĺͲ������ʱ
���豣֤����ͼֻ����ѧϵ��ѧ������ͼ��������Ϊ
Sno��Sname��Sage��Sdept 
**/
CREATE  VIEW  C_Student  
 AS
 SELECT  Sno, Sname, Sage, Sdept 
 FROM  Student
 WHERE  Sdept='��ѧ'
 WITH CHECK OPTION

/**
����ѧ����ѧ��(Sno)������(Sname)��ѡ�޿γ���(Cname)���ɼ�(Grade)����ͼ��
**/
 CREATE VIEW  Student_CR  
	AS
	SELECT  Student.Sno, Sname, Cname, Grade
	FROM  Student, Reports, Course
	WHERE Student.Sno= Reports.Sno AND Reports.Cno=Course.Cno

--ɾ����ͼ   
DROP VIEW  C_Student

--����ͼC_Student���ҳ�����(Sage)С��20���ѧ������(Sname)������(Sage)��
SELECT  Sname, Sage  FROM  C_Student
	WHERE  Sage<20











