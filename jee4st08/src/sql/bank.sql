select * from tab;
----------[내부 스키마:물리적]-----------
create table account(
	account_no int primary key,
	money int,
	id varchar2(20)
);
select * from account;
drop table account;
insert into account(account_no,money,id)values(123456,200,'hong');

----------[외부 스키마:논리적]------------
create or replace view account_member as
select 
 	a.account_no as account_no,
    a.money as money,
    m.id as id,
    m.pw as pw,
    m.name as name,
    m.reg_date as reg_date,
    m.ssn as ssn
from 
member m, account a
where m.id = a.id;

select * from account_member;


	
	