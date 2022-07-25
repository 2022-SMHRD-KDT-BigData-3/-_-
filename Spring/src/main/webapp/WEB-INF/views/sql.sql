create table member(
num number,
userid varchar2(50),
userpw varchar2(50)
);

drop table member;

select * from member;

create sequence mem_seq;

insert into member values(mem_seq.nextval, 'test', 'test')