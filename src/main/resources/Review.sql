create table Review(
r_num number(30) primary key,
r_id varchar2(50 char) not null,
r_date date not null,
r_content varchar2(1000 char) not null,
r_picture varchar2(2000 char) not null
);

create sequence Review_seq;
drop table Review cascade constraint purge; 
drop sequence Review_seq;

insert into Review values (review_seq.nextval,'bsj',sysdate,'리뷰 내용','asd.jpg');
insert into Review values (review_seq.nextval,'sj',sysdate,'리뷰 내용2','asddd.jpg');
insert into Review values (review_seq.nextval,'ssj',sysdate,'리뷰 내용33','asaaaad.jpg');

select * from Review;
C:\Users\hj202\eclipse-work
space\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Smart_Order
\resources\reviewimg
