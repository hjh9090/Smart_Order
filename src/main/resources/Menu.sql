create table Menu(
m_num number(5) primary key,
m_picture varchar2(2000 char) not null, 
m_name varchar2(1000char) not null, 
m_price number(10) not null,
m_quan number(5) not null,
m_category number(10) not null
);

create sequence Menu_seq;
select*from menu;

drop table menu cascade constraint purge; 
drop sequence Menu_seq;

insert into menu values(menu_seq.nextval,'http://www.kyochon.com/uploadFiles/TB_ITEM/%EB%B8%8C%EB%9E%9C%EB%93%9C_list_15-10-221047(3).png','교촌 오리지날',15000,5,1);
insert into menu values(menu_seq.nextval,'http://www.kyochon.com/uploadFiles/TB_ITEM/%EB%B8%8C%EB%9E%9C%EB%93%9C_list_15-10-231088.png','교촌레드 오리지날',16000,5,1);
insert into menu values(menu_seq.nextval,'http://www.kyochon.com/uploadFiles/TB_ITEM/%EA%B5%90%EC%B4%8C-%ED%97%88%EB%8B%88-%EC%98%A4%EB%A6%AC%EC%A7%80%EB%82%A0(3).png','교촌허니오리지날',15000,5,1);
insert into menu values(menu_seq.nextval,'http://www.kyochon.com/uploadFiles/TB_ITEM/%EB%B8%8C%EB%9E%9C%EB%93%9C_list_15-10-231107.png','교촌반반콤보',18000,5,1);
insert into menu values(menu_seq.nextval,'http://www.kyochon.com/uploadFiles/TB_ITEM/%EC%8B%A0%ED%99%94%EC%98%A4%EB%A6%AC%EC%A7%80%EB%82%A0-(3).png','교촌신화오리지날',19000,5,1);


insert into menu values(menu_seq.nextval,'http://www.yumsem.com/FileData/product_new/6/fe7f65049.jpg','얌샘김밥',2800,5,2);
insert into menu values(menu_seq.nextval,'http://www.yumsem.com/FileData/product_new/84/f08f99f19.jpg','낙지덮밥',7000,5,2);
insert into menu values(menu_seq.nextval,'http://www.yumsem.com/FileData/product_new/19/f316b7b57.jpg','라볶이',5000,5,2);
insert into menu values(menu_seq.nextval,'http://www.yumsem.com/FileData/product_new/31/ff92f0bee.jpg','물냉면',6000,5,2);
insert into menu values(menu_seq.nextval,'http://www.yumsem.com/FileData/product_new/49/f75ff9311.jpg','오므라이스',6000,5,2);

insert into menu values(menu_seq.nextval,'https://wonandone.co.kr/_xUpFiles/xMenu/20200410105824841152814.jpg','모둠보쌈',30000,5,3);
insert into menu values(menu_seq.nextval,'https://wonandone.co.kr/_xUpFiles/xMenu/20200410132544934662259.jpg','커플원쌈',36000,5,3);
insert into menu values(menu_seq.nextval,'https://wonandone.co.kr/_xUpFiles/xMenu/20200410105646783607572.jpg','불족원쌈',41000,5,3);
insert into menu values(menu_seq.nextval,'https://wonandone.co.kr/_xUpFiles/xMenu/20200410174951127132535.jpg','새싹쟁반무침면',9000,5,3);
insert into menu values(menu_seq.nextval,'https://wonandone.co.kr/_xUpFiles/xMenu/20200410105621559718442.jpg','반반보쌈',28000,5,3);

insert into menu values(menu_seq.nextval,'http://www.theborn.co.kr/wp-content/uploads/2017/05/01_%EC%A7%AC%EB%BD%95.jpg','짬뽕',5500,5,4);
insert into menu values(menu_seq.nextval,'http://www.theborn.co.kr/wp-content/uploads/2017/05/04_%EC%A7%9C%EC%9E%A5%EB%A9%B4.jpg','짜장면',4500,5,4);
insert into menu values(menu_seq.nextval,'http://www.theborn.co.kr/wp-content/uploads/2017/05/05_%EC%A7%9C%EC%9E%A5%EB%B0%A5.jpg','짜장밥',6500,5,4);
insert into menu values(menu_seq.nextval,'http://www.theborn.co.kr/wp-content/uploads/2017/06/07_%ED%83%95%EC%88%98%EC%9C%A1.jpg','탕수육',11000,5,4);
insert into menu values(menu_seq.nextval,'http://www.theborn.co.kr/wp-content/uploads/2017/06/14_%EA%B5%B0%EB%A7%8C%EB%91%90.jpg','군만두',4000,5,4);

insert into menu values(menu_seq.nextval,'https://www.ebiga.co.kr/family/wp-content/plugins/qpboard/user_files/images/5d7282b008d1f.png','이비가짬뽕',8000,5,5);
insert into menu values(menu_seq.nextval,'https://www.ebiga.co.kr/family/wp-content/plugins/qpboard/user_files/images/5ee0219fe8dd2.png','고기짬뽕',8500,5,5);
insert into menu values(menu_seq.nextval,'https://www.ebiga.co.kr/family/wp-content/plugins/qpboard/user_files/images/5d7282c88d55e.png','순한짬뽕',9000,5,5);
insert into menu values(menu_seq.nextval,'https://www.ebiga.co.kr/family/wp-content/plugins/qpboard/user_files/images/5d7282d623b19.png','이비가한우짜장',7000,5,5);
insert into menu values(menu_seq.nextval,'https://www.ebiga.co.kr/family/wp-content/plugins/qpboard/user_files/images/5d7283195f820.png','이비가탕수육',10000,5,5);

insert into menu values(menu_seq.nextval,'http://www.짬뽕지존.com/images/menu0101.jpg','지존짬뽕',7000,5,6);
insert into menu values(menu_seq.nextval,'http://www.짬뽕지존.com/images/menu0106.jpg', '고기만두',4000,5,6);
insert into menu values(menu_seq.nextval,'http://www.짬뽕지존.com/images/menu0107.jpg','김치만두',4000,5,6);
insert into menu values(menu_seq.nextval,'http://www.짬뽕지존.com/images/menu0103.jpg','순두부짬뽕',8000,5,6);
insert into menu values(menu_seq.nextval,'http://www.짬뽕지존.com/images/menu0108.jpg','군만두',6000,5,6);


insert into menu values(menu_seq.nextval,'http://www.ddon.kr/img/menu/1.png','도리텐정식',13000,5,7);
insert into menu values(menu_seq.nextval,'http://www.ddon.kr/img/menu/13.png','호르몬모츠나베정식',16000,5,7);
insert into menu values(menu_seq.nextval,'http://www.ddon.kr/img/menu/3.png','치킨그릴정식',12000,5,7);
insert into menu values(menu_seq.nextval,'http://www.ddon.kr/img/menu/4.png','믹스후라이정식',14000,5,7);
insert into menu values(menu_seq.nextval,'http://www.ddon.kr/img/menu/5.png','치킨난반정식',11000,5,7);

insert into menu values(menu_seq.nextval,'http://udon0410.com/wp-content/uploads/2018/10/1_%EC%98%9B%EB%82%A0%EC%9A%B0%EB%8F%99.png','옛날우동',3500,5,8);
insert into menu values(menu_seq.nextval,'http://udon0410.com/wp-content/uploads/2018/11/3_%EB%83%89%EB%AA%A8%EB%B0%80.png','냉모밀',5500,5,8);
insert into menu values(menu_seq.nextval,'http://udon0410.com/wp-content/uploads/2018/05/9_%EC%B9%B4%EB%A0%88%EC%9A%B0%EB%8F%99-1.png','카레우동',6000,5,8);
insert into menu values(menu_seq.nextval,'http://udon0410.com/wp-content/uploads/2020/04/15_%EB%AA%85%EB%9E%80%ED%81%AC%EB%A6%BC%EC%9A%B0%EB%8F%99-1.png','명란크림우동',5500,5,8);
insert into menu values(menu_seq.nextval,'http://udon0410.com/wp-content/uploads/2018/10/5_%EC%B9%98%ED%82%A8%EA%B0%80%EB%9D%BC%EC%95%84%EA%B2%8C%EB%AF%B8%EB%8B%88%EB%8D%AE%EB%B0%A5-2.png','치킨미니덮밥',3000,5,8);

insert into menu values(menu_seq.nextval,'http://www.misoya.co.kr/img/sub_02_hits2.png','돈카츠야끼우동',7500,5,9);
insert into menu values(menu_seq.nextval,'http://www.misoya.co.kr/img/sub_02_hits5.png','고구마치즈돈카츠',9000,5,9);
insert into menu values(menu_seq.nextval,'http://www.misoya.co.kr/img/sub/menu_F/open_07.jpg','사누끼우동',5000,5,9);
insert into menu values(menu_seq.nextval,'http://www.misoya.co.kr/img/sub/menu_F/open_01.jpg','돈카츠김치우동전골',8500,5,9);
insert into menu values(menu_seq.nextval,'http://www.misoya.co.kr/img/sub/menu_C/open_04.jpg','돈카츠명란특선정식',12000,5,9);


insert into menu values(menu_seq.nextval,'https://www.twosome.co.kr:7009/Twosome_file/PRODUCT/360_big_img','바닐라카페라떼',5100,5,10);
insert into menu values(menu_seq.nextval,'https://www.twosome.co.kr:7009/Twosome_file/PRODUCT/174_big_img','아메리카노',4100,5,10);
insert into menu values(menu_seq.nextval,'https://www.twosome.co.kr:7009/Twosome_file/PRODUCT/747_big_img','카라멜마키아또',5600,5,10);
insert into menu values(menu_seq.nextval,'https://www.twosome.co.kr:7009/Twosome_file/PRODUCT/176_big_img','카페모카',5100,5,10);
insert into menu values(menu_seq.nextval,'https://www.twosome.co.kr:7009/Twosome_file/PRODUCT/1797_big_img','콜드브루',4500,5,10);

insert into menu values(menu_seq.nextval,'https://admin.hollys.co.kr/upload/menu/etc/menuEtc_202101040517562900.png','우리 고구마라떼',5000,5,11);
insert into menu values(menu_seq.nextval,'https://admin.hollys.co.kr/upload/menu/etc/menuEtc_201805310537345500.png','복숭아 자두 스파클링',5500,5,11);
insert into menu values(menu_seq.nextval,'https://admin.hollys.co.kr/upload/menu/etc/menuEtc_201903050929531840.png','딸기 치즈케익 할리치노',6400,5,11);
insert into menu values(menu_seq.nextval,'https://admin.hollys.co.kr/upload/menu/etc/menuEtc_201905220115552550.png','바닐라 딜라이트',5100,5,11);
insert into menu values(menu_seq.nextval,'https://admin.hollys.co.kr/upload/menu/etc/cakeB_img22.png','허니바게트볼',6000,5,11);


insert into menu values(menu_seq.nextval,'https://image.istarbucks.co.kr/upload/store/skuimg/2015/08/[38]_20150821164230205.jpg','카푸치노',5200,5,12);
insert into menu values(menu_seq.nextval,'https://image.istarbucks.co.kr/upload/store/skuimg/2016/09/[4004000000079]_20160905101225299.jpg','캐모마일 블렌드 티',4100,5,12);
insert into menu values(menu_seq.nextval,'https://image.istarbucks.co.kr/upload/store/skuimg/2017/04/[9200000000487]_20170405152830656.jpg','바닐라 크림 콜드 브루',5500,5,12);
insert into menu values(menu_seq.nextval,'https://image.istarbucks.co.kr/upload/store/skuimg/2016/09/[167004]_20160902191636876.jpg','망고패션 후르츠',5000,5,12);
insert into menu values(menu_seq.nextval,'https://image.istarbucks.co.kr/upload/store/skuimg/2015/08/[168066]_20150806163214398.jpg','초콜릿 크림칩',5700,5,12);


select * from menu where m_name like '%'||#{m_name}||'%';
select * from menu where m_category = 10;

update menu set m_price= 3000, m_name = 'menu1' where m_num = 1;





select * from menu;
where m_name like '%투썸%';
