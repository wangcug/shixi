/**********************************
���ߣ����ɱ�
���ڣ�2020-05-08
ѧ�ţ�045435
�༶����Դ��Ϣ����ϵ
Email:wangchb@cug.edu.cn
***********************************/

create database CUGer_student   --�������ݿ�
 on                          --�������ļ�
 (
  name=CUGer_student,        --�ļ���
  filename='D:\sql\CUGer_student.mdf',		--�洢·��
  size=10,                 --�ļ���С
  maxsize=100,		--���ֵ
  filegrowth=5		--��ʾ����
  )
log on		--��־�ļ�
  (name='CUGer_student_log',		--�ļ���
  filename='D:\sql\CUGer_student.ldf',	--·��
  size=8mb,
  maxsize=50mb,
  filegrowth=8mb
  )

