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

insert into Review values (review_seq.nextval,'서진짱',sysdate,'학원 수업 마치고 반반콤보 먹으러 달려왔어요 ㅎㅎ 역시 치맥은 즐(거운)코(딩) 후에 먹으러 가는거 아닐까요 ^^','https://postfiles.pstatic.net/MjAyMTAzMThfMjYw/MDAxNjE2MDEzOTA4NDEz.6ImRcqRzSADelMtZT56OgqsVHW8YpubBVQFMiGcGooEg.0EK_k3O2DCebURavw_2v-v842UvzZ5myDxHgcnL3LGog.JPEG.wpdls879/%EA%B5%90%EC%B4%8C%EC%B9%98%ED%82%A8.jpg?type=w966.png');
insert into Review values (review_seq.nextval,'배서genie',sysdate,'효진님께서 사주신 스타벅스 바닐라 라떼 맛있게 잘 마셨습니다 ㅎㅎ','https://postfiles.pstatic.net/MjAyMTAzMThfMjM0/MDAxNjE2MDEzOTA4ODEz.DY-uT0JuwDokCnOZoRaMMAFAPxiFi6HXEW_zeLZ1s04g.7Z4HAwfUA2O-YvShJVN_C8FbkYe07PyAkYjb66HlnrEg.JPEG.wpdls879/%EC%8A%A4%ED%83%80%EB%B2%85%EC%8A%A4.jpg?type=w966.png');
insert into Review values (review_seq.nextval,'진진서진',sysdate,'오늘따라~ 매콤한 보쌈이 떠올라서 혼자 밥 먹으러 왔어요! 맛은 3점!','https://postfiles.pstatic.net/MjAyMTAzMThfMjM5/MDAxNjE2MDEzOTA4ODQ5.2yPGVtKtcq42cJjvLF5lH-gUPkHXscDDbxs8Qjj5544g.xkRsjvPjhWlFQsvuZGvdZ0PG_KXkfX_sCPW0_-CI26Qg.JPEG.wpdls879/%EC%9B%90%ED%95%A0%EB%A8%B8%EB%8B%88%EB%B3%B4%EC%8C%88.jpg?type=w966.png');
insert into Review values (review_seq.nextval,'배짱',sysdate,'돈돈정의 치즈돈가스를 먹어보았습니다 치즈가 식기전에 돈가스를 드셔줘야 합니다 RGRG?','https://postfiles.pstatic.net/MjAyMTAzMThfMTM2/MDAxNjE2MDEzOTA4NDQw.g4ARJ4kZY_ptFtATVO5jVYff9dCBbYDnRjmV2_5TnHwg.g7z4dMZvK_POl8Ilzl9yjKmG7ABNF7p5z9_xZAUJ79wg.JPEG.wpdls879/%EB%8F%88%EB%8F%88%EC%A0%95.jpg?type=w966.png');

select * from Review;
