/**********************************
���ߣ����ɱ�
���ڣ�2020-05-08
ѧ�ţ�045435
�༶����Դ��Ϣ����ϵ
Email:wangchb@cug.edu.cn
***********************************/
use CUGer_student
alter table Course
alter column Credits int

alter table Student		--��Student ���������ѧʱ���ֶ�
add Sentrancedat DATETIME		

alter table Student		--ɾ����ѧʱ���ֶ�
drop column Sentrancedat

--ΪReports��������
--�����޸�Sno��Cno�ķǿ�Լ��
alter table Reports
alter column Sno char(5) not null
alter table Reports
alter column Cno char(6) not null

--�������Լ��
alter table Reports
add
constraint PK_report		--������PK_reportΪ����Լ��
PRIMARY KEY(Sno,Cno)		--��Sno Cno�������Լ��

--ɾ������Լ��
alter table Reports
drop constraint PK_report		--�˴�ֱ������Լ�����ƿ���