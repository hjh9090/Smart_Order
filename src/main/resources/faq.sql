create table faq(
faq_f varchar2(100 char) not null,
faq_q varchar2(1000 char) not null
);

insert into faq(faq_f, faq_q) 
values ( '제목', '내용')

select * from faq;

delete from faq;

drop table faq;