create table shopping (
s_num number(10) not null,
s_picture varchar2(2000 char) not null,
s_name varchar2(50 char) not null,
s_price number(10) not null,
s_quan varchar2(50 char) not null
);

insert into shopping values (#{s_num}, #{s_picture}, #{s_name}, #{s_price}, #{quan});

delete from shopping;
where s_num = 42;

select * from shopping order by s_num DESC;

drop table shopping cascade constraint purge;
