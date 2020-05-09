/**********************************
作者：王成彬
日期：2020-05-08
学号：045435
班级：资源信息工程系
Email:wangchb@cug.edu.cn
***********************************/

create database CUGer_student   --创建数据库
 on                          --主数据文件
 (
  name=CUGer_student,        --文件名
  filename='D:\sql\CUGer_student.mdf',		--存储路径
  size=10,                 --文件大小
  maxsize=100,		--最大值
  filegrowth=5		--标示增量
  )
log on		--日志文件
  (name='CUGer_student_log',		--文件名
  filename='D:\sql\CUGer_student.ldf',	--路径
  size=8mb,
  maxsize=50mb,
  filegrowth=8mb
  )

