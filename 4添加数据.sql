/**********************************
���ߣ����ɱ�
���ڣ�2020-05-08
ѧ�ţ�045435
�༶����Դ��Ϣ����ϵ
Email:wangchb@cug.edu.cn
***********************************/

use CUGer_student	 
insert into Student		--��Student�������
(Sno,Sname,Ssex,Sage,Sdept)		--����ӵ������ֶ�
values
('S01','����ƽ','��',21,'�Զ���') 


insert into Student		--��Student������� 	
values
('S02','����','Ů',19,'�Զ���',NULL)

insert into Student		--��Student������� 	
values
('S03','���־�','Ů',18,'�����',NULL),
('S04','��ΰ','��',19,'��ѧ',NULL),
('S05','�ƺ�','��',18,'��ѧ',NULL),
('S06','����','��',20,'��ѧ',NULL)

--��Course���������
insert into Course		--��Course������� 	
values
('C01','Ӣ��',NULL,4),
('C02','���ݽṹ','C05',2),
('C03','���ݿ�','C03',2),
('C04','DB_���',NULL,3),
('C05','C++',NULL,3),
('C06','����ԭ��','C05',3),
('C07','����ϵͳ',NULL,3)


--��Repots���������
insert into Reports		--��Reports������� 	
values
('S01','C01',92),
('S01','C03',84),
('S02','C01',90),
('S02','C02',94),
('S02','C03',82),
('S03','C01',72),
('S03','C02',90),
('S04','C03',75)