/**********************************
���ߣ����ɱ�
���ڣ�2020-05-08
ѧ�ţ�045435
�༶����Դ��Ϣ����ϵ
Email:wangchb@cug.edu.cn
***********************************/


use CUGer_student		--ʹ�õ����ݿ�
create table Student		--����ѧ�����
	(
	Sno CHAR(5) PRIMARY KEY,	--ѧ��		
	Sname CHAR(20) NOT NULL,	--ѧ������	
	Ssex CHAR(2),		--�Ա�
	Sage INT,		--����
	Sdept CHAR(15)		--Ժϵ
	)

create table Course		--�����γ̱��

	(
	[Cno] [char](6) primary key,		--�γ̺���
	[Cname] [char](20) NOT NULL,		--�γ���	
	[Pre_Cno] [char](12),		--�ɿγ���
	[Credits] [int]		--ѧ��ֵ
	)

CREATE TABLE Reports		--�����ɼ���
	(
	[Sno] char(5),		--ѧ��
	Cno CHAR(6),		--�γ̺���
	Grade INT		--�ɼ�
	)
