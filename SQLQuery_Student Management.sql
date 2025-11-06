use master
go

create database StudentManagerment
go
-- bang danh cho cho hoc sinh cap 3


use StudentManagerment
go

create table student
(
id int identity (1,1),
stuID char(10),
fullname nvarchar(50),
DoB date,
sex char(10),
class char(10),
address nvarchar(250),
ParentPhone char(20),
constraint PK_stuID primary key (stuID),
avScore char(5)
)

alter table student
drop column avScore 
----
--chinh sua cai bang score 1 ty cho co diem kiem tra 15 phut va diem kime tra 60 phut
alter table Score
drop column score

alter table Score
add score15 char(5)
go
alter table Score
add score60 char(5)
go
alter table Score
drop constraint PK_subname
go
alter table Score
add constraint PK_IDscore primary key (id)
go


create table subject
(
subID char(5),
subname varchar(20)
constraint PK_subjectName primary key (subname)
)

create table Score 
(
id int identity(1,1),
stuID char(10),
stuname nvarchar(50),
subname varchar(20),
score char(5),
avgScore char(5),
constraint PK_subname primary key (subname)
)

alter table Score
add constraint FK_subname foreign key (subname) references subject(subname)


alter table Score
add constraint FK_stuID foreign key (stuID) references student(stuID)

create table teacherlog
(
id int identity(1,1),
uname varchar(20),
pass varchar(20),
email varchar(20),
phone char(15)
constraint PK_teacherID primary key (id)
)


select * from teacherlog
insert into teacherlog values ('admin', '1','admin','')

--thay doi trang thai tu dong close cua database
-- khong can thiet lam vi loi la do chua set permission cho user thanh
ALTER DATABASE [StudentManagerment] SET AUTO_CLOSE off 

--tao store procedure 

create proc SP_GetUser_LogPage
(
@email varchar(20)
)
as
select * from teacherlog where email = @email

create proc SP_RegUser_RegPage
(
@uname varchar(20),
@pass varchar(20),
@email varchar(20),
@phone char(15)
)
as
insert into teacherlog 
(uname,pass,email,phone)
values
(@uname,@pass,@email,@phone)


create procedure SP_AddStudent
(
@stuID char(10),
@fullname nvarchar(50),
@DoB date,
@sex char(10),
@class char(10),
@address nvarchar(250),
@ParentPhone char(20)
)
as
insert into student (stuID,fullname,DoB,sex,class,address,ParentPhone)
values
(@stuID,@fullname,@DoB,@sex,@class,@address,@ParentPhone)


create proc SP_checkStuID
(
@stuID char(10)
)
as 
select * from student where stuID=@stuID
---------------------
create proc SP_checkSubjectExist
(
@subID char(5),
@subname varchar(20)
)
as
select 
subID, subname 
from 
subject 
where 
subID=@subID or subname = @subname

----------

CREATE PROCEDURE SP_AddSubject 
    @subID char(5),
    @subname varchar(20) 
AS
    insert into subject 
	(subID,subname) 
	values 
	(@subID,@subname)
	-----------------------------
CREATE PROCEDURE SP_LoadAllSubject
    
AS
    SELECT * from subject



select  * from student
select  * from subject
grant execute on object:: dbo.SP_GetUser_LogPage to [thanh]
grant execute on object:: dbo.SP_RegUser_RegPage to [thanh]
grant execute on object::dbo.SP_AddStudent to [thanh]
grant execute on object::dbo.SP_checkStuID to [thanh]
grant execute on object::dbo.SP_checkSubjectExist to [thanh]
grant execute on object::dbo.SP_AddSubject to [thanh]
grant execute on object::dbo.SP_LoadAllSubject to [thanh]

-- bang score se can phai sua de co the tinh diem kiem tra mieng, diem 1 tiet, diem cuoi ky de cos the dien gia tri vao diem trung binh avgscore
insert into 
student 
values
(
'st14',
't4',
'1995-08-08',
'male',
'10a11k65',
'quang trung',
'64665'
)
go
select * from student