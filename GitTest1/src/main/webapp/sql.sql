create table member(
	id varchar2(200),
	pw varchar2(200),
	dogImg varchar2(200),
	dogName varchar2(200),
	dogSize varchar2(200),
	birth date,
	gender number(30),
	neutering number(30),
	health varchar2(200),
	disease varchar2(200),
	constraint mem_id_pk primary key(id)
)

drop table member
select * from member;

create table dogfood(
	fdNum number(30),
	fdCom varchar2(200),
	fdName varchar2(200),
	sizeCla varchar2(200),
	age varchar2(200),
	fdIng varchar2(200),
	grade varchar2(200),
	url varchar2(200),
	imgUrl varchar2(200),
	ingName varchar2(200),
	constraint food_num_pk primary key(fdNum)
)

select * from dogfood

create table protein(
	fdNum number(30),
	protein varchar2(2000),
	constraint food_num_fk foreign key(fdNum) references dogfood(fdNum)
)

create sequence food_num_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache