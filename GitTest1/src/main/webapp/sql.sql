create table member(
	id varchar2(200),
	pw varchar2(200),
	dogImg varchar2(200),
	dogName varchar2(200),
	dogSize varchar2(200),
	birth date,
	gender varchar2(30),
	neutering varchar2(30),
	health varchar2(200),
	disease varchar2(200),
	constraint mem_id_pk primary key(id)
)

drop table member
select * from member;

create table dogfood(
	fdNum number(30),
	fdCom varchar2(500),
	fdName varchar2(500),
	material varchar2(2000),
	imgUrl varchar2(2000),
	ingredient varchar2(2000),
	constraint food_num_pk primary key(fdNum)
)
drop table dogfood
select * from dogfood

create table protein(
	fdNum number(30),
	protein varchar2(2000),
	constraint food_num_fk foreign key(fdNum) references dogfood(fdNum)
)
drop table protein

create table diary(
	diarynum number(30),
	id varchar2(200),
	adddate date,
	content varchar2(2000),
	constraint diary_num_pk primary key(diarynum),
	constraint diary_id_fk foreign key(id) references member(id)
)
select * from diary

create sequence food_num_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache