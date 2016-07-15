select * from tab;
select * from member;
create table member(
	id varchar2(20) primary key,
	pw varchar2(20),
	name varchar2(20),
	reg_date varchar2(20),
	ssn varchar2(10)
	email varchar2(30),
	profile_img varchar2(100)
);
delete from member;

alter table member add (profile_img varchar2(100));
-- CREATE
insert into member(id,pw,name,reg_date,ssn,email,profile_img) 
values('lee','1','이순신','2016-07-01','800101-1','lee@test.com','lee.jpg');
insert into member(id,pw,name,reg_date,ssn,email,profile_img) 
values('hong2','1','홍길동','2015-07-01','100701-1','hong2@test.com','hong2.jpg');
 insert into member (id,pw,name,reg_date,ssn,email,profile_img) 
values('you','1','유관순','2014-07-01','010701-4','kim@test.com','kim.jpg');
insert into member(id,pw,name,reg_date,ssn,email,profile_img) 
values('park','1','박지성','2015-06-01','880101-1','park@test.com','park.jpg');
insert into member(id,pw,name,reg_date,ssn,email,profile_img) 
values('song','1','송지효','2013-06-01','90101-1','song@test.com','lee.jpg');

-- READ ()
select * from member; -- list
select*from member_bean;
select * from member where id = 'hong';-- findByPK
select * from member where gender = '남';-- findByNotPK
select count(*) as count from member; -- count

-- UPDATE
update member set email= id||'@test.com';
update member set email= 'hong@test.com';where id = 'hong';

alter  table member add email varchar2(30);
alter  table member add profile_img varchar2(100);
update member set reg_date='2015-03-03'where id = 'lee';
update member set reg_date='2016-07-15'where id = 'park';
update member set reg_date='2016-05-05'where id = 'kim';
update member set reg_date='2015-11-03'where id = 'song';

-- DELETE
delete from member where id = 'test';
select * from member;

drop table member;

