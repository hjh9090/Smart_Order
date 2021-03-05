create table Menu(
m_num number(5) primary key,
m_picture varchar2(2000 char) not null, 
m_name varchar2(1000char) not null, 
m_price number(10) not null,
m_quan number(5) not null
);

create sequence Menu_seq;
select*froregMenu.dom Menu;

drop table menu cascade constraint purge; 
drop sequence Menu_seq;

insert into menu values(menu_seq.nextval,'1.jpg','메뉴이름',10000,50);
insert into menu values(menu_seq.nextval,'3.jpg','ghghgh',20000,50);
insert into menu values(menu_seq.nextval,'34.jpg','ghgh',15000,20);
insert into menu values(menu_seq.nextval,'https://lh3.googleusercontent.com/proxy/6ygLRxrMZkqEnx1e8sSaN1qSjmHLlMpCOvoN1ZlVsxu4tuvaA0ALiEmShTPHJev4wY-cZYUTEkgc3PJhskze4KF7U5KdkcHEwKeH1Ht5UlBKmTXNXBFAFfEb3VVU6ppf1o1f_Qvfhzhkj1eptBxBP4tAb_ySiqPBcaqL8H-nU-QDHaJPgevBQkXBXvK3PDCNzpb004LTjPAyHYdLHPnwe9esZ9dijn72Euch_jJQ0SPfk37yALvm2URY5rl39-C2ywS82Zs','moruka',3000,21);


update menu set m_price= 3000, m_name = 'menu1' where m_num = 1;

delete from menu;
