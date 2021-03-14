create table member (
mem_id varchar2(50 char) primary key,
mem_name varchar2(100 char) not null,
mem_gender varchar2(10 char) not null,
mem_email varchar2(50 char) not null,
mem_age varchar2(50 char) not null
);

create table Google (
goo_id varchar2(50 char) primary key,
goo_

);


select * from MEMBER;

drop table member cascade constraint purge; 
drop sequence member_seq;

